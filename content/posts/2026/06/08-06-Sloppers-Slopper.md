---
title: Slopper - AI Slop Detector
date: 2026-06-08 06:56:21 +00:00
tags:
  - Sloppers
  - GitHub Actions
draft: false
repo: https://github.com/Sloppers/Slopper
marketplace: https://github.com/marketplace/actions/slopper-ai-slop-detector
version: v0.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/Sloppers/Slopper** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slopper-ai-slop-detector) to find the latest changes.

## What's Changed

## What's New

### Slopper Bot Integration
All write operations (comments, labels, PR close/approve, vouch/ban/report) now go through the **Slopper Bot** GitHub App (`slopper-bot[bot]`) via OIDC-authenticated requests. The action no longer needs `contents: write` or `pull-requests: write` permissions — it only needs `id-token: write` to prove its identity to the bot.

- Install the app: [github.com/apps/slopper-bot](https://github.com/apps/slopper-bot)
- Requires `id-token: write` permission in your workflow

### Ban Creates Reversible PRs
`/slopper report` now creates a PR to add the user to the banned list (same as `/slopper vouch`). Close the PR to unban — no more irreversible direct commits.

### Sloppers Organization
The project moved to the [Sloppers](https://github.com/Sloppers) org. Community lists (risky users, trusted orgs) are maintained in [Sloppers/community-list](https://github.com/Sloppers/community-list) and managed automatically by the bot.

### Scoring & Checks Overhaul
- Simplified labels to `slopper/slop` and `slopper/legit`
- All checks now contribute to the score (no more indicator-only checks)
- New **suspicious-author** agentic check
- New **verified org** check (GitHub-verified org members get a score reduction)
- Removed AI fingerprint heuristic — replaced by agentic checks
- Added `DerivedIndicator` abstraction for computed signals
- Global trusted orgs list fetched at runtime

### AI Provider Refactor
- Strategy pattern for AI providers (Anthropic, OpenAI, Groq, Gemini)
- Prompt factory for agentic checks
- Cleaner check-caller pipeline

### Internal
- `BotGitHubClient` extends `GitHubClient` — overrides all write methods to POST to the worker
- `SlopperClient` for community data fetching
- Consolidated repeated patterns, removed dead code
- `PipelineStep` base class now has `log()`/`warn()` helpers
- Moved checks reference docs to `docs/checks.md`

## Breaking Changes

- **Workflow permissions changed**: replace `contents: write` + `pull-requests: write` with `id-token: write`
- **Slopper App required**: the action errors if the app is not installed — no fallback to `GITHUB_TOKEN` for writes
- **Labels renamed**: old granular labels replaced with `slopper/slop` and `slopper/legit`

## Migration

```yaml
permissions:
  contents: read
  pull-requests: read
  id-token: write    # new — required for Slopper Bot
```

**Full Changelog**: https://github.com/Sloppers/Slopper/compare/v0.1.0...v0.2.0
