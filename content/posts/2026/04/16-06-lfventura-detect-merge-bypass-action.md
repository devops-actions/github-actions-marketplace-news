---
title: Detect Merge Bypass
date: 2026-04-16 06:24:28 +00:00
tags:
  - lfventura
  - GitHub Actions
draft: false
repo: https://github.com/lfventura/detect-merge-bypass-action
marketplace: https://github.com/marketplace/actions/detect-merge-bypass
version: v1.1.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/lfventura/detect-merge-bypass-action** to version **v1.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/detect-merge-bypass) to find the latest changes.

## Action Summary

The **Detect Merge Bypass Action** is a GitHub Action that ensures all required branch protection checks are properly enforced before merging a Pull Request. It automates the detection of potential merge bypasses by verifying the status of required checks on the latest commit associated with a PR. This helps maintain repository integrity by identifying instances where protected branch rules may have been circumvented.

## What's Changed

chore: bump runtime to node24 + security fix via npm overrides + tsconfig modernization

Closes Dependabot advisories for undici + brace-expansion transitive dep chain.
