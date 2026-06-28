---
title: SlopLock
date: 2026-06-28 22:09:14 +00:00
tags:
  - theinfosecguy
  - GitHub Actions
draft: false
repo: https://github.com/theinfosecguy/sloplock
marketplace: https://github.com/marketplace/actions/sloplock
version: v1.0.3
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/theinfosecguy/sloplock** to version **v1.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sloplock) to find the latest changes.

## What's Changed

# SlopLock v1.0.3

This patch release improves first-run GitHub Action onboarding and updates the
bundled Action artifact used by `theinfosecguy/sloplock@v1`.

## GitHub Action Onboarding

- Updates README workflow snippets to `actions/checkout@v7`.
- Reports setup failures, including shallow checkout history problems, in the
  step summary and sticky pull request comment when possible.
- Clarifies report metrics as public registry dependencies checked, making
  local/workspace-only dependency changes easier to understand.

## Release Integrity

- Keeps `dist/action/index.cjs` current with the Action diagnostics changes.
- Keeps `theinfosecguy/sloplock@v1` available as the recommended install ref.

