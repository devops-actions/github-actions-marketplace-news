---
title: TreeMapper Diff Context
date: 2026-01-04 21:29:05 +00:00
tags:
  - nikolay-e
  - GitHub Actions
draft: false
repo: https://github.com/nikolay-e/treemapper-action
marketplace: https://github.com/marketplace/actions/treemapper-diff-context
version: v1
dependentsNumber: "1"
---


Version updated for **https://github.com/nikolay-e/treemapper-action** to version **v1**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/treemapper-diff-context) to find the latest changes.

## Action Summary

TreeMapper Diff Context is a GitHub Action designed to enhance code reviews by providing smart, context-aware diffs. It uses PageRank to prioritize and extract the most relevant sections of code, such as entire functions or related callers/callees, rather than just individual line changes. This action is particularly useful for generating concise, token-budget-friendly summaries optimized for large language models (LLMs) and automates the process of attaching this context to pull requests for easier collaboration.

## Release notes

Initial release of TreeMapper Diff Context Action.

  - Smart diff context extraction using PageRank algorithm
  - Token-budget aware output for LLMs
  - Auto-detection of diff range (PR, push, fallback)
  - Reusable workflow for easy setup
  - Uploads artifact and comments on PR
