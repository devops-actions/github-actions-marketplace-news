---
title: Slop-Mop
date: 2026-06-19 07:02:11 +00:00
tags:
  - ScienceIsNeato
  - GitHub Actions
draft: false
repo: https://github.com/ScienceIsNeato/slop-mop-action
marketplace: https://github.com/marketplace/actions/slop-mop
version: v1.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/ScienceIsNeato/slop-mop-action** to version **v1.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slop-mop) to find the latest changes.

## What's Changed

First stable release of the Slop-Mop GitHub Action.

Runs `sm swab` or `sm scour` in CI and surfaces the repo's **hull grade** — the deterministic A+→F rating (with boat-condition name) that slop-mop ≥ 2.5.0 emits.

**Highlights**
- Hull grade as a job-summary headline (`⚓ hull rating: B — serviceable`) and as outputs: `grade`, `hull`, `failing`, `warned`, `provisional`, `hull_grade_json`
- `minimum-grade` input to fail the build when the hull drops below a letter (A+, A, B, C, D, F); an invalid value hard-fails as a misconfiguration rather than silently disabling enforcement
- SARIF upload to GitHub Code Scanning (toggle with `upload-sarif`)
- `fail-on-failure` to run advisory vs. blocking
- N/A (dry-dock) repos never trip `minimum-grade`; the summary shows the onboarding command instead

**Usage**
```yaml
- uses: ScienceIsNeato/slop-mop-action@v1
  with:
    command: scour
    minimum-grade: "B"
```

Requires `slopmop >= 2.5.0` (installed automatically from PyPI).

Validated end-to-end against published slopmop 2.5.0 by dogfooding on the slop-mop repository itself.
