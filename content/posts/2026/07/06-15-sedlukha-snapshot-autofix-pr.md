---
title: Snapshot auto-fix PR
date: 2026-07-06 15:24:06 +00:00
tags:
  - sedlukha
  - GitHub Actions
draft: false
repo: https://github.com/sedlukha/snapshot-autofix-pr
marketplace: https://github.com/marketplace/actions/snapshot-auto-fix-pr
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sedlukha/snapshot-autofix-pr** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/snapshot-auto-fix-pr) to find the latest changes.

## What's Changed

Initial public release.

Composite GitHub Action that runs a visual-snapshot command which updates baselines, then opens, updates, or closes **a single auto-fix pull request** carrying only the changed snapshot files. Capture-agnostic — works with Playwright, Storybook, or your own script.

## Usage

```yaml
- uses: sedlukha/snapshot-autofix-pr@v1
  with:
    token: ${{ secrets.PAT_TOKEN }}
    run-command: npx playwright test --update-snapshots
```

See the [README](https://github.com/sedlukha/snapshot-autofix-pr#readme) for all inputs/outputs and examples.
