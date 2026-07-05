---
title: J-Bot Code Review
date: 2026-07-05 14:54:46 +00:00
tags:
  - pgup-ai
  - GitHub Actions
draft: false
repo: https://github.com/pgup-ai/jbot-review-action
marketplace: https://github.com/marketplace/actions/j-bot-code-review
version: v0.2.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/pgup-ai/jbot-review-action** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/j-bot-code-review) to find the latest changes.

## What's Changed

<p align="center">
  <img src="https://raw.githubusercontent.com/pgup-ai/jbot-review-action/main/docs/assets/social-preview.png" alt="J-Bot Review — code review that runs inside your own CI" />
</p>

First Marketplace release of **J-Bot Review** — an open-source agentic PR reviewer that runs as a single GitHub Action inside your own CI, with a model you already pay for.

## Highlights

- **One file, one secret to install** — a Docker container action on your runner; least-privilege defaults (`contents: read`, `pull-requests: write`)
- **Bring your own model** — OpenCode gateways (Claude, OpenAI, Gemini, DeepSeek, and 28+ backends) or a coding-CLI subscription: Codex (ChatGPT Plus/Pro), Cursor, Devin, Cline, Kilo, Command Code
- **Verified findings** — every blocking finding is adversarially re-checked in a dedicated session before posting; refuted findings dropped, nits demoted
- **Reads your house rules** — AGENTS.md, REVIEW.md, .coderabbit.yaml, greptile.json, Cursor rules
- **Current-docs checks** — Context7 verifies changes against live documentation when a PR touches an external API or SDK
- **`/jbot` comment command** — one-off reviews with a stronger model, sharing the per-PR concurrency group

## Install

```yaml
- uses: pgup-ai/jbot-review-action@v0
  with:
    provider: ${{ vars.JBOT_REVIEW_PROVIDER || 'opencode' }}
    opencode-api-key: ${{ secrets.OPENCODE_API_KEY }}
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

Docs: [README](https://github.com/pgup-ai/jbot-review-action#readme) · Setup guides: [pgupai.com/guides](https://www.pgupai.com/guides)

Full changes since v0.1.0: https://github.com/pgup-ai/jbot-review-action/compare/v0.1.0...v0.2.0

