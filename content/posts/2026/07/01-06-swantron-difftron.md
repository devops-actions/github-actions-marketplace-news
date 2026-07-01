---
title: Difftron Delta Coverage Gate
date: 2026-07-01 06:52:17 +00:00
tags:
  - swantron
  - GitHub Actions
draft: false
repo: https://github.com/swantron/difftron
marketplace: https://github.com/marketplace/actions/difftron-delta-coverage-gate
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/swantron/difftron** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/difftron-delta-coverage-gate) to find the latest changes.

## What's Changed

First public release.

Fail a pull request when newly changed lines aren't tested — language-agnostic delta/patch coverage for LCOV, Cobertura, and Go coverage, in a few lines of YAML.

- Composite Action, builds from source — no external binary to trust
- Auto-detects the PR/push diff range
- Posts a sticky delta-coverage comment on the PR
- Files with no coverage data (docs/config) are skipped, not failed

  Quickstart: see examples/quickstart.yml
