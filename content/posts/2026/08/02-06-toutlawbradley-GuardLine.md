---
title: GuardLine Security Scan
date: 2026-08-02 06:07:19 +00:00
tags:
  - toutlawbradley
  - GitHub Actions
draft: false
repo: https://github.com/toutlawbradley/GuardLine
marketplace: https://github.com/marketplace/actions/guardline-security-scan
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  GuardLine is an open-source GitHub Action that automates security scans on pull requests. It scans a codebase for common security issues, including secrets detection, dependency vulnerabilities, configuration risks, code patterns, and permission issues. The action posts findings as comments in the PR and also publishes them as SARIF files for integration with GitHub's Security tab. Critical findings can block the merge until they are resolved.
---


Version updated for **https://github.com/toutlawbradley/GuardLine** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/guardline-security-scan) to find the latest changes.

## Action Summary

GuardLine is an open-source GitHub Action that automates security scans on pull requests. It scans a codebase for common security issues, including secrets detection, dependency vulnerabilities, configuration risks, code patterns, and permission issues. The action posts findings as comments in the PR and also publishes them as SARIF files for integration with GitHub's Security tab. Critical findings can block the merge until they are resolved.

## What's Changed

- Narrow DependenciesScanner to requirements.txt only, close last open item (4c5a20b)
- Add Validation section, fix scanners: config caveat, formatting cleanup (ca5b639)
- Merge branch 'main' of https://github.com/toutlawbradley/GuardLine (a22014f)
- Fix OSV error handling and ConfigScanner file_pattern bug (8f2cb51)
- Merge pull request #5 from toutlawbradley/feature/self-scan-dogfooding (8821a37)
- Merge pull request #4 from toutlawbradley/tests/orchestrator-and-reporter-coverage (4b3cd40)
- Add tests for Orchestrator and Reporter; fix SecretsScanner regression (60d3d8f)
- Add tests for Orchestrator.run() (31b9207)
- Document fetch-depth fix and self-scan dogfooding (97fe561)
- Added fetch-depth:0 (4efbd40)
