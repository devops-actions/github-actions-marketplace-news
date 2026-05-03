---
title: VertaaUX Audit
date: 2026-05-03 21:30:37 +00:00
tags:
  - VertaaUX
  - GitHub Actions
draft: false
repo: https://github.com/VertaaUX/audit-action
marketplace: https://github.com/marketplace/actions/vertaaux-audit
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/VertaaUX/audit-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vertaaux-audit) to find the latest changes.

## Action Summary

The **VertaaUX Audit Action** automates UX audits in CI/CD pipelines by analyzing deployed URLs for usability, clarity, and accessibility, providing scores, issue detection, and regression analysis. It helps maintain high UX standards by enforcing configurable thresholds, identifying critical issues, and detecting regressions against baselines. Additionally, it enhances pull request workflows by posting detailed comments with score trends, issue breakdowns, and links to full reports.

## What's Changed

Defense-in-depth fix for CWE-22 path traversal in the `baseline-file` input. The action now rejects absolute paths, `..` segments, and non-`.json` basenames, plus a belt-and-braces guard in `baseline.ts` ensures all fs writes stay inside the repository checkout.

**Severity:** Low (CWE-22 path traversal). GitHub CodeQL default `js/path-injection` rates this pattern Medium.

**No known exploitation.** Fix applies to consumers using `baseline-file:` with workflow-author-controlled paths.

**Action required:** bump to `@v1.0.1` (or pin a SHA) at your earliest convenience.

Reported externally; researcher credit pending consent.

