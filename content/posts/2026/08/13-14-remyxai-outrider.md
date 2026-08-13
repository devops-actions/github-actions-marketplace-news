---
title: Remyx Outrider
date: 2026-08-13 14:11:26 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.7.52
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  **This GitHub Action automates the process of turning research papers into review-ready pull requests.**
  
  The action takes various inputs to select an arXiv paper, search query, or custom brief, and generates a draft PR with comprehensive evidence for review, including references cited, license flagged, tests written, honest scope discipline in the self-review, and alignment with the repository's conventions. The output is a wired-in implementation that simplifies the development process by handling testing variance and providing a clear selection narrative.
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.7.52**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## Action Summary

**This GitHub Action automates the process of turning research papers into review-ready pull requests.**

The action takes various inputs to select an arXiv paper, search query, or custom brief, and generates a draft PR with comprehensive evidence for review, including references cited, license flagged, tests written, honest scope discipline in the self-review, and alignment with the repository's conventions. The output is a wired-in implementation that simplifies the development process by handling testing variance and providing a clear selection narrative.

## What's Changed

`outrider.yml` used a flat concurrency group:

```yaml
concurrency:
  group: outrider
  cancel-in-progress: false
```

GitHub permits exactly one *pending* run per group, and when a third dispatch arrives it cancels the run already **waiting** — not the newcomer — with no error and no annotation. Firing four targets at one repo produced one run, one survivor, and two cancellations that read as CI flakes rather than lost work.

The group is now keyed by what the dispatch is working on:

```yaml
group: outrider-${{ inputs['pin-arxiv'] || inputs['start-from-ref'] || github.run_id }}
```

Distinct papers and branches run in parallel — they touch different branches, so there was nothing to serialize. A genuine duplicate of the same target still queues behind its predecessor. Unpinned runs fall back to `run_id`, so a dispatch is never cancelled unless it's provably a duplicate.

`outrider-daily.yml` and `outrider-weekly-refine.yml` keep their static groups deliberately: every drafter run commits to the same accumulated intel branch, so two in flight would race on the push.

Engine-side twin (for App-provisioned installs, which render their own `outrider.yml`): remyxai/remyx#558. CLI-side mitigation — `outrider trigger` warns when a run is pending, and `--wait-for-slot` serializes: remyxai/remyxai-cli#50.
