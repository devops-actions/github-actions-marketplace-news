---
title: SpecGuard CI
date: 2026-07-06 06:23:32 +00:00
tags:
  - Sawaiz-zip
  - GitHub Actions
draft: false
repo: https://github.com/Sawaiz-zip/spec-guard
marketplace: https://github.com/marketplace/actions/specguard-ci
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Sawaiz-zip/spec-guard** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/specguard-ci) to find the latest changes.

## What's Changed

## SpecGuard v0.4.0

Semantic governance gate for spec files — classifies PR changes against a locked project goal/scope and blocks unauthorized drift.

### Highlights since v0.3.0

- **GitHub App** — native check runs, fork-PR governance, and agent-identity handling for PRs that don't come through the classic CI workflow (`specs/006-github-app/`)
- **Advanced governance** — section-level locking (govern just part of a file), monorepo multi-scope support (independent verdicts per package), and audit-trail JSON export (`specs/007-advanced/`)
- **Approval commands** — `/specguard approve` comment command and MCP containment for agent-driven approvals (`specs/005-approval-commands/`)
- Version metadata now consistent across `pyproject.toml`, `__init__.py`, and `action.yml` (all `0.4.0`)

### Using this release

```yaml
- uses: Sawaiz-zip/spec-guard@v0
  with:
    anthropic-api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

`specguard-ci==0.4.0` is published on PyPI; the composite action pins to it directly.

### Full history

001 CI gate → 002 local tools → 003 provider-agnostic classifier → 004 framework adapters → 005 approval commands → 006 GitHub App → 007 advanced governance. See `specs/` for individual feature specs.

