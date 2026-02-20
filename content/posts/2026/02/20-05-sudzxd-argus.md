---
title: Argus PR Reviewer
date: 2026-02-20 05:53:03 +00:00
tags:
  - sudzxd
  - GitHub Actions
draft: false
repo: https://github.com/sudzxd/argus
marketplace: https://github.com/marketplace/actions/argus-pr-reviewer
version: v0.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/sudzxd/argus** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-reviewer) to find the latest changes.

## Action Summary

Argus is a GitHub Action designed to automate AI-powered code reviews by analyzing your entire codebase and providing precise, context-aware inline comments on pull requests. It solves the challenge of ensuring consistent code quality by learning your repository's patterns and conventions, leveraging semantic mapping, hybrid retrieval methods, and multi-provider AI models. The action operates entirely within GitHub, requiring no additional infrastructure.

## Release notes

### Added

- **Incremental pattern analysis in index mode** — Index mode can now
  optionally run LLM-based pattern analysis on changed files after
  updating the codebase map. Controlled by the `INPUT_ANALYZE_PATTERNS`
  env var (default `"false"`). When enabled, index pulls existing memory,
  runs incremental analysis scoped to changed files, and pushes updated
  patterns alongside the codebase map.
- **`analyzed_at` field on `CodebaseMemory`** — Tracks the last commit
  SHA where patterns were analyzed, independent of `indexed_at`. Prevents
  history divergence between index and bootstrap modes.
- **Sharded artifact storage** — Codebase map is split into per-directory
  shards with a DAG manifest (`manifest.json`) on the `argus-data` branch.
  Selective loading ensures reviews and index updates only fetch needed shards.
- **`SelectiveGitBranchSync`** — Manifest-first pull with tree caching,
  selective blob download, and incremental push via `base_tree` merge.
- **LLM usage tracking** — `LLMUsage` value object tracks token counts
  and request counts per strategy; reported in review logs.

### Fixed

- **Outline preservation during incremental analysis** — `update_profile`
  was replacing the full stored outline (all files) with a scoped outline
  (only changed files), causing `memory.json` to lose most outline entries.
  Now the scoped outline text is only used for LLM analysis while the
  full/existing outline is preserved in storage.
- **Bootstrap diff base** — Bootstrap's incremental path now uses
  `analyzed_at` (falling back to `indexed_at`) as the diff base for
  pattern analysis, so it correctly covers all changes since the last
  analysis rather than since the last index.

### Changed

- **CI workflow** — `argus-index.yml` incremental index step now sets
  `INPUT_ANALYZE_PATTERNS: "true"` to enable pattern analysis on push.

