---
title: Polder Drift — Design System Drift Alerts
date: 2026-07-02 22:13:47 +00:00
tags:
  - usepolder
  - GitHub Actions
draft: false
repo: https://github.com/usepolder/drift
marketplace: https://github.com/marketplace/actions/polder-drift-design-system-drift-alerts
version: v1.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/usepolder/drift** to version **v1.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polder-drift-design-system-drift-alerts) to find the latest changes.

## What's Changed

**Polder Drift now works with any design system — including your in-house one.** Point `library_paths` at a checkout of your DS repo (source-only monorepo workspaces work too), and generate the look-alike detection data straight from your DS's own source:

```bash
npx @usepolder/drift profile   # writes .polder.profile.yml — review, prune, commit
```

Also in this release: PRs with 100+ changed files are now fully analysed, the CLI honours `.polderignore` and shows each finding's suppression id, every finding carries its source line, and scans are ~3× faster. All backward compatible — existing configs, suppression files, and `@v1` workflows keep working unchanged.

## What's Changed
* docs: add fetch-depth: 0 to the recommended workflow by @jongjesse in https://github.com/usepolder/drift/pull/9
* Five improvements: pagination, CLI suppression parity, detection profiles, finding lines, single parse by @jongjesse in https://github.com/usepolder/drift/pull/10
* Any design system: resolve exports from DS repos + auto-generate detection profiles by @jongjesse in https://github.com/usepolder/drift/pull/11


**Full Changelog**: https://github.com/usepolder/drift/compare/v1...v1.1.0

