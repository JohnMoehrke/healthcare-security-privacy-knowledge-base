[CmdletBinding()]
param(
    [string]$PostsDir = "posts-md",
    [string]$TopicsFile = "topics.md",
    [string]$OutputFile = "manifest.jsonl"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-TopicMap {
    param(
        [string]$TopicsPath
    )

    $map = @{}
    if (-not (Test-Path -LiteralPath $TopicsPath)) {
        return $map
    }

    $currentTopic = $null
    Get-Content -LiteralPath $TopicsPath | ForEach-Object {
        $line = $_
        if ($line -match '^##\s+(.+?)\s+\{#.+\}$') {
            $currentTopic = $matches[1].Trim()
            return
        }

        if ($line -match '^\-\s+\[[^\]]+\]\((posts-md/[^)]+\.md)\)') {
            $relativePath = $matches[1].Trim()
            if (-not $map.ContainsKey($relativePath)) {
                $map[$relativePath] = New-Object System.Collections.Generic.List[string]
            }
            if ($currentTopic -and -not $map[$relativePath].Contains($currentTopic)) {
                $map[$relativePath].Add($currentTopic)
            }
        }
    }

    return $map
}

if (-not (Test-Path -LiteralPath $PostsDir)) {
    throw "Posts directory not found: $PostsDir"
}

$topicMap = Get-TopicMap -TopicsPath $TopicsFile
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$posts = Get-ChildItem -LiteralPath $PostsDir -Filter "*.md" | Sort-Object Name

if ($posts.Count -eq 0) {
    throw "No markdown files found in $PostsDir"
}

$outputLines = New-Object System.Collections.Generic.List[string]

foreach ($post in $posts) {
    $content = Get-Content -LiteralPath $post.FullName -Raw
    $lines = $content -split "`r?`n"

    $title = ""
    $sourceUrl = ""
    $published = ""
    $updated = ""
    $author = ""

    foreach ($line in $lines) {
        if (-not $title -and $line -match '^#\s+(.+)$') {
            $title = $matches[1].Trim()
            continue
        }
        if (-not $sourceUrl -and $line -match '^Originally posted:\s+(.+)$') {
            $sourceUrl = $matches[1].Trim()
            continue
        }
        if (-not $published -and $line -match '^Published:\s+(.+)$') {
            $published = $matches[1].Trim()
            continue
        }
        if (-not $updated -and $line -match '^Updated:\s+(.+)$') {
            $updated = $matches[1].Trim()
            continue
        }
        if (-not $author -and $line -match '^Author:\s+(.+)$') {
            $author = $matches[1].Trim()
            continue
        }
    }

    $relativePath = "posts-md/$($post.Name)"
    $hash = Get-FileHash -LiteralPath $post.FullName -Algorithm SHA256

    $topics = @()
    if ($topicMap.ContainsKey($relativePath)) {
        $topics = @($topicMap[$relativePath])
    }

    $record = [ordered]@{
        id = [System.IO.Path]::GetFileNameWithoutExtension($post.Name)
        path = $relativePath
        title = $title
        source_url = $sourceUrl
        published = $published
        updated = $updated
        author = $author
        topics = $topics
        sha256 = $hash.Hash.ToLowerInvariant()
    }

    $jsonLine = $record | ConvertTo-Json -Compress -Depth 4
    $outputLines.Add($jsonLine)
}

[System.IO.File]::WriteAllLines((Resolve-Path -LiteralPath ".\").Path + [System.IO.Path]::DirectorySeparatorChar + $OutputFile, $outputLines, $utf8NoBom)
Write-Host "Wrote $($outputLines.Count) records to $OutputFile"
