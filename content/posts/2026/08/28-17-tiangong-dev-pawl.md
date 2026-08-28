---
title: setup-pawl
date: 2026-08-28 17:44:53 +00:00
tags:
  - tiangong-dev
  - GitHub Actions
draft: false
repo: https://github.com/tiangong-dev/pawl
marketplace: https://github.com/marketplace/actions/setup-pawl
version: v0.8.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The PAWL (Prowl) GitHub Action is designed to act as a quality gate by comparing metric measurements across codebase commits. It helps identify regressions in metrics such as coverage, test passes, lint findings, and file lengths, ensuring that changes do not make the repo worse than it already is. The action records the current baseline of each metric and compares them against future changes to ensure no metric regresses. This ensures that improvements are tracked and only genuine changes pass through CI, preventing the introduction of new mess while maintaining existing quality standards.
---


Version updated for **https://github.com/tiangong-dev/pawl** to version **v0.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-pawl) to find the latest changes.

## Action Summary

The PAWL (Prowl) GitHub Action is designed to act as a quality gate by comparing metric measurements across codebase commits. It helps identify regressions in metrics such as coverage, test passes, lint findings, and file lengths, ensuring that changes do not make the repo worse than it already is. The action records the current baseline of each metric and compares them against future changes to ensure no metric regresses. This ensures that improvements are tracked and only genuine changes pass through CI, preventing the introduction of new mess while maintaining existing quality standards.

## What's Changed

## Changes since `v0.8.0` — `npm i -D @pawl-tools/cli@0.8.1`

Prebuilt binaries are attached below.

- chore: prepare v0.8.1 release (#44) (db848d2)
- fix: run codeql on pull requests (#43) (77316e1)
- chore: address repository security findings (#37) (8d54856)
- feat: harden report freshness and baseline guards (#36) (9f69071)
- docs: rewrite the doc set in pawl's own voice (#35) (9ce5f96)
- docs: refresh OpenSSF Scorecard badge (041e8ba)
- ci: publish OpenSSF Scorecard results (0a9f780)

