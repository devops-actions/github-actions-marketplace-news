---
title: Tuffgal
date: 2026-08-20 14:16:42 +00:00
tags:
  - nschneble
  - GitHub Actions
draft: false
repo: https://github.com/nschneble/tuffgal-action
marketplace: https://github.com/marketplace/actions/tuffgal
version: v1.7.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates visual regression testing using Tuffgal in CI mode, handling differences by proposing candidate baselines as PR comments that require approval. It simplifies setting up Node.js and Playwright for Tuffgal execution and provides a per-PR preview with side-by-side baseline and actual screenshots for easier review.
---


Version updated for **https://github.com/nschneble/tuffgal-action** to version **v1.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tuffgal) to find the latest changes.

## Action Summary

This GitHub Action automates visual regression testing using Tuffgal in CI mode, handling differences by proposing candidate baselines as PR comments that require approval. It simplifies setting up Node.js and Playwright for Tuffgal execution and provides a per-PR preview with side-by-side baseline and actual screenshots for easier review.

## What's Changed

### Added

The sticky PR comment now supports a11y-only changes, e.g. when the baseline images are identical but there are structural changes underneath the hood.

### Changed

- Approve checkboxes are locked while an approval runs, so nothing in the sticky PR comment can trigger a second approval
- A `@tuffgal approve` that lands mid-approval is refused with a note under the status banner, cleared when the running approval finishes
- The example approve workflow serializes per PR with a `concurrency` group, so copy it to your workflow to keep two approvals off the same branch (the in-comment lock is the user-visible half)

### Fixed

- A story with both new and changed baselines only shows up as new, so the changed candidates cannot be approved from the sticky PR comment
- The artifact validator reports success for any zip file it cannot read
