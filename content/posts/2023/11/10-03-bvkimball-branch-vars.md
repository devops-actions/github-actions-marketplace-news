---
title: Get branch vars
date: 2023-11-10 03:20:12 +00:00
tags:
  - bvkimball
  - GitHub Actions
draft: false
repo: bvkimball/branch-vars
marketplace: https://github.com/marketplace/actions/get-branch-vars
version: 1.0.0
dependentsNumber: "6"
---


Version updated for **bvkimball/branch-vars** to version **1.0.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/get-branch-vars) to find the latest changes.

## Release notes

Basic Functionality Added 

|     Output     |   type   |          Example           |                           Description                            |
| :------------: | :------: | :------------------------: | :--------------------------------------------------------------: |
| CURRENT_BRANCH | `string` | `main` _OR_ `feature/test` | Always returns a valid branch name for a triggered workflow run. |
| TARGET_BRANCH  | `string` |           `main`           |               The target branch of a pull request                |
| SOURCE_BRANCH  | `string` |       `feature/test`       |               The source branch of a pull request                |
|   REF_BRANCH   | `string` |   `1/merge` _OR_ `main`    |            The branch that triggered the workflow run  
