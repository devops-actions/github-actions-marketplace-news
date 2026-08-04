---
title: SpecGuard CI
date: 2026-08-04 07:18:11 +00:00
tags:
  - Sawaiz-zip
  - GitHub Actions
draft: false
repo: https://github.com/Sawaiz-zip/spec-guard
marketplace: https://github.com/marketplace/actions/specguard-ci
version: v0.4.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SpecGuard is a GitHub Action that enforces semantic governance by checking the scope and content of spec files against locked goals and scopes, preventing potential direction shifts without proper approvals. It uses AI to analyze changes and provides warnings or blocks based on confidence levels. The action integrates with Anthropic for AI-powered analysis, enhancing its functionality and accuracy in detecting scope changes.
---


Version updated for **https://github.com/Sawaiz-zip/spec-guard** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/specguard-ci) to find the latest changes.

## Action Summary

SpecGuard is a GitHub Action that enforces semantic governance by checking the scope and content of spec files against locked goals and scopes, preventing potential direction shifts without proper approvals. It uses AI to analyze changes and provides warnings or blocks based on confidence levels. The action integrates with Anthropic for AI-powered analysis, enhancing its functionality and accuracy in detecting scope changes.

## What's Changed

## SpecGuard v0.4.1

Semantic governance gate for spec files — classifies PR changes against a locked project goal/scope and blocks unauthorized drift.

### What changed since v0.4.0

- Self-documenting `init` templates: richly-commented `roles.yml`/`config.yml`, a scaffolded `regions.yml`, and a `lock.json` that no longer carries unexplained null metadata (`specs/008-config-templates/`)
- Package version metadata (`pyproject.toml`, `__init__.py`) bumped to `0.4.1`

### Using this release

```yaml
- uses: Sawaiz-zip/spec-guard@v0
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

**Note:** `specguard-ci` on PyPI and the composite action (`action.yml`) are still pinned to `0.4.0` — publishing `0.4.1` to PyPI is a separate, pending step. The `v0` moving tag and `action.yml`'s pin will be updated together once `0.4.1` is live on PyPI, so the running Action never breaks.

### Full history

001 CI gate → 002 local tools → 003 provider-agnostic classifier → 004 framework adapters → 005 approval commands → 006 GitHub App → 007 advanced governance → 008 config templates. See `specs/` for individual feature specs.

