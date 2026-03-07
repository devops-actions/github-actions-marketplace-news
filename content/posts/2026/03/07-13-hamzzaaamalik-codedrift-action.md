---
title: CodeDrift - AI Code Security Scanner
date: 2026-03-07 13:22:36 +00:00
tags:
  - hamzzaaamalik
  - GitHub Actions
draft: false
repo: https://github.com/hamzzaaamalik/codedrift-action
marketplace: https://github.com/marketplace/actions/codedrift-ai-code-security-scanner
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hamzzaaamalik/codedrift-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codedrift-ai-code-security-scanner) to find the latest changes.

## Action Summary

The CodeDrift GitHub Action is designed to identify and address security vulnerabilities introduced by AI coding assistants. It automates security checks on code changes by providing inline pull request annotations, detailed job summaries, and optional SARIF uploads for GitHub Code Scanning. Key capabilities include customizable confidence thresholds, fail controls, and support for scanning specific directories or excluding test files.

## Release notes

## CodeDrift GitHub Action

Catch security bugs that AI coding assistants silently ship — directly in your PR workflow.

### Features

- **Inline PR annotations** — Issues appear on the exact lines in your PR diff
- **Job summary** — Severity breakdown table in the Actions Summary tab
- **SARIF support** — Optional upload to GitHub Code Scanning
- **Configurable** — Control confidence threshold, fail behavior, test file exclusion

### Usage

```yaml
- uses: hamzzaaamalik/codedrift-action@v1
  with:
    confidence-threshold: 'high'

