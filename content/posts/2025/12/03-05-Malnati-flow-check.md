---
title: Branch Flow Detector
date: 2025-12-03 05:25:34 +00:00
tags:
  - Malnati
  - GitHub Actions
draft: false
repo: https://github.com/Malnati/flow-check
marketplace: https://github.com/marketplace/actions/branch-flow-detector
version: v5
dependentsNumber: "?"
---


Version updated for **https://github.com/Malnati/flow-check** to version **v5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/branch-flow-detector) to find the latest changes.

## Release notes

## What’s new

- Converted `flow-check` from a reusable workflow (`workflow_call`) to a **composite action** usable as a single step:
  ```yaml
  - name: Branch Flow Detector
    id: flow
    uses: Malnati/flow-check@v5
    with:
      token: ${{ github.token }}
