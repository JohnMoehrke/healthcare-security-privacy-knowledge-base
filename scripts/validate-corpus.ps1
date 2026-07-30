[CmdletBinding()]
param(
    [string]$PostsDir = "posts-md",
    [string]$TopicsFile = "topics.md"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$errors = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]

if (-not (Test-Path -LiteralPath $PostsDir)) {
    throw "Posts directory not found: $PostsDir"
}

$posts = Get-ChildItem -LiteralPath $PostsDir -Filter "*.md" | Sort-Object Name
if ($posts.Count -eq 0) {
    throw "No markdown files found in $PostsDir"
}

$sourceMap = @{}

foreach ($post in $posts) {
    $raw = Get-Content -LiteralPath $post.FullName -Raw
    $lines = $raw -split "`r?`n"

    $title = $null
    $sourceUrl = $null
    $published = $null
    $updated = $null
    $author = $null

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

    if (-not $title) {
        $errors.Add("Missing title header in posts-md/$($post.Name)")
    }
    if (-not $sourceUrl) {
        $errors.Add("Missing 'Originally posted' URL in posts-md/$($post.Name)")
    }
    if (-not $published) {
        $errors.Add("Missing Published timestamp in posts-md/$($post.Name)")
    }
    if (-not $updated) {
        $errors.Add("Missing Updated timestamp in posts-md/$($post.Name)")
    }
    if (-not $author) {
        $errors.Add("Missing Author in posts-md/$($post.Name)")
    }

    if ($sourceUrl) {
        if (-not $sourceMap.ContainsKey($sourceUrl)) {
            $sourceMap[$sourceUrl] = New-Object System.Collections.Generic.List[string]
        }
        $sourceMap[$sourceUrl].Add("posts-md/$($post.Name)")
    }

    $separatorIndex = [Array]::IndexOf($lines, "---")
    if ($separatorIndex -lt 0) {
        $errors.Add("Missing body separator '---' in posts-md/$($post.Name)")
    }
    else {
        $bodyLines = $lines[($separatorIndex + 1)..($lines.Length - 1)]
        $hasBody = $false
        foreach ($bodyLine in $bodyLines) {
            if (-not [string]::IsNullOrWhiteSpace($bodyLine)) {
                $hasBody = $true
                break
            }
        }
        if (-not $hasBody) {
            $errors.Add("Empty article body in posts-md/$($post.Name)")
        }
    }
}

foreach ($entry in $sourceMap.GetEnumerator()) {
    if ($entry.Value.Count -gt 1) {
        $dupes = ($entry.Value -join ", ")
        $errors.Add("Duplicate source URL '$($entry.Key)' in: $dupes")
    }
}

if (-not (Test-Path -LiteralPath $TopicsFile)) {
    $warnings.Add("topics.md not found; skipped topic link validation")
}
else {
    $topicLines = Get-Content -LiteralPath $TopicsFile
    $linkedPaths = New-Object System.Collections.Generic.List[string]

    foreach ($line in $topicLines) {
        if ($line -match '\((posts-md/[^)]+\.md)\)') {
            $linkedPaths.Add($matches[1])
        }
    }

    $missingTargets = 0
    foreach ($linkedPath in $linkedPaths) {
        if (-not (Test-Path -LiteralPath $linkedPath)) {
            $errors.Add("Broken link target in topics.md: $linkedPath")
            $missingTargets++
        }
    }

    Write-Host "Validated $($linkedPaths.Count) posts-md links from $TopicsFile"
    if ($missingTargets -eq 0) {
        Write-Host "All topic links resolve to local markdown files"
    }
}

foreach ($warning in $warnings) {
    Write-Warning $warning
}

if ($errors.Count -gt 0) {
    Write-Host "Validation failed with $($errors.Count) error(s):"
    foreach ($errorItem in $errors) {
        Write-Host "- $errorItem"
    }
    exit 1
}

Write-Host "Validation passed for $($posts.Count) markdown articles"
exit 0
