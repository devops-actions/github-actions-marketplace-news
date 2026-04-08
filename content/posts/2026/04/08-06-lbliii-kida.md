---
title: Kida Report
date: 2026-04-08 06:22:19 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.3.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.3.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a versatile template engine that compiles to Python AST and supports rendering to multiple formats, including HTML, terminal output, and Markdown. It streamlines tasks like creating custom CI reports from tool outputs (e.g., pytest, coverage) by automating the generation of step summaries and PR comments in GitHub Actions. Key capabilities include template inheritance, pattern matching, safe data handling, streaming, and integration with modern frameworks.

## What's Changed

# v0.3.3

**Released** 2026-04-07.

Kida 0.3.3 adds JSON/YAML syntax highlighting for terminal output, enables CI report
posting as PR comments, and fixes a cache miss tracking bug.

## Highlights

- **`syntax()` terminal filter** — Regex-based JSON and YAML highlighting in terminal mode.
- **PR comment CI reports** — GitHub Action now posts reports as pull request comments.
- **`CachedBlocksDict` fix** — Cache miss tracking corrected with expanded test coverage.

## Added

### Terminal

- **`syntax()` filter** — Regex-based syntax highlighting for JSON and YAML content in terminal
  rendering mode. Applies color tokens to keys, strings, numbers, and structural characters.

### GitHub Action

- **PR comment posting** — `post-to: pr-comment` posts rendered reports directly to pull requests
  in addition to step summaries.
- **Comment deduplication** — `comment-header` identifies comments by report type so re-runs
  update the existing comment instead of creating duplicates.
- **Append mode** — `comment-mode: append` combines multiple reports (e.g., pytest + coverage)
  into a single PR comment separated by horizontal rules.
- **Extra context** — `context` input accepts a JSON string of additional template variables
  merged into the data context at render time.

## Fixed

- **`CachedBlocksDict` miss tracking** — Block lookups that miss the cache are now properly
  recorded. Added comprehensive test coverage for cached blocks, purity checks, and t-strings.

## Upgrade Notes

1. No breaking changes. Drop-in upgrade from 0.3.2.
2. GitHub Action version tag updated to `@v0.3.3`.

## Links

- [PyPI](https://pypi.org/project/kida-templates/)
- [GitHub](https://github.com/lbliii/kida)
- [Full Changelog](https://github.com/lbliii/kida/blob/main/CHANGELOG.md)

