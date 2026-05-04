---
title: VertaaUX Audit
date: 2026-05-04 06:26:33 +00:00
tags:
  - VertaaUX
  - GitHub Actions
draft: false
repo: https://github.com/VertaaUX/audit-action
marketplace: https://github.com/marketplace/actions/vertaaux-audit
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/VertaaUX/audit-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vertaaux-audit) to find the latest changes.

## Action Summary

The **VertaaUX Audit Action** automates the process of running usability, clarity, and accessibility audits on deployed URLs directly within a CI/CD pipeline. It identifies issues with severity levels, enforces configurable score thresholds, and detects regressions by comparing results to a baseline. Additionally, it provides detailed reports, posts actionable feedback as pull request comments, and tracks score trends to streamline UX review workflows.

## What's Changed

Defense-in-depth fix for CWE-532 (information exposure through log files). The action now registers both `api-key` and `github-token` inputs with `core.setSecret()` so the runner masks them in workflow logs.

**Severity:** Low (CWE-532, defense in depth).

**No known exploitation.** GitHub already auto-masks values passed via `${{ secrets.X }}`, so under normal usage the runner's primary defense was never broken. This fix covers the edge case where a workflow author passes a literal token or pulls one from a non-secret source.

**Action required:** bump to `@v1.0.3` (or pin a SHA) at your earliest convenience.

Reported externally; researcher credit pending consent.

