---
title: pr-sage AI Review
date: 2026-07-24 14:09:00 +00:00
tags:
  - Kyeom1997
  - GitHub Actions
draft: false
repo: https://github.com/Kyeom1997/pr-sage
marketplace: https://github.com/marketplace/actions/pr-sage-ai-review
version: v0.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  pr-sage is an AI-powered pull request reviewer designed to minimize noise and follow team conventions. It reviews only the most recent changes since the last review, uses fingerprinting to eliminate duplicate comments, and can enforce severity levels and quality gates in PRs. The action supports multiple providers (Anthropic, OpenAI, Gemini) and can be used locally for pre-push reviews without needing a GitHub token.
---


Version updated for **https://github.com/Kyeom1997/pr-sage** to version **v0.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pr-sage-ai-review) to find the latest changes.

## Action Summary

pr-sage is an AI-powered pull request reviewer designed to minimize noise and follow team conventions. It reviews only the most recent changes since the last review, uses fingerprinting to eliminate duplicate comments, and can enforce severity levels and quality gates in PRs. The action supports multiple providers (Anthropic, OpenAI, Gemini) and can be used locally for pre-push reviews without needing a GitHub token.

## What's Changed

Review safety, onboarding, and operations improvements.

## Highlights
- **Finding lifecycle** — follow-up reviews report which earlier findings were fixed and which remain unresolved
- **Coverage honesty** — every summary reports what was actually reviewed; partial reviews never auto-approve, and `--fail-on-incomplete` turns incomplete coverage into a CI failure
- **Verification controls** — `--verify-provider` / `--verify-model` to cross-check findings with a different model, `--verify-failure abort|keep|drop`
- **`pr-sage doctor`** — diagnose config, keys, and workflow wiring in one command
- **GitHub Check Run annotations** (`--check-run`)
- **Hardened generated workflow** — config loaded from the trusted base commit, concurrency cancellation, self-hosted runner + `openai-base-url` support for fully local reviews
- Scheduled benchmark workflow

## Since v0.5.0 (v0.6.0)
`pr-sage init` 30-second setup wizard, draft/WIP/skip-label skip rules, `maxTokensPerRun` cost guard, monorepo `paths` scoping, `locale: auto` detection, README demo GIF.

```bash
npx pr-sage init   # 30-second setup
```
