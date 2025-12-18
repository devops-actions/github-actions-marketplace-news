---
title: Optimal CI Matrix
date: 2025-12-18 21:18:07 +00:00
tags:
  - juanri0s
  - GitHub Actions
draft: false
repo: https://github.com/juanri0s/optimal-ci-matrix
marketplace: https://github.com/marketplace/actions/optimal-ci-matrix
version: v0.0.3
dependentsNumber: "?"
---


Version updated for **https://github.com/juanri0s/optimal-ci-matrix** to version **v0.0.3**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/optimal-ci-matrix) to find the latest changes.

## Release notes

I started going too crazy and adding features that strayed away from the original intent of the action

- **Removed Test-Count Mode**: The action now focuses solely on file-count based parallelization, which is the fully implemented and tested feature
- **Simplified Matrix Output**: Matrix entries now consistently include `project`, `batch`, and `total_batches` fields
- **Updated Tests**: Removed test-count mode tests and updated remaining tests to match the simplified implementation
- **Workflow Cleanup**: Removed test-count mode test steps from `.github/workflows/test.yml`
