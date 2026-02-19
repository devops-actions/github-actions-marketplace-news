---
title: Swynx Dead Code Detection
date: 2026-02-19 21:49:31 +00:00
tags:
  - swynx-io
  - GitHub Actions
draft: false
repo: https://github.com/swynx-io/swynx-action
marketplace: https://github.com/marketplace/actions/swynx-dead-code-detection
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/swynx-io/swynx-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/swynx-dead-code-detection) to find the latest changes.

## Action Summary

Swynx is a GitHub Action that scans pull requests for dead code vulnerabilities (CWE-561) across 35 programming languages, identifying unreachable code and potential security risks such as injection or XSS patterns. It automates the detection of new dead code, provides actionable feedback via PR comments with detailed metrics, and can block merges if new dead code is introduced, helping teams maintain secure and clean codebases.

## Release notes

## Dead code detection for pull requests

Scans 35 programming languages. Posts PR comments, blocks merge on new dead code, supports SARIF output for Code Scanning.

### Quick start

```yaml
- uses: swynx-io/swynx-action@v1
  with:
    fail-on-new-dead-code: true
```
