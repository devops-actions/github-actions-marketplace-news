---
title: Strake Gate Check
date: 2026-04-24 05:55:59 +00:00
tags:
  - strake-dev
  - GitHub Actions
draft: false
repo: https://github.com/strake-dev/gate-check
marketplace: https://github.com/marketplace/actions/strake-gate-check
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/strake-dev/gate-check** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/strake-gate-check) to find the latest changes.

## Action Summary

The `strake-dev/gate-check` GitHub Action provides a pre-deployment safety check by integrating with the Strake gate engine. It evaluates pull requests for deployment readiness, posts a verdict (e.g., `go`, `hold`, or `critical`) as a PR comment, and optionally blocks merges based on the severity of the result. This action automates deployment risk assessment, helping teams ensure safe and controlled CI/CD workflows.

## What's Changed

Pre-deploy safety check. Posts a GO/HOLD/CRITICAL verdict as a PR comment and blocks unsafe merges.
