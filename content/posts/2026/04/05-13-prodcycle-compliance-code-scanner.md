---
title: ProdCycle Compliance Code Scanner
date: 2026-04-05 13:41:36 +00:00
tags:
  - prodcycle
  - GitHub Actions
draft: false
repo: https://github.com/prodcycle/compliance-code-scanner
marketplace: https://github.com/marketplace/actions/prodcycle-compliance-code-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/prodcycle/compliance-code-scanner** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prodcycle-compliance-code-scanner) to find the latest changes.

## Action Summary

The **ProdCycle Compliance Code Scanner** GitHub Action automates the process of scanning pull request changes for compliance violations against SOC 2 and HIPAA frameworks by leveraging the ProdCycle API. It analyzes modified files in a pull request, identifies compliance issues, and provides actionable feedback through inline annotations, summary comments, and pass/fail checks based on configurable severity thresholds. This action streamlines compliance enforcement, ensuring code changes adhere to regulatory standards before merging.

## What's Changed

## ProdCycle Compliance Code Scanner v1.0.0

Scan pull request changes for compliance violations against **SOC 2** and **HIPAA** frameworks via the ProdCycle API.

### Quick start

```yaml
# .github/workflows/compliance.yml
name: Compliance Code Scanner
on:
  pull_request:

jobs:
  compliance:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      - uses: prodcycle/compliance-code-scanner@v1
        with:
          api-key: ${{ secrets.PRODCYCLE_API_KEY }}
```

### Features

- Scans changed files in PRs against SOC 2 and HIPAA compliance frameworks
- Inline PR annotations on each finding
- Summary comment with severity and framework breakdown
- Fails the check when findings match your severity threshold
- Configurable frameworks, severity thresholds, and file filters

### Requirements

- A [ProdCycle](https://prodcycle.com) account with an API key (`pc_...`)

See the [README](https://github.com/prodcycle/compliance-code-scanner#readme) for full documentation.
