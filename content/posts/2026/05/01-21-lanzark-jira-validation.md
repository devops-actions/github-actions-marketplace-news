---
title: JIRA Validation
date: 2026-05-01 21:50:03 +00:00
tags:
  - lanzark
  - GitHub Actions
draft: false
repo: https://github.com/lanzark/jira-validation
marketplace: https://github.com/marketplace/actions/jira-validation
version: v1.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lanzark/jira-validation** to version **v1.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jira-validation) to find the latest changes.

## Action Summary

The JIRA Validation Action is a GitHub Action designed to ensure pull request titles, branch names, and commit messages include valid JIRA ticket references. It automates the verification process, helping teams enforce consistent linkage between code changes and project management tasks. Key capabilities include customizable checks for JIRA project keys, detailed validation reports, and integration with GitHub's Checks API for streamlined workflow visibility.

## What's Changed

### v1.3.0 → v1.4.0

- **Fix: report no longer appears under unrelated workflows** — Removed the `checks.create` call that caused a "report" check run to be attributed to whichever workflow invoked the action (e.g. a "Test - Kafka" job) instead of JIRA Validation itself. The full validation report continues to be available via the job summary on the workflow run page.

**Full Changelog**: https://github.com/lanzark/jira-validation/compare/v1.3.0...v1.4.0
