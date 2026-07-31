---
title: ifttt-lint
date: 2026-07-31 06:37:06 +00:00
tags:
  - simonepri
  - GitHub Actions
draft: false
repo: https://github.com/simonepri/ifttt-lint
marketplace: https://github.com/marketplace/actions/ifttt-lint
version: v0.11.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action helps maintain code consistency across different files by using annotations (`LINT.IfChange`, `LINT.ThenChange`) to track changes that need synchronization. It automates the validation and ensures that both sides of co-dependent sections are updated together, reducing errors in production. The action is configured via GitHub Actions or pre-commit hooks, with options for suppressing specific commits and integrating with the CI pipeline.
---


Version updated for **https://github.com/simonepri/ifttt-lint** to version **v0.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ifttt-lint) to find the latest changes.

## Action Summary

This GitHub Action helps maintain code consistency across different files by using annotations (`LINT.IfChange`, `LINT.ThenChange`) to track changes that need synchronization. It automates the validation and ensures that both sides of co-dependent sections are updated together, reducing errors in production. The action is configured via GitHub Actions or pre-commit hooks, with options for suppressing specific commits and integrating with the CI pipeline.

## What's Changed

- chore: release v0.11.0 (#49) (9a13181)
- fix(pre-commit): pin the git backend in hook entries (#51) (c9256ca)
- perf: run the reverse lookup with a single needle-only VCS search (#50) (7b5dca4)
- fix(pre-commit): forward user args in ifttt-lint-diff hook entry (#48) (3f2dc82)
- chore: release v0.10.8 (#44) (5193c10)
- fix: don't misparse deleted "--" lines as file headers (#42) (d767ed4)
- chore(deps): bump crossbeam-epoch to fix RUSTSEC-2026-0204 (#43) (a5182a3)
- chore: release v0.10.7 (#40) (3468fe7)
- fix: don't panic on a mid-hunk no-newline marker (#38) (b2da92d)
- fix: don't crash on diff sections without hunks (#39) (5aed9e2)
