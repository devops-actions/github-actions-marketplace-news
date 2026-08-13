---
title: CI Health Audit
date: 2026-08-13 22:18:43 +00:00
tags:
  - sdxiaomage
  - GitHub Actions
draft: false
repo: https://github.com/sdxiaomage/ci-health-audit
marketplace: https://github.com/marketplace/actions/ci-health-audit
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Purpose and Functionality:** The CI Health Audit GitHub Action performs a heuristic static audit of GitHub Actions workflows to identify common security and reliability risks. It checks for issues like un-pinned third-party actions, self-hosted runners, excessive permissions, dangerous event interpolation, insecure `curl`/`wget` usage, and mutable container tags.
  
  **Problems Solved:** The action helps prevent potential vulnerabilities in CI processes by automating a manual static code analysis of workflows. It ensures that security best practices are followed and identifies common pitfalls early on.
  
  **Key Capabilities:** - Scans workflow YAML files locally. - Publishes a summary visible in the GitHub Job Summary page. - Allows setting a fail-on threshold for severity levels. - Provides focused remediation suggestions for identified issues. - Supports Markdown or JSON output formats.
---


Version updated for **https://github.com/sdxiaomage/ci-health-audit** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ci-health-audit) to find the latest changes.

## Action Summary

**Purpose and Functionality:** The CI Health Audit GitHub Action performs a heuristic static audit of GitHub Actions workflows to identify common security and reliability risks. It checks for issues like un-pinned third-party actions, self-hosted runners, excessive permissions, dangerous event interpolation, insecure `curl`/`wget` usage, and mutable container tags.

**Problems Solved:** The action helps prevent potential vulnerabilities in CI processes by automating a manual static code analysis of workflows. It ensures that security best practices are followed and identifies common pitfalls early on.

**Key Capabilities:** - Scans workflow YAML files locally. - Publishes a summary visible in the GitHub Job Summary page. - Allows setting a fail-on threshold for severity levels. - Provides focused remediation suggestions for identified issues. - Supports Markdown or JSON output formats.

## What's Changed

Security and visibility release: Action inputs are passed through environment variables instead of inline shell interpolation; audit targets are confined to GITHUB_WORKSPACE; Markdown reports now appear in the GitHub Job Summary; findings include one optional free-diagnosis link; and wrapper tests cover safe, failing, missing, and hostile path inputs across the three hosted runner operating systems.
