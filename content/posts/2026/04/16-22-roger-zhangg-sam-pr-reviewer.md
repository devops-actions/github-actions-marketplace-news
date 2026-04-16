---
title: SAM PR Reviewer
date: 2026-04-16 22:12:22 +00:00
tags:
  - roger-zhangg
  - GitHub Actions
draft: false
repo: https://github.com/roger-zhangg/sam-pr-reviewer
marketplace: https://github.com/marketplace/actions/sam-pr-reviewer
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/roger-zhangg/sam-pr-reviewer** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sam-pr-reviewer) to find the latest changes.

## Action Summary

The SAM PR Reviewer GitHub Action is an AI-driven tool that automates code reviews for pull requests using the Kiro CLI. It analyzes PR diffs and posts inline comments with categorized findings covering areas like security, bugs, performance, and more, while leveraging cross-file context for comprehensive reviews. This action streamlines code review processes, enforces custom coding guidelines, and ensures consistent quality checks across repositories, including forks, without exposing sensitive data.

## What's Changed

## SAM PR Reviewer v1.0.0

AI-powered code reviewer for GitHub pull requests, powered by Kiro CLI.

### Features
- Inline PR comments on specific lines with categorized findings
- 5-pass review pipeline: generate → deduplicate → confidence check → guideline compliance → refine
- 12 finding categories (BUG, SECURITY, ERROR_HANDLING, etc.)
- Configurable timeout with partial result posting
- Custom guidelines and project-specific rules via `kiro-review.yaml`
- Security-hardened: input validation, secret redaction, path traversal protection

### Usage
```yaml
- uses: roger-zhangg/sam-pr-reviewer@v1
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    kiro_api_key: ${{ secrets.KIRO_API_KEY }}
```

See [README](https://github.com/roger-zhangg/sam-pr-reviewer#readme) for full documentation.
