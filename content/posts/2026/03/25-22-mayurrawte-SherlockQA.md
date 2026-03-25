---
title: SherlockQA-AI
date: 2026-03-25 22:17:34 +00:00
tags:
  - mayurrawte
  - GitHub Actions
draft: false
repo: https://github.com/mayurrawte/SherlockQA
marketplace: https://github.com/marketplace/actions/sherlockqa-ai
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mayurrawte/SherlockQA** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sherlockqa-ai) to find the latest changes.

## Action Summary

SherlockQA is a GitHub Action that leverages AI to automate code reviews, identifying bugs, security vulnerabilities, and quality issues in pull requests. It provides inline comments, suggests QA test scenarios and unit tests, and delivers smart verdicts (approve, request changes, or flag PRs). Designed to streamline code quality assurance, it supports multiple AI providers and offers customizable prompts for domain-specific insights.

## Release notes

### Changes
- Removed `analysis` field — always duplicated summary
- `code_quality` only shows when there's an actual issue, not generic praise
- Line comments deduplicated — each issue mentioned once
- QA scenarios skipped for trivial changes (config, CI, docs)
- Clean approvals are minimal: "Good to go" instead of verbose explanations
- `professional` personality rewritten for concise, actionable output
- Summary and verdict_reason no longer repeat the same information
