---
title: Trustabl
date: 2026-06-10 23:13:24 +00:00
tags:
  - trustabl
  - GitHub Actions
draft: false
repo: https://github.com/trustabl/trustabl-action
marketplace: https://github.com/marketplace/actions/trustabl
version: v0.4.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/trustabl/trustabl-action** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustabl) to find the latest changes.

## What's Changed

Changelog entry:

  ## [0.4.0] - 2026-06-10

  ### Added

  - **Enrich surface** — runs `trustabl enrich` after the scan to generate AI
    explanations and exact code fixes for each finding (BYOK via `llm-key`)
  - **`auto-enrich`** — applies AI-generated fixes directly to source files
  - **`create-fix-pr`** — commits patches on a new branch and opens a PR for
    human review; fix PR URL appears in the Step Summary and sticky PR comment
  - **`enriched.json`** included in the artifact when enrich runs
  - **`llm-provider`** input for future multi-provider support (default: `anthropic`)
  - **`enrich-model`** input to override the Claude model (default: `claude-haiku-4-5`)
  - **`enrich-rules`** input to filter enrichment to specific rule IDs
  - New outputs: `enrich-json-file`, `fix-pr-url`
