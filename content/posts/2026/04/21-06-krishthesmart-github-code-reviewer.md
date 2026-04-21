---
title: Groq AI Code Reviewer
date: 2026-04-21 06:29:15 +00:00
tags:
  - krishthesmart
  - GitHub Actions
draft: false
repo: https://github.com/krishthesmart/github-code-reviewer
marketplace: https://github.com/marketplace/actions/groq-ai-code-reviewer
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/krishthesmart/github-code-reviewer** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/groq-ai-code-reviewer) to find the latest changes.

## Action Summary

The **AI Code Reviewer** GitHub Action automatically reviews pull requests using Groq AI to assess code across five categories: Security, Bugs, Performance, Maintainability, and Best Practices. It provides inline comments with severity levels and can optionally auto-fix issues by committing changes directly to the PR branch, enabling a fully automated review workflow. This action helps streamline code review processes, enhance code quality, and identify critical issues like OWASP Top 10 security vulnerabilities with minimal human intervention.

## What's Changed

## What's included

- Full 5-category review: Security, Bugs, Performance, Maintainability, Best Practices
- Inline line comments with severity levels (CRITICAL, HIGH, MEDIUM, LOW, SUGGESTION)
- OWASP Top 10 security checks
- `auto_fix: "true"` — AI commits fixes directly to the PR branch, re-review runs automatically
- Infinite loop protection — skips auto-fix if last commit was already a bot fix
- `/fix` and `/review` slash commands via PR comments
- Powered by Groq (free API key at console.groq.com)

## Quick Start

```yaml
- uses: krishthesmart/github-code-reviewer@v1
  with:
    groq_api_key: ${{ secrets.GROQ_API_KEY }}
    github_token: ${{ secrets.GITHUB_TOKEN }}
    auto_fix: "true"
```

See the README for full setup instructions.
