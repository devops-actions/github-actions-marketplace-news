---
title: vorsken Policy Gate
date: 2026-04-27 06:35:52 +00:00
tags:
  - zetide
  - GitHub Actions
draft: false
repo: https://github.com/zetide/vorsken
marketplace: https://github.com/marketplace/actions/vorsken-policy-gate
version: v0.2.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/zetide/vorsken** to version **v0.2.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vorsken-policy-gate) to find the latest changes.

## Action Summary

Vorsken is a GitHub Action designed to automatically enforce API security policies on pull requests by scanning code changes for vulnerabilities using Semgrep and analyzing findings with Claude AI. It provides detailed, plain-English explanations of identified security issues, maps them to OWASP API Security Top 10 categories, and suggests actionable fixes directly within PR comments, blocking merges for critical vulnerabilities. This automation streamlines security reviews, prevents deployment of insecure code, and enhances developer understanding of security risks.

## What's Changed

## What's New in v0.2.5

### 🚀 First Official Marketplace Release

vorsken Policy Gate is now live on [GitHub Marketplace](https://github.com/marketplace/actions/vorsken-policy-gate)!

### Bug Fixes

- **fix: Claude Analysis `risk` / `fix` fields now always populated** — prompt schema updated with `description` / `risk` / `fix` / `line` fields
- **fix: resolve Semgrep rule path using `GITHUB_ACTION_PATH` fallback**
- **fix: unpack `analyze_with_claude` return value (3→4 tuple)**
- **fix: broaden Semgrep include pattern** — `src/**` → `**`
- **fix: smart quote normalization in `action.yml`**

### Improvements

- Added `pull-requests: write` permission to `action.yml`
- Added `SECURITY.md` with security contact `security@zetide.com`
- Updated README usage example to `v0.2.5`

### Verified

- ✅ BLOCK verdict + PR comment posted end-to-end on `zetide/vorsken-test`
- ✅ CI green — ruff / mypy / pytest, coverage 100%

### Usage

```yaml
- uses: zetide/vorsken@v0.2.5
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

**Full Changelog**: https://github.com/zetide/vorsken/blob/main/CHANGELOG.md
