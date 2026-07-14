---
title: IntentGuard PR Alignment Reviewer
date: 2026-07-14 08:18:58 +00:00
tags:
  - derrickchiang1024
  - GitHub Actions
draft: false
repo: https://github.com/derrickchiang1024/intentguard
marketplace: https://github.com/marketplace/actions/intentguard-pr-alignment-reviewer
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  IntentGuard automates an AI-driven alignment review of pull requests against linked Linear issues and sprint intentions. It helps ensure that PRs are aligned with the intended product goals, providing clarity on their scope and potential risks. The action uses Anthropic's Fable 5 to assess whether the PR meets the requirements described in the Linked issue.
---


Version updated for **https://github.com/derrickchiang1024/intentguard** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/intentguard-pr-alignment-reviewer) to find the latest changes.

## Action Summary

IntentGuard automates an AI-driven alignment review of pull requests against linked Linear issues and sprint intentions. It helps ensure that PRs are aligned with the intended product goals, providing clarity on their scope and potential risks. The action uses Anthropic's Fable 5 to assess whether the PR meets the requirements described in the Linked issue.

## What's Changed

AI coding agents can write code that passes tests but misses the point. IntentGuard reviews every pull request against the linked Linear issue and current sprint intent, then comments whether the PR is **ALIGNED**, **MISALIGNED**, or **UNCLEAR**.

## What's in v0.1.0

- **GitHub Action** — runs on `pull_request` events, posts exactly one verdict comment per PR and updates it in place on every push
- **CLI** — `intentguard check --mock` works offline with zero API keys; `--pr N --dry-run` reviews real PRs without posting
- **Linear context** — linked issue, active cycle (with team-cycle fallback), and sibling in-progress issues
- **Anthropic (Fable 5) verdict engine** — strict JSON via a forced tool call, Zod-validated, deterministic UNCLEAR fallback on invalid output
- **Security-first design** — never checks out or executes PR code, refuses `pull_request_target`, treats all PR/Linear text as untrusted input with delimiter sandwiching, redacts likely secrets before LLM use, never blocks merge by default, no telemetry, no data storage

## Install

```yaml
on:
  pull_request:
    types: [opened, reopened, synchronize, ready_for_review]

permissions:
  contents: read
  pull-requests: read
  issues: write

jobs:
  intentguard:
    runs-on: ubuntu-latest
    steps:
      - uses: derrickchiang1024/intentguard@v0.1.0
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
          linear-api-key: ${{ secrets.LINEAR_API_KEY }}
          anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

## Try it in 60 seconds (no API keys)

```bash
git clone https://github.com/derrickchiang1024/intentguard.git
cd intentguard && npm install && npm run check:mock
```

106 tests, all credential-free. See [SECURITY.md](https://github.com/derrickchiang1024/intentguard/blob/main/docs/SECURITY.md) for the full security model.
