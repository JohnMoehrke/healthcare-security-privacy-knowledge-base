# Dataset Card

## Name

Healthcare Security & Privacy Knowledge Base

## Summary

This repository is a CC0-licensed markdown corpus of healthcare security, privacy, interoperability, identity, consent, audit, and related standards discussion authored by John Moehrke.

## Corpus Structure

- [posts-md](posts-md): one markdown article per file at the repository root
- [topics.md](topics.md): human-oriented topic index and navigation page
- [manifest.jsonl](manifest.jsonl): machine-readable article index for automated consumers

## Provenance

The corpus was generated from Blogger export data and saved HTML snapshots of topic pages.

Each article file includes an `Originally posted:` URL that identifies the source blog entry.

## Intended Uses

- AI/LLM training and evaluation
- Retrieval and search indexing
- Standards research and analysis
- Healthcare security and privacy reference

## Content Characteristics

- Markdown-first corpus
- One article per file
- Stable file naming based on corpus generation
- Topic navigation preserved in [topics.md](topics.md)
- Source URLs preserved in article metadata

## Exclusions

The published repository intentionally excludes raw Blogger export artifacts and other conversion-only source inputs.

## Update Policy

When article content changes:

1. Regenerate the corpus artifacts.
2. Regenerate [manifest.jsonl](manifest.jsonl).
3. Update [topics.md](topics.md) if needed.
4. Create a new tagged release snapshot.

## Citation

Use [CITATION.cff](CITATION.cff) for citation metadata.

## License

CC0 1.0 Universal. See [LICENSE](LICENSE).
