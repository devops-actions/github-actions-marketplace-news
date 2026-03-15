---
title: Vigil PR Review
date: 2026-03-15 13:32:51 +00:00
tags:
  - F2iProject
  - GitHub Actions
draft: false
repo: https://github.com/F2iProject/vigil
marketplace: https://github.com/marketplace/actions/vigil-pr-review
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/F2iProject/vigil** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vigil-pr-review) to find the latest changes.

## Action Summary

Vigil is a GitHub Action that provides AI-powered, multi-domain pull request (PR) reviews by deploying a team of specialist reviewers (e.g., security, performance, testing). It automates the review process by generating inline comments on specific lines of code for actionable feedback and creating GitHub issues for non-blocking observations. With features like model-agnostic support, file-level routing, decision logging, and incremental reviews, Vigil streamlines code review workflows, reduces manual effort, and ensures domain-specific expertise.

## Release notes

Vigil is an AI-powered PR review tool that dispatches a team of specialist reviewers — Logic, Security, Architecture, Testing, Performance, and DX — to analyze your pull requests and post inline comments directly on the diff.

### Highlights
- **6 specialist reviewers** with domain-specific prompts and file-pattern routing
- **Lead reviewer** that consolidates specialist findings without duplication
- **Inline PR comments** placed on exact diff lines with a 4-tier fallback chain
- **Reaction lifecycle** — 🚀 on review start, 👍 on approve, 👀 on request changes
- **Model-agnostic** via litellm — works with Gemini, Claude, OpenAI, and others
- **Signal-over-noise tuning** — hard observation caps, anti-pattern kill list, senior engineer litmus test
- **Enterprise profile** with GxP/compliance specialist for regulated industries
- **SQLite audit trail** with session IDs and commit SHAs

### Quick Start
```yaml
- uses: F2iProject/vigil@v1
  with:
    model: "gemini/gemini-2.5-flash"
    gemini-api-key: ${{ secrets.GEMINI_API_KEY }}

