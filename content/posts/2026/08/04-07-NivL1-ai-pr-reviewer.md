---
title: NivL1 AI PR Reviewer
date: 2026-08-04 07:28:30 +00:00
tags:
  - NivL1
  - GitHub Actions
draft: false
repo: https://github.com/NivL1/ai-pr-reviewer
marketplace: https://github.com/marketplace/actions/nivl1-ai-pr-reviewer
version: v0.1.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This action automates AI-powered code review on pull requests using a NestJS service and GitHub Action. It handles HMAC-validated webhook ingestion, incremental re-review of changes since the last review, and provides containerized deployment with multi-stage Dockerfile and `docker-compose`. The service supports LLM calls behind a single service boundary, including Anthropic today and a potential second provider in the future.
---


Version updated for **https://github.com/NivL1/ai-pr-reviewer** to version **v0.1.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nivl1-ai-pr-reviewer) to find the latest changes.

## Action Summary

This action automates AI-powered code review on pull requests using a NestJS service and GitHub Action. It handles HMAC-validated webhook ingestion, incremental re-review of changes since the last review, and provides containerized deployment with multi-stage Dockerfile and `docker-compose`. The service supports LLM calls behind a single service boundary, including Anthropic today and a potential second provider in the future.

## What's Changed

**LLM-powered PR review, as a GitHub Action.** Drop it into any repo's CI to get inline code review comments on every pull request — no server to run, no webhook to expose.

```yaml
- uses: NivL1/ai-pr-reviewer@v0.1.2
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

**What it does differently:**

- **Reviews only what's new.** Most PR-review bots re-diff the whole PR on every push and repeat the same comments across every commit. This one tracks its own last review on a PR and only looks at what changed since then.
- **Filters the noise before it reaches the model.** Generated files, lockfiles, and sourcemaps are stripped from the diff automatically — no token budget spent reviewing things nobody reviews by hand anyway.
- **Cost-bounded.** `max-diff-lines` skips the review outright on PRs too large to sanely review in one pass, instead of silently truncating and reviewing half a diff.
- **Model-pinnable.** Point it at whichever Claude model you want via the `model` input.

Full input reference and setup notes: [README](https://github.com/NivL1/ai-pr-reviewer#readme) · [runbook](https://github.com/NivL1/ai-pr-reviewer/blob/master/docs/runbook.md).
