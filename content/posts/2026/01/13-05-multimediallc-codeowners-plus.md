---
title: Codeowners Plus
date: 2026-01-13 05:59:44 +00:00
tags:
  - multimediallc
  - GitHub Actions
draft: false
repo: https://github.com/multimediallc/codeowners-plus
marketplace: https://github.com/marketplace/actions/codeowners-plus
version: v1.7.0
dependentsNumber: "0"
---


Version updated for **https://github.com/multimediallc/codeowners-plus** to version **v1.7.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codeowners-plus) to find the latest changes.

## Action Summary

Codeowners Plus is a GitHub Action designed to enhance GitHub's native CODEOWNERS functionality by providing advanced code ownership and review assignment capabilities. It automates tasks like smart dismissal of stale reviews, supports `AND` ownership rules (multiple required owners), allows fine-grained directory-level ownership, and enables optional reviewers for non-blocking reviews. This tool addresses limitations in GitHub's CODEOWNERS by improving flexibility and providing enforcement options for more robust workflow management.

## Release notes

## What's Changed
* Support requiring owners from both base and head refs by @BakerNet in https://github.com/multimediallc/codeowners-plus/pull/84
  * To utilize this feature, add `require_both_branch_reviewers = true` to your `codeowners.toml` configuration
* Bump github.com/bmatcuk/doublestar/v4 from 4.9.1 to 4.9.2 in the gomod group by @dependabot[bot] in https://github.com/multimediallc/codeowners-plus/pull/86


**Full Changelog**: https://github.com/multimediallc/codeowners-plus/compare/v1.6.1...v1.7.0
