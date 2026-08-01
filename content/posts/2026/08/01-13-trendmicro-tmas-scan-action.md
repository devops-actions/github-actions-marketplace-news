---
title: tmas-scan
date: 2026-08-01 13:53:07 +00:00
tags:
  - trendmicro
  - GitHub Actions
draft: false
repo: https://github.com/trendmicro/tmas-scan-action
marketplace: https://github.com/marketplace/actions/tmas-scan
version: v3.3.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  This GitHub Action installs and uses the TMAS CLI tool to scan artifacts in your workspace for open-source vulnerabilities, malware, and secrets. It provides detailed scan findings in logs and outputs a summary report for review. The action supports various artifact types and requires TrendAI Vision One™ credentials and an API key to function.
---


Version updated for **https://github.com/trendmicro/tmas-scan-action** to version **v3.3.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tmas-scan) to find the latest changes.

## Action Summary

This GitHub Action installs and uses the TMAS CLI tool to scan artifacts in your workspace for open-source vulnerabilities, malware, and secrets. It provides detailed scan findings in logs and outputs a summary report for review. The action supports various artifact types and requires TrendAI Vision One™ credentials and an API key to function.

## What's Changed

The `tmas-scan-action` now writes the TMAS scan results summary to the GitHub Action job summary. This works for every run, including scheduled or final-stage build runs that are not associated with a pull request, so results no longer have to be retrieved from the JSON logs


