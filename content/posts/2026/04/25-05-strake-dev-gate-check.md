---
title: Strake Gate Check
date: 2026-04-25 05:54:36 +00:00
tags:
  - strake-dev
  - GitHub Actions
draft: false
repo: https://github.com/strake-dev/gate-check
marketplace: https://github.com/marketplace/actions/strake-gate-check
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/strake-dev/gate-check** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/strake-gate-check) to find the latest changes.

## Action Summary

The `strake-dev/gate-check` GitHub Action provides a pre-deployment safety mechanism by integrating the Strake gate engine into CI workflows. It automates the evaluation of pull requests, assigns a "go," "hold," or "critical" verdict, and optionally blocks merges based on the assessment. This action streamlines the deployment process by enforcing safety checks directly within the CI/CD pipeline and providing feedback through PR comments.

## What's Changed

  ## Signal 5 — Dependency Change Detection

  The Strake gate now flags suspicious dependency changes between builds. Catches the gap vulnerability scanners and SBOMs miss: the window between a malicious package publish and your next deploy.

  ### What's new

  - **GO / HOLD / CRITICAL** verdicts now factor in dependency changes detected via lockfile diff at the deploy boundary
  - **Auto-HOLD** on critical patterns: new dependency published <24h ago, version changed to one published <2h ago, lockfile deleted, registry URL swapped
  - **Warnings** on suspicious-but-not-critical patterns: major version bumps not tied to PR code changes, transitive-only changes, lockfile drift from CI
