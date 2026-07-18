---
title: Argus PR Review
date: 2026-07-18 22:25:16 +00:00
tags:
  - sibinms
  - GitHub Actions
draft: false
repo: https://github.com/sibinms/argus
marketplace: https://github.com/marketplace/actions/argus-pr-review
version: v1.2.3
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Argus is an AI code review tool that optimizes for recall by running multiple specialized AI reviewers in parallel. It uses an evidence-based curator to verify findings before posting review comments on pull requests, helping developers identify more real bugs while keeping false positives manageable. The action supports various LLM providers and allows users to create custom lenses using Markdown.
---


Version updated for **https://github.com/sibinms/argus** to version **v1.2.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/argus-pr-review) to find the latest changes.

## Action Summary

Argus is an AI code review tool that optimizes for recall by running multiple specialized AI reviewers in parallel. It uses an evidence-based curator to verify findings before posting review comments on pull requests, helping developers identify more real bugs while keeping false positives manageable. The action supports various LLM providers and allows users to create custom lenses using Markdown.

## What's Changed

Pin the Action to this tag:

    - uses: sibinms/argus@v1.2.3

## README restructure

The previous README buried multi-provider usage across five different sections (a Quick Start footnote, a "Why use Argus" bullet, a Features table row, a Configuration paragraph, a Data privacy paragraph) and read as one long wall of text.

- **Quick Start now shows three copy-paste GitHub Action blocks** — Anthropic, OpenAI, and Gemini — right up front, each ready to paste with the right env var and a pointer to the matching model string.
- **Everything long is now a real collapsed `<details>`**: install troubleshooting, data privacy, "Why use Argus," "How it works," measuring recall, the full CI breakdown, and design notes. The page you land on is short; the reference material is one click away.
- Table of Contents trimmed to only what stays visible.

No changes to the review pipeline itself — this is purely a documentation restructure.
