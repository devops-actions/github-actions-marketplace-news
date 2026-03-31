---
title: Totem Shield
date: 2026-03-31 22:12:45 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli1.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a codebase governance tool that transforms institutional knowledge into enforceable rules, preventing recurring mistakes and inefficiencies in pull request workflows. It automates the observation, learning, and enforcement of coding standards by converting plain English lessons into deterministic constraints, ensuring consistent adherence to best practices. This eliminates repetitive coding errors, reduces review overhead, and enhances collaboration between developers and AI coding agents.

## What's Changed

### Minor Changes

-   4d87c56: feat: auto-scaffold test fixtures for Pipeline 1 rules (#854) and shield auto-learn (#779)
    -   Pipeline 1 error rules now auto-generate test fixture skeletons during compile, preserving error severity instead of downgrading to warning (ADR-065)
    -   New `totem rule scaffold <id>` command for manual fixture generation with `--out` option
    -   Fixtures seeded from Example Hit/Miss when available, otherwise TODO placeholders
    -   New `shieldAutoLearn` config option: when true, shield FAIL verdicts auto-extract lessons without `--learn` flag

### Patch Changes

-   Updated dependencies [4d87c56]
    -   @mmnto/totem@1.8.0

