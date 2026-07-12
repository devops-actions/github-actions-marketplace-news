---
title: LegacyLint Delphi Scan
date: 2026-07-12 19:21:00 +00:00
tags:
  - Gert-JanDev
  - GitHub Actions
draft: false
repo: https://github.com/Gert-JanDev/LegacyLint
marketplace: https://github.com/marketplace/actions/legacylint-delphi-scan
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Gert-JanDev/LegacyLint** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/legacylint-delphi-scan) to find the latest changes.

## What's Changed

Static analysis for Delphi/Pascal that runs in CI and comments findings directly
on your pull requests: inline annotations on the changed lines plus a single
summary comment, with configurable fail-on gating (error / warning / none).

Usage:
  - uses: Gert-JanDev/LegacyLint@v1
    with:
      api-key: ${{ secrets.LEGACYLINT_API_KEY }}
      project-key: your-project-key

Requires a LegacyLint project API key (create one in your dashboard).
