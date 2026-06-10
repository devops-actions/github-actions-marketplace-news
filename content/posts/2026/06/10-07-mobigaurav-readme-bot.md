---
title: README Pilot
date: 2026-06-10 07:03:09 +00:00
tags:
  - mobigaurav
  - GitHub Actions
draft: false
repo: https://github.com/mobigaurav/readme-bot
marketplace: https://github.com/marketplace/actions/readme-pilot
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/mobigaurav/readme-bot** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/readme-pilot) to find the latest changes.

## What's Changed

## 🎉 Initial release

A GitHub Action that reads your PR diff, asks an LLM to propose the smallest
README update needed, and posts a suggested diff as a single PR comment.

### Highlights
- **Zero-config on GitHub Enterprise / Copilot** via the default
  `github-models` provider — uses the workflow's built-in `GITHUB_TOKEN`
  with `models: read`. No third-party API key required.
- **Bring-your-own LLM**: switch to `openai`, `anthropic`, or `gemini`
  with one input.
- **Per-directory READMEs**: glob-based scoping rules so backend changes
  update `backend/README.md`, mobile changes update `mobile/README.md`, etc.
- **Idempotent comments**: edits its previous comment in place using a
  hidden HTML marker — no comment spam on every push.
- **Soft-fail by default**: an LLM hiccup or rate limit warns and exits 0;
  your CI is never blocked.
- **No vendor SDKs at runtime** — native `fetch` only, ~566 KB bundle.

### Quick start
```yaml
- uses: mobigaurav/readme-bot@v1
