---
title: Draugr Security Scan
date: 2026-07-17 07:04:20 +00:00
tags:
  - draugr-dev
  - GitHub Actions
draft: false
repo: https://github.com/draugr-dev/draugr
marketplace: https://github.com/marketplace/actions/draugr-security-scan
version: v0.20.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, Draugr, automates developer-first security scanning of applications. It uses a single descriptor file (`draugr.saga.yaml`) to declare software components and dependencies, enabling the orchestration of various security controls such as image scanning with Trivy, secret detection with Gitleaks, and source code analysis with Semgrep. Draugr normalizes results to SARIF format for easy integration into continuous integration pipelines, allowing developers to prioritize and gate scans based on criticality levels.
---


Version updated for **https://github.com/draugr-dev/draugr** to version **v0.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/draugr-security-scan) to find the latest changes.

## Action Summary

This GitHub Action, Draugr, automates developer-first security scanning of applications. It uses a single descriptor file (`draugr.saga.yaml`) to declare software components and dependencies, enabling the orchestration of various security controls such as image scanning with Trivy, secret detection with Gitleaks, and source code analysis with Semgrep. Draugr normalizes results to SARIF format for easy integration into continuous integration pipelines, allowing developers to prioritize and gate scans based on criticality levels.

## What's Changed


### Added

- **`draugr diff <base.sarif> <head.sarif>`** — compare two scans and classify every finding as
  **new / fixed / unchanged**, with a delta by severity and priority. The headline use case is a
  PR's security impact vs its base branch. Adds a **differential gate** (`--fail-on-new` /
  `--fail-on-new-priority`) that fails a build only for findings the change *introduces*, not the
  pre-existing backlog — so gating stays adoptable. Renders as `console`, `markdown` (a ready-made
  MR comment), or `json`. Findings are matched line-insensitively, so carried-over findings that
  merely moved lines aren't reported as fixed + new.
- **Two more `draugr scan --format` outputs.** `html` renders a self-contained, browser-viewable
  report (inline CSS, no assets) you can publish as a build artifact; `junit` emits JUnit XML so
  CI systems (GitLab, Jenkins, Azure DevOps…) surface findings in their native test-results panel
  — one `<testsuite>` per control, one failing `<testcase>` per finding. Both plug into the same
  Reporter interface as `console`/`markdown`/`json`/`sarif`.



