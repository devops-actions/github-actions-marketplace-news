---
title: PR Convention Checker
date: 2026-04-07 13:57:26 +00:00
tags:
  - cres17
  - GitHub Actions
draft: false
repo: https://github.com/cres17/pr-convention-checker
marketplace: https://github.com/marketplace/actions/pr-convention-checker
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cres17/pr-convention-checker** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-convention-checker) to find the latest changes.

## Action Summary

This GitHub Action ensures that code changes in pull requests are synchronized with related documentation and configuration files, such as specs, runbooks, CHANGELOGs, and environment examples. It automates the detection of inconsistencies, categorizes changes, evaluates compliance with defined rules, and generates actionable reports that can block merges, prompt team discussions, or provide informational feedback. By enforcing doc-code consistency, it helps teams maintain up-to-date and accurate contract documents, reducing the risk of overlooked updates during development.

## What's Changed

First release of pr-convention-checker.

**Claude Code plugin + GitHub Action** that checks PRs against your team convention docs (`CLAUDE.md`, `SKILLS.md`).

### Usage
```yaml
- uses: cres17/pr-convention-checker@v1
  with:
    anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
```
