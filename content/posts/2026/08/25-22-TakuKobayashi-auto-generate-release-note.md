---
title: auto-generate-release-note
date: 2026-08-25 22:43:17 +00:00
tags:
  - TakuKobayashi
  - GitHub Actions
draft: false
repo: https://github.com/TakuKobayashi/auto-generate-release-note
marketplace: https://github.com/marketplace/actions/auto-generate-release-note
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action uses an Ollama model to generate release notes from Git history and diffs, creating or updating a GitHub Release automatically. It supports multiple languages and bilingual output, excluding non-source files, and falls back to deterministic notes if inference fails. The action is triggered on tag pushes, requiring write permissions for content creation.
---


Version updated for **https://github.com/TakuKobayashi/auto-generate-release-note** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-generate-release-note) to find the latest changes.

## Action Summary

This GitHub Action uses an Ollama model to generate release notes from Git history and diffs, creating or updating a GitHub Release automatically. It supports multiple languages and bilingual output, excluding non-source files, and falls back to deterministic notes if inference fails. The action is triggered on tag pushes, requiring write permissions for content creation.

## What's Changed

## Changes

- b578210 Reduce release note generation to one model call (TakuKobayashi)
- d236288 Select relevant diff evidence before generation (TakuKobayashi)
- 84421a5 Simplify release note generation pipeline (TakuKobayashi)
- a405512 Optimize release note generation workflow (TakuKobayashi)
- 07a1985 Revert concurrent change analysis (TakuKobayashi)
- 2adde5b Support release notes from explicit Git ref comparisons (TakuKobayashi)
- 6046317 Parallelize change analysis with configurable concurrency (TakuKobayashi)
- 203fbac version up 2.0.0 (TakuKobayashi)
- 71a95b5 Streamline action inputs and template validation (TakuKobayashi)
- d655c63 Add template-aware release note generation (TakuKobayashi)
- f10c89e Add a merge-approved release pull request workflow (TakuKobayashi)
- fd4d828 Fix context truncation and incomplete release notes (TakuKobayashi)
- ccaab3e Redesign release note generation around hierarchical analysis (TakuKobayashi)
- a41beea Fix Ollama timeout handling during prompt evaluation (TakuKobayashi)

## Changed files

```text
.../PULL_REQUEST_TEMPLATE/production-release.md    |  11 +
 .github/PULL_REQUEST_TEMPLATE/release.md           |  12 +
 .github/workflows/release-pr.yml                   | 121 ++++
 .github/workflows/release.yml                      |   1 -
 README-ja.md                                       |  63 +-
 README.md                                          |  81 ++-
 action.yml                                         |  43 +-
 dist/index.js                                      | 696 ++++++++++++++++-----
 examples/production-release-notes.yml              |  37 ++
 package.json                                       |   2 +-
 src/analysis-plan.ts                               |  65 ++
 src/change-index.ts                                | 266 ++++++++
 src/cli.ts                                         |  14 +-
 src/index.ts                                       | 378 ++++++-----
 src/ollama-request.ts                              | 103 +++
 src/release-template.ts                            |  14 +
 test/analysis-plan.spec.ts                         |  43 ++
 test/change-index.spec.ts                          |  84 +++
 test/cli.spec.ts                                   |  22 +-
 test/distribution.spec.ts                          |  88 ++-
 test/ollama-request.spec.ts                        |  88 +++
 test/release-template.spec.ts                      |  17 +
 22 files changed, 1837 insertions(+), 412 deletions(-)
```

Comparison: `v1.0.2...v2.0.0`
