---
title: Lightning Flow Scan
date: 2025-12-26 21:07:28 +00:00
tags:
  - Flow-Scanner
  - GitHub Actions
draft: false
repo: https://github.com/Flow-Scanner/lightning-flow-scanner
marketplace: https://github.com/marketplace/actions/lightning-flow-scan
version: action-v3.0.0
dependentsNumber: "0"
---


Version updated for **https://github.com/Flow-Scanner/lightning-flow-scanner** to version **action-v3.0.0**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lightning-flow-scan) to find the latest changes.

## Action Summary

The Lightning Flow Scanner is a GitHub Action designed to analyze and optimize Salesforce Flows by identifying potential issues such as unsafe contexts, inefficient queries, hardcoded IDs, and other problematic patterns. It automates the detection of common errors, enforces best practices, and provides actionable insights to improve Flow performance and maintainability. This tool is particularly useful for streamlining Salesforce development and ensuring adherence to governance and optimization standards.

## Release notes

## Release Notes

This release updates and expands the available inputs for the Lightning Flow Scan GitHub Action.

#### Changes
- **`outputMode` has been removed**
  - The action now always generates SARIF output.
- **`threshold` now has a default**
  - Default severity threshold is `warning`.
  - Set `threshold: never` to never fail the action based on findings.

#### New Flags
- **`config`** — Provide a path to a configuration file (JSON or YAML).
- **`branch`** — Specify which branch to scan for scheduled or manual runs.
- **`betaMode`** — Enable experimental rules.
- **`sarif-only`** — Fail the action if *any* violations are found, regardless of severity.

#### Behavior Notes
- All inputs are optional.
- SARIF output is always generated.
