---
title: MIU PR Review
date: 2026-06-22 23:41:10 +00:00
tags:
  - vanducng
  - GitHub Actions
draft: false
repo: https://github.com/vanducng/miu-cr
marketplace: https://github.com/marketplace/actions/miu-pr-review
version: v0.20.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vanducng/miu-cr** to version **v0.20.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/miu-pr-review) to find the latest changes.

## What's Changed

## miu-cr PR Review — v0.20.0

**AI-powered pull request code review as a GitHub Action.** Drop it into any workflow to get inline comments, severity-gated CI checks, and idempotent re-runs — all powered by your own LLM key (Anthropic or OpenAI-compatible).

### Usage

```yaml
- uses: actions/checkout@v4
- uses: vanducng/miu-cr@v0.20.0
  with:
    api-key: ${{ secrets.ANTHROPIC_API_KEY }}
    gate: high   # fail CI if any finding reaches this severity
```

**Required permission:**
```yaml
permissions:
  pull-requests: write
```

### Inputs

| Input | Required | Default | Description |
|-------|----------|---------|-------------|
| `api-key` | ✅ | — | Anthropic (or compatible) API key |
| `github-token` | ❌ | `github.token` | Token to read PR and post comments |
| `gate` | ❌ | `high` | Severity gate: `none\|low\|medium\|high\|critical` |
| `version` | ❌ | `latest` | Pin a specific `miucr` binary version |
| `base-url` | ❌ | — | Anthropic-compatible gateway URL (e.g. GLM/z.ai) |
| `model` | ❌ | — | Model override for the provider |

### How it works

1. Installs the `miucr` binary (static, pure-Go — no Docker, no extra deps).
2. Runs `miucr review --pr <repo>#<PR> --post --gate <gate>`.
3. Posts inline review comments anchored to exact diff lines; re-runs are idempotent (summary is edited, duplicate comments skipped).
4. Exits non-zero if any finding meets or exceeds the configured severity gate.

> **Note:** Only works on `pull_request` events from the same repo. Fork PRs are guarded against secret leakage; automated fork review is the serve daemon's job.

### Full documentation

https://miucr.vanducng.dev

## What changed

### Features

* **pr-review:** link a finding's category to your rule docs (reviewdog [#9](https://github.com/vanducng/miu-cr/issues/9)) ([8484d81](https://github.com/vanducng/miu-cr/commit/8484d81117a52ffc9803480de40ef0fd423040d1))
