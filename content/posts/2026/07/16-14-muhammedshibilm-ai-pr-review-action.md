---
title: AI PR Review (GitHub Models)
date: 2026-07-16 14:59:01 +00:00
tags:
  - muhammedshibilm
  - GitHub Actions
draft: false
repo: https://github.com/muhammedshibilm/ai-pr-review-action
marketplace: https://github.com/marketplace/actions/ai-pr-review-github-models
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The AI PR Review Action is a GitHub Action that uses pre-trained models to review pull requests in your repository. It provides feedback on areas like bugs, security, and readability, with the ability to focus reviews on specific aspects of the code. The action automates the process by running multiple specialized reviews in parallel, allowing for a comprehensive assessment of the PR's quality.
---


Version updated for **https://github.com/muhammedshibilm/ai-pr-review-action** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-review-github-models) to find the latest changes.

## Action Summary

The AI PR Review Action is a GitHub Action that uses pre-trained models to review pull requests in your repository. It provides feedback on areas like bugs, security, and readability, with the ability to focus reviews on specific aspects of the code. The action automates the process by running multiple specialized reviews in parallel, allowing for a comprehensive assessment of the PR's quality.

## What's Changed

## What's new

- **Prioritized feedback** — reviews are now grouped into 🚨 Must Fix, ⚠️ Should Fix, 💡 Suggestions, and ✅ Good, instead of one flat list.
- **Configurable focus areas** — target the review via the new `focus_areas` input (bugs, security, edge-cases, readability, performance, tests).
- **Configurable ignore patterns** — exclude extra paths via `extra_ignore_patterns`, on top of built-in defaults (lock files, generated code, binaries).
- **Multi-reviewer workflows** — run the action in parallel jobs with different `focus_areas` values to simulate specialised reviewers (security, performance, readability, etc). See README for an example workflow.

## Upgrading
No breaking changes from v1.1.0 — all new inputs are optional with sensible defaults.
