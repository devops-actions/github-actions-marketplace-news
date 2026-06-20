---
title: AEO Audit Guard
date: 2026-06-20 07:21:07 +00:00
tags:
  - Canonry
  - GitHub Actions
draft: false
repo: https://github.com/Canonry/aeo-audit-action
marketplace: https://github.com/marketplace/actions/aeo-audit-guard
version: v4.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Canonry/aeo-audit-action** to version **v4.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aeo-audit-guard) to find the latest changes.

## What's Changed

**AEO Audit Guard** — a technical, static AEO (Answer Engine Optimization) audit for CI.
Builds your site, audits the rendered HTML offline (no deploy, no secrets, deterministic),
compares against a committed baseline, and fails PRs on regressions.

```
yaml
- uses: Canonry/aeo-audit-action@v4
  with:
    build-command: "pnpm install --frozen-lockfile && pnpm run build"
    target: "./out"
    base-url: "https://www.example.com"
    baseline-path: ".aeo/baseline.default.json"

```

Wraps `@ainyc/aeo-audit@4` (pulled from npm at runtime — no install step for consumers).
See the README for `url`/`sitemap` modes, baseline strategies, monorepos, and every input.
