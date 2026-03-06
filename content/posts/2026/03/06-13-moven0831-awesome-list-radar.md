---
title: Awesome List Radar
date: 2026-03-06 13:46:39 +00:00
tags:
  - moven0831
  - GitHub Actions
draft: false
repo: https://github.com/moven0831/awesome-list-radar
marketplace: https://github.com/marketplace/actions/awesome-list-radar
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/moven0831/awesome-list-radar** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/awesome-list-radar) to find the latest changes.

## Action Summary

The "Awesome List Radar" GitHub Action automates the discovery and curation of relevant content for awesome lists by scanning various sources like GitHub repositories, arXiv papers, blogs, and package registries. It streamlines list maintenance by filtering, scoring, and categorizing suggestions using AI, then filing GitHub issues for maintainers to review and approve. This action reduces manual effort, prevents list decay, and enhances the efficiency of content curation.

## Release notes

## What's New

### New Sources
- **Package registries** — Search npm, PyPI, and crates.io (#22)
- **Web pages configurability** — Custom extraction prompts, model, timeouts, user agent (#18)

### Enhanced Source Configuration
- **GitHub** — Pagination (`max_results` up to 1000), sort order, fork/archived exclusion (#17)
- **ArXiv** — `max_results` and `date_range` filtering (#18)
- **Extended metadata** — Universal fields across all sources (#16)

### Filtering & Classification
- **Configurable filter system** — Keyword include/exclude/require_all, metadata filters (#19)
- **Smart classification** — Configurable prompts, categories, structured reasoning (#20)
- **Cost control** — `max_budget_usd` cap (#25)
- `max_classifications_per_run` replaces deprecated `max_issues_per_run`

### Infrastructure
- **Incremental state** — Watermark system via `state_file` (#24)
- **Retry with backoff** — Exponential backoff with rate limit awareness (#23)
- **Customizable issue template** — `title_prefix`, `include_fields`, `suggested_entry_format` (#21)

### Stats
- 232 tests across 15 test files (up from 105 in v1.1.0)
