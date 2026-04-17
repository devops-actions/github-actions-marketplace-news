---
title: dbt-semguard
date: 2026-04-17 06:32:07 +00:00
tags:
  - yeaight7
  - GitHub Actions
draft: false
repo: https://github.com/yeaight7/dbt-semguard
marketplace: https://github.com/marketplace/actions/dbt-semguard
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yeaight7/dbt-semguard** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dbt-semguard) to find the latest changes.

## Action Summary

`dbt-semguard` is a GitHub Action and CLI tool designed to detect semantic breaking changes in dbt Semantic Layer definitions. It automates the comparison of two versions of a semantic contract, classifies changes by severity (`breaking`, `risky`, or `safe`), and generates actionable output in formats such as JSON or Markdown. This tool helps prevent production issues by identifying impactful changes to dbt metrics without requiring direct access to the data warehouse or dbt runtime internals.

## What's Changed

Marketplace packaging follow-up release.

### Fixed
- Composite action now installs from `${{ github.action_path }}` instead of the caller workspace.
- Added Marketplace branding metadata to `action.yml`.
- Replaced local `uses: ./` consumer guidance with `yeaight7/dbt-semguard@v0.1.1`.
- Replaced broken Windows absolute README links with repo-relative links.
