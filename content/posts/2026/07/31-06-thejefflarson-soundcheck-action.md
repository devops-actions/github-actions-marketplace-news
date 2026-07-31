---
title: Soundcheck Security Review
date: 2026-07-31 06:33:58 +00:00
tags:
  - thejefflarson
  - GitHub Actions
draft: false
repo: https://github.com/thejefflarson/soundcheck-action
marketplace: https://github.com/marketplace/actions/soundcheck-security-review
version: v1.0.40
dependentsNumber: "11"
actionType: Composite
actionSummary: |
  This GitHub Action automates the Soundcheck security review process on pull requests. It uses the Claude AI to analyze code changes and comments findings, optionally rewriting them in place if autofix is enabled. The action supports various inputs like model selection and spend budget limits, and provides outputs such as PR URLs, finding counts, and exit codes for error handling.
---


Version updated for **https://github.com/thejefflarson/soundcheck-action** to version **v1.0.40**.

- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/soundcheck-security-review) to find the latest changes.

## Action Summary

This GitHub Action automates the Soundcheck security review process on pull requests. It uses the Claude AI to analyze code changes and comments findings, optionally rewriting them in place if autofix is enabled. The action supports various inputs like model selection and spend budget limits, and provides outputs such as PR URLs, finding counts, and exit codes for error handling.

## What's Changed

**Bumps soundcheck to [v1.17.1](https://github.com/thejefflarson/soundcheck/releases/tag/v1.17.1)** — a bugfix release that restores the skill catalog on target-repo reviews.

Prior to v1.17.1, `design-review` and `vulnerability-audit` subagents silently fell back to "apply checklist from memory" because they tried to read skill files with a relative path that resolved to the audited repo, not the plugin. This action now shells out to a soundcheck that fires the actual skill catalog.

Expect a meaningful jump in findings quality — the plugin's core value was being bypassed on every review this action performed.

No breaking changes.
