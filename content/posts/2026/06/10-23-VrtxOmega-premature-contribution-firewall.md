---
title: Premature Contribution Firewall dry-run
date: 2026-06-10 23:11:11 +00:00
tags:
  - VrtxOmega
  - GitHub Actions
draft: false
repo: https://github.com/VrtxOmega/premature-contribution-firewall
marketplace: https://github.com/marketplace/actions/premature-contribution-firewall-dry-run
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/VrtxOmega/premature-contribution-firewall** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/premature-contribution-firewall-dry-run) to find the latest changes.

## What's Changed

## What's new

- **npm package**: `npx premature-contribution-firewall` — zero-install CLI for evaluate, queue, setup, and preflight
- **Contributor preflight**: `pcf preflight <payload.json|patch>` checks review readiness *before* you submit. Exit 0 = ready, 1 = not ready with a fix-first checklist. Patch/mbox auto-detected (kernel-grade profile)
- **PR Gate Action mode**: on `pull_request` events the Action now evaluates the triggering PR, writes the verdict to the job step summary, and exposes `status`/`score`/`ready` outputs. Optional `fail-on: never|low-review-value|needs-repair` blocking — defaults to report-only
- Still dry-run by default: no comments, labels, or GitHub writes

## Verification

69/69 benchmark, 11/11 adversarial red test, full test suite green.

PCF checks review readiness, not correctness or authorship.
