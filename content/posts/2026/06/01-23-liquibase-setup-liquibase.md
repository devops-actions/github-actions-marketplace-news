---
title: Setup Liquibase
date: 2026-06-01 23:54:23 +00:00
tags:
  - liquibase
  - GitHub Actions
draft: false
repo: https://github.com/liquibase/setup-liquibase
marketplace: https://github.com/marketplace/actions/setup-liquibase
version: v3.0.0
dependentsNumber: "10"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/liquibase/setup-liquibase** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **10** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-liquibase) to find the latest changes.

## What's Changed

## v3.0.0 — Node.js 24 runtime

### ⚠️ Breaking change — Node.js runtime upgraded from Node 20 to Node 24
`action.yml` now declares `using: node24` (previously `node20`). GitHub-hosted runners support this automatically. **Self-hosted runners must be on `actions/runner@v2.327.0` or newer** (released 2025-07-22), otherwise the action fails with `Unsupported runtime: node24`. Check with `./run.sh --version` from the runner directory.

If your runner application can't be upgraded yet, stay on the `v2` line (`liquibase/setup-liquibase@v2`) — it remains on Node.js 20. Node.js 20 reaches end of support on GitHub-hosted runners on **2026-06-16** (default flip to node24) and is removed in **fall 2026**, so plan the migration.

### What's in v3.0.0
- Update Node.js runtime from 20 to 24 in `action.yml` and CI (#141) — **breaking for self-hosted runners on actions/runner < v2.327.0**
- Add RC / pre-release build support via the `download-url-base` input (#158)
- Pin all GitHub Actions usages to immutable commit SHAs (#154)
- License migrated to FSL-1.1-ALv2

### Maintenance
- Remove RC tests from full/schedule UAT scope — opt-in only (#167)
- Bump actions/create-github-app-token 3.0.0 → 3.1.1 (#160)
- Bump release-drafter/release-drafter 7.1.1 → 7.2.0 (#159)
- Bump aws-actions/aws-secretsmanager-get-secrets 3.0.0 → 3.0.1 (#156)
- Bump picomatch (#150)
- Bump handlebars 4.7.8 → 4.7.9 (#151)
- Bump development-dependencies group (#140)
- Bump undici and @actions/http-client (#139)
- Bump actions/download-artifact 7 → 8 (#134)
- Bump actions/upload-artifact 6 → 7 (#133)
- Bump minimatch 3.1.2 → 3.1.5 (#132)
- Bump semver 7.7.3 → 7.7.4 (#129)
- Bump aws-actions/configure-aws-credentials 5 → 6 (#128)
- Skip bot PRs in Claude Code review workflow (#135)

### Docs
- Add `lpm add` idempotency workarounds to README (#122)

### Migrating from v2
1. Verify self-hosted runner version (if applicable): `./run.sh --version` must be ≥ 2.327.0.
2. Pin to `@v3.0.0` (or `@v3` once the floating major tag is created).
3. Validate your workflow end-to-end.

### Usage
```yaml
- uses: liquibase/setup-liquibase@v3.0.0
  with:
    version: '5.1.1'
    edition: 'secure'
```

**Full Changelog**: https://github.com/liquibase/setup-liquibase/compare/v2.1.1...v3.0.0
