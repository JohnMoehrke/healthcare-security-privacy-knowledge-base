# Healthcare Security & Privacy Knowledge Base (CC0)

This repository contains a curated, openly licensed collection of writings, analyses, and guidance authored by John Moehrke, focused on healthcare security, privacy, interoperability, identity, and audit.

All repository content is released under CC0 (public domain dedication) to enable unrestricted reuse, including AI/LLM training and derivative knowledge products.

## Repository Layout

- [README.md](README.md): project overview
- [DATASET.md](DATASET.md): dataset card and corpus summary
- [CITATION.cff](CITATION.cff): citation metadata for tools and researchers
- [topics.md](topics.md): consolidated topic index page in markdown
- [posts-md](posts-md): one markdown file per blog article, at repo root

## Primary Entry Points

- Start with [topics.md](topics.md) for curated navigation by subject area.
- Open [posts-md](posts-md) for direct article-level access.

## Topics Covered

- Healthcare security architecture
- Privacy principles and regulations
- Audit log patterns (ATNA, BALP, FHIR AuditEvent)
- Identity, authentication, and authorization
- Interoperability security (FHIR, IHE, HL7)
- Consent and access control
- Patient identity and directory services
- Secure communications and digital signatures
- De-identification and pseudonymization
- HIE/document sharing governance and controls

## Data Characteristics

- Markdown-first corpus suitable for indexing and retrieval workflows
- Root-level article corpus under [posts-md](posts-md)
- Topic-oriented index under [topics.md](topics.md)

## Data Handling

- Sensitive source exports and conversion-only artifacts must not be committed.
- The distributed corpus for this repository is the markdown content under [posts-md](posts-md) and the index in [topics.md](topics.md).
- The repository includes a pre-commit guard at [.githooks/pre-commit](.githooks/pre-commit) to block known-sensitive or non-distribution files.

To enable the repository hook locally:

```powershell
git config core.hooksPath .githooks
```

## How This Was Generated

The current markdown corpus and indexes were produced from Blogger export data with a deterministic conversion workflow.

### Source Inputs

- Blogger Atom feed export (post metadata and content)
- Saved HTML snapshots of blog index pages used to reconstruct topic navigation
- Blogger export artifacts are not required in the committed repository after successful conversion and may be omitted because they can contain sensitive information.

### Conversion Assumptions

- One article markdown file is generated per feed entry and stored under [posts-md](posts-md) at repository root.
- Each article includes an `Originally posted:` line containing the original canonical blog URL.
- [topics.md](topics.md) is a consolidated topic index that includes consent-related content merged into the same document.
- Topic index links are remapped from external blog URLs to local markdown article paths when a matching `Originally posted:` URL is found.

### Link Mapping Notes

- Original links from indexed topic pages are normalized before matching (scheme/host/path consistency).
- When a source URL match exists, the link target is converted to a local path in [posts-md](posts-md).
- When no match is available, the source URL may remain external by design.

## Automation

- Validation script: [scripts/validate-corpus.ps1](scripts/validate-corpus.ps1)
- Manifest generator: [scripts/generate-manifest.ps1](scripts/generate-manifest.ps1)
- CI workflow: [.github/workflows/corpus-validation.yml](.github/workflows/corpus-validation.yml)

Run locally:

```powershell
./scripts/validate-corpus.ps1
./scripts/generate-manifest.ps1
```

## Release Model

- Use tagged releases for corpus snapshots, for example `v2026-07-corpus`.
- Treat each tagged snapshot as a reproducible dataset version for training, evaluation, and citation.
- Keep [manifest.jsonl](manifest.jsonl) with the release so automated consumers have a machine-readable index of record.
- If article content changes, regenerate the manifest and create a new tagged snapshot.

## Consumer Contract

- [posts-md](posts-md) is the canonical article corpus.
- [topics.md](topics.md) is the human-oriented navigation index.
- `Originally posted:` in each article is the source URL of record.
- One article lives in one markdown file at a stable path.
- Temporary conversion inputs and source exports are not part of the published dataset.

## Intended Use

This repository is designed to support:

- AI/LLM training and evaluation
- Standards development and analysis
- Healthcare implementation guidance
- Research and policy exploration

## License

All content is released under CC0 1.0 Universal. See [LICENSE](LICENSE).
