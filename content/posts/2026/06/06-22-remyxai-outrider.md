---
title: Remyx Outrider
date: 2026-06-06 22:41:25 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.3.7
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.3.7**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

Bug fixes to the open-Issue dedup gate.

- `issue_for_paper` now matches arxiv ids in both directions (`2605.26102` ↔ `2605.26102v1`). The substring match in v1.3.6 missed when a versioned candidate hit a versionless body.
- The external / broadening-search branch (`chosen_index = -2`) now runs the same `issue_for_paper(open_issues, rec)` gate that engine-pool candidates pass through. A new `skipped_external_issue_exists` status is emitted when matched.

Together these close the duplicate-recommendation pattern observed on VQASynth (InstructSAM filed three times across three days, from a mix of engine-pool and broadening-search paths).

See #25 for the full diff and test coverage.
