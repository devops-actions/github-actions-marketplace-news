---
title: Carbon-Aware Dispatcher
date: 2026-06-15 07:25:38 +00:00
tags:
  - peterklingelhofer
  - GitHub Actions
draft: false
repo: https://github.com/peterklingelhofer/carbon-aware-dispatcher
marketplace: https://github.com/marketplace/actions/carbon-aware-dispatcher
version: v1.6.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/peterklingelhofer/carbon-aware-dispatcher** to version **v1.6.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/carbon-aware-dispatcher) to find the latest changes.

## What's Changed

## Watch your impact

Turn one-shot savings numbers into a persistent, visible, human-meaningful story.

- **Human-relatable equivalents** — every run translates grams to "~1.8 km not
  driven" / "~14 phone charges" (EPA factors) in the job summary, the new
  `co2_saved_equivalent` output, and the PR comment.
- **Cumulative ledger + live badge** — new `ledger` input (`gist:<id>` or
  `file:<path>`) accumulates lifetime savings. The gist backend publishes a
  self-updating shields.io badge. New outputs: `co2_saved_total_grams`,
  `co2_saved_total_equivalent`, `lifetime_badge_url`.
- **Impact dashboard** — `dashboard/index.html`, a no-build/no-CDN GitHub Pages
  page that charts savings over time from your ledger gist.
- **Sticky PR comment** — `pr_comment: 'true'` posts the carbon verdict on PRs,
  updated in place, so reviewers see it without opening the Actions tab.
- All-in-one copy-paste example: `examples/track-impact.yml`.

Also: clarified Electricity Maps free-tier (one zone), demo workflow now takes
free-text custom zones, dependency bumps (idna, pygments).

