---
title: PR Balrog
date: 2026-05-15 22:12:34 +00:00
tags:
  - oncleguigs
  - GitHub Actions
draft: false
repo: https://github.com/oncleguigs/pr-balrog
marketplace: https://github.com/marketplace/actions/pr-balrog
version: v1.0.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/oncleguigs/pr-balrog** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-balrog) to find the latest changes.

## Action Summary

PR Balrog is a GitHub Action that ensures developers understand their pull requests before merging by generating an AI-powered quiz based on the changes in the diff. It blocks the merge button until the author successfully answers questions about the rationale and trade-offs behind their code modifications, thus promoting accountability and thoughtful development practices. This action automates the review process and enhances code quality by validating developers' understanding of their contributions.

## What's Changed

Vibe coding ships features fast. It also ships bugs nobody understands,
regressions nobody can debug, and PRs nobody actually reviewed — including
the author.

PR Balrog puts a simple gate in front of the merge button: before you merge,
prove you understand what you're shipping. An AI reads your diff and asks you
3–10 questions about the *why*, the trade-offs, and the risks. Get enough
right, the check passes. Get them wrong, the branch stays locked.

No more rubber-stamp approvals. No more "LGTM" on code the reviewer didn't read.
No more AUTHORS who can't explain their own PR two days later.

## Quick start

Add to `.github/workflows/quiz-generate.yml`:

\`\`\`yaml
- uses: oncleguigs/pr-balrog@v1
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
    ai-provider: github-models   # free for Copilot orgs, no extra secret
\`\`\`

Then: **Settings → Branches → Require status check: `PR Balrog`**.

Full setup in the [README](../../blob/main/README.md).

## What it checks

- **Why** was this change made — not just what changed
- **Trade-offs** the author should have considered
- **Risks and side-effects** visible in the diff

## Features

**Scales with the size of the change**
Small fix? 3 questions. Medium refactor? 5. Large PR? 10.
Automatically sized by lines changed, or override with `quiz-size: '5'`.

**Blocks the merge until the author passes**
Uses the GitHub Checks API as a Required Status Check — the merge button
stays greyed out until the quiz score clears the threshold (default 80%).
No workarounds, no clicking past it.

**Correct answers are never in the page source**
Stored as a GitHub Actions Artifact, not in the comment HTML.
The author can't cheat by inspecting the DOM.

**Retry flow that doesn't let you spam your way through**
`!balrog retry` is available once attempts are exhausted — not before.
Admins can use `!balrog retry --force` to reset a quiz for any PR, useful
when you want to give someone another shot without waiting for a new commit.

**Works with whatever AI you already pay for**
GitHub Models (free for Copilot orgs, zero config), Anthropic, OpenAI,
Azure OpenAI, or a self-hosted Ollama instance.

**Domain-aware questions with `additional-prompt`**
Point it at what matters for your codebase:
`additional-prompt: 'This is a payments service — focus on idempotency and failure handling.'`
The AI will weight its questions accordingly.

**Bilingual out of the box**
Auto-detects French or English from the diff context.
Force a language with `language: 'fr'`.

**Zero infrastructure**
Runs entirely inside GitHub Actions. No server, no webhook endpoint,
no secrets beyond your existing AI provider key.
