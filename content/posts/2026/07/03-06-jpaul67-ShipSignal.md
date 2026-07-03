---
title: ShipSignal readiness gate
date: 2026-07-03 06:41:02 +00:00
tags:
  - jpaul67
  - GitHub Actions
draft: false
repo: https://github.com/jpaul67/ShipSignal
marketplace: https://github.com/marketplace/actions/shipsignal-readiness-gate
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jpaul67/ShipSignal** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipsignal-readiness-gate) to find the latest changes.

## What's Changed

## Added
- README hero image + social-preview card
- GitHub Action: sticky PR comments (`pr-comment` input) — score, grade, top 3 fixes, kept updated in place; degrades safely on fork PRs

## Fixed
- Security hardening: argument-injection fix in `gitinfo.clone`, least-privilege `GITHUB_TOKEN`, all third-party Actions pinned to commit SHAs + Dependabot, secret scanning + branch protection enabled
- CI: full-history checkout fixes a PR-merge-commit misclassification in the self-scan dogfood tests

Full details: [CHANGELOG.md](https://github.com/jpaul67/ShipSignal/blob/v0.8.0/CHANGELOG.md#080--2026-07-02)
