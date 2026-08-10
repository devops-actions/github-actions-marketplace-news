---
title: Odin Scan - Smart Contract Security
date: 2026-08-10 06:02:03 +00:00
tags:
  - Odin-Scan
  - GitHub Actions
draft: false
repo: https://github.com/Odin-Scan/odin-scan-action
marketplace: https://github.com/marketplace/actions/odin-scan-smart-contract-security
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The Odin Scan GitHub Action automates smart contract security analysis for CosmWasm, Solana, and EVM projects. It integrates with GitHub Code Scanning to provide SARIF files for native security alerts, automatically detects platforms, posts PR comments, and includes inline annotations on changed files. The action can be triggered on pull requests and supports configurable thresholds for severity levels and options like commenting and artifact uploads.
---


Version updated for **https://github.com/Odin-Scan/odin-scan-action** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/odin-scan-smart-contract-security) to find the latest changes.

## Action Summary

The Odin Scan GitHub Action automates smart contract security analysis for CosmWasm, Solana, and EVM projects. It integrates with GitHub Code Scanning to provide SARIF files for native security alerts, automatically detects platforms, posts PR comments, and includes inline annotations on changed files. The action can be triggered on pull requests and supports configurable thresholds for severity levels and options like commenting and artifact uploads.

## What's Changed

🎉 Initial Release                                                                                   
                                                                                                       
  AI-powered smart contract security analysis, now integrated directly into your GitHub workflow.      
                                                                                                       
  ✨ Features                                                                   
                                                                                                       
  Multi-Platform Support                                                                               

  - CosmWasm - Rust-based smart contracts for Cosmos SDK
  - Solana (SVM) - Anchor and native Solana programs
  - EVM - Solidity and Vyper contracts
  - Auto-detection - Automatically identifies platform from your repo

  GitHub Integration

  - Code Scanning - SARIF upload for native security alerts in the Security tab
  - PR Comments - Severity summary and top findings posted directly on pull requests
  - Inline Annotations - Critical/high findings appear as errors, medium/low as warnings on diffs
  - Artifact Upload - Full JSON report available as workflow artifact

  Customization

  - Severity Thresholds - Fail builds at critical, high, medium, or low severity
  - Platform Override - Force specific platform detection when auto-detect isn't enough
  - Timeout Control - Configurable analysis timeout (default: 30 minutes)
  - Flexible Triggers - Run on push, PR, schedule, or manual dispatch

  🚀 Quick Start

```yaml
name: Security Scan
'on':
  pull_request:
    branches:
      - main
jobs:
  scan:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      security-events: write
      pull-requests: write
    steps:
      - uses: actions/checkout@v4
      - uses: odin-scan/odin-scan-action@v1
        with:
          api-key: '${{ secrets.ODIN_SCAN_API_KEY }}'
```


  📋 Requirements

  - Odin Scan Pro subscription - Required for API access
  - API Key - Generate at https://odinscan.ai/dashboard/settings
  - GitHub Permissions - contents: read, security-events: write (for SARIF), pull-requests: write (for
  comments)

  🔧 Configuration

  All Inputs

| ┌────────────────────┬─────────────────────┬──────────────────────────────────────────────┐ |
| │       Input        │       Default       │                 Description                  │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ api-key            │ Required            │ Your Odin Scan API key (odin_sk_*)           │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ platform           │ auto                │ Target platform: auto, cosmwasm, solana, evm │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ severity-threshold │ high                │ Fail at: critical, high, medium, low, none   │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ fail-on-findings   │ true                │ Whether to fail workflow on findings         │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ comment-on-pr      │ true                │ Post summary comment on PRs                  │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ upload-sarif       │ true                │ Upload SARIF to Code Scanning                │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ upload-artifact    │ true                │ Upload full report as artifact               │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ timeout            │ 1800                │ Max analysis wait time (seconds)             │ |
| ├────────────────────┼─────────────────────┼──────────────────────────────────────────────┤ |
| │ github-token       │ ${{ github.token }} │ Token for PR comments and SARIF              │ |
| └────────────────────┴─────────────────────┴──────────────────────────────────────────────┘ |

  All Outputs

  - analysis-id - Unique analysis identifier
  - status - Analysis status (completed, failed)
  - total-findings - Total number of findings
  - critical-count, high-count, medium-count, low-count - Counts by severity
  - report-url - Link to full report on Odin Scan
  - sarif-file - Path to generated SARIF file

  📝 Example Workflows

  Basic (Auto-detect)

```yaml
  - uses: odin-scan/odin-scan-action@v1
    with:
      api-key: ${{ secrets.ODIN_SCAN_API_KEY }}
```

  EVM with Medium Threshold

```yaml
  - uses: odin-scan/odin-scan-action@v1
    with:
      api-key: ${{ secrets.ODIN_SCAN_API_KEY }}
      platform: evm
      severity-threshold: medium
```

  Only on Solidity Changes

```yaml
on:
  pull_request:
    paths:
      - '**.sol'
      - foundry.toml
```

  🔒 Security & Privacy

  - All API communication over HTTPS (TLS 1.2+)
  - API keys automatically masked in logs
  - No data stored by the action (stateless)
  - See https://github.com/Odin-Scan/odin-scan-action/blob/main/PRIVACY.md for details

  📖 Documentation

  - Action README - https://github.com/Odin-Scan/odin-scan-action
  - Odin Scan Docs - https://docs.odinscan.ai
  - Get API Key - https://app.odinscan.ai/settings

  🐛 Known Limitations

  - Private repos - Requires github-token with repo access
  - Large repos - May need increased timeout for complex codebases
  - Code Scanning - Requires GitHub Advanced Security on private repos

  🙏 Support

  - Issues - https://github.com/Odin-Scan/odin-scan-action/issues
  - Email - support@odinscan.ai
  - Docs - https://docs.odinscan.ai

  ---
  Full Changelog: https://github.com/Odin-Scan/odin-scan-action/commits/v1
