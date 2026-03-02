---
title: JIRA Validation
date: 2026-03-02 21:31:16 +00:00
tags:
  - lanzark
  - GitHub Actions
draft: false
repo: https://github.com/lanzark/jira-validation
marketplace: https://github.com/marketplace/actions/jira-validation
version: v1.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lanzark/jira-validation** to version **v1.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/jira-validation) to find the latest changes.

## Action Summary

The **JIRA Validation Action** is a GitHub Action designed to ensure that pull requests, branch names, and commit messages include a valid JIRA ticket reference (e.g., `DOKTUZ-123`). It automates the process of enforcing consistent ticket references across development workflows, helping teams maintain traceability and alignment with JIRA project management. Key features include customizable JIRA project keys, validation of PR titles, branch names, and commit messages, and detailed validation reports provided as Check Runs in the GitHub interface.

## Release notes

### v1.0.0 → v1.3.0

- **Check run reporting** — On validation failure, the action creates a GitHub Check Run with a markdown report, visible via the **Details** link on the PR checks tab. Requires `checks: write`; without it, a warning is logged and the inline report is not published.
- **Check run only on failure** — The check run is published only when validation fails; when all checks pass, no check run is created.
- **Check run details** — Check runs include a `detailsUrl` linking to the workflow run and `started_at`/`completed_at` for better visibility in the GitHub UI.

**Full Changelog**: https://github.com/lanzark/jira-validation/compare/v1.0.0...v1.3.0
