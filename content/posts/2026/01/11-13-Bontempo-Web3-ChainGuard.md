---
title: ChainGuard Security Scan
date: 2026-01-11 13:20:34 +00:00
tags:
  - Bontempo-Web3
  - GitHub Actions
draft: false
repo: https://github.com/Bontempo-Web3/ChainGuard
marketplace: https://github.com/marketplace/actions/chainguard-security-scan
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/Bontempo-Web3/ChainGuard** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chainguard-security-scan) to find the latest changes.

## Action Summary

ChainGuard Scanner is a GitHub Action and tool for automated security analysis of Solidity smart contracts. It integrates multiple industry-standard tools (Slither, Aderyn, Echidna) and an AI-powered audit (Claude Mini-Audit) to detect vulnerabilities, perform fuzz testing, and provide architectural analysis. This action streamlines the security assessment process, categorizes vulnerabilities by severity, and enables continuous security checks in CI/CD pipelines, offering developers a cost-effective and efficient way to ensure smart contract reliability.

## Release notes

# ChainGuard v1.0.0 - Smart Contract Security Scanner

Automated security scanning for Solidity smart contracts with 4 powerful tools.

This is the **Scanner component** - the first pillar of the ChainGuard platform. The complete ChainGuard ecosystem consists of three pillars:

1. **Scanner** (this release) - Automated vulnerability detection
2. **Deployment** (coming soon) - Secure contract deployment pipeline
3. **Monitor** (coming soon) - Real-time contract monitoring

## Features
- **Slither** - 165+ static analysis detectors
- **Aderyn** - Rust-based security analysis  
- **Echidna** - Property-based fuzzing
- **Claude Mini-Audit** - AI-powered vulnerability detection

## Quick Start

Basic usage:
```yaml
name: Security Scan

on:
  pull_request:
    paths:
      - '**.sol'

jobs:
  security:
    runs-on: ubuntu-latest
    name: ChainGuard Security Scan
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
      
      - name: Run security scan
        uses: Bontempo-Web3/ChainGuard@v1
```

Advanced usage with custom settings:
```yaml
name: Advanced Security Scan

on:
  pull_request:
    paths:
      - '**.sol'
  push:
    branches:
      - main
      - develop

jobs:
  security-scan:
    runs-on: ubuntu-latest
    name: Security Analysis
    
    steps:
      - name: Checkout code
        uses: actions/checkout@v4
      
      - name: Run ChainGuard scan
        id: scan
        uses: Bontempo-Web3/ChainGuard@v1
        with:
          severity: 'high'
          tools: 'both'
          fail-on-detection: 'true'
          solidity-version: '0.8.20'
          target: './contracts'
        continue-on-error: true
      
      - name: Display results
        if: always()
        run: |
          echo "Critical: ${{ steps.scan.outputs.critical-count }}"
          echo "High: ${{ steps.scan.outputs.high-count }}"
          echo "Medium: ${{ steps.scan.outputs.medium-count }}"
          echo "Low: ${{ steps.scan.outputs.low-count }}"
          echo "Total: ${{ steps.scan.outputs.total-count }}"
          echo "Result: ${{ steps.scan.outputs.scan-result }}"
      
      - name: Fail if vulnerabilities found
        if: steps.scan.outputs.scan-result == 'failed'
        run: |
          echo "Security vulnerabilities detected!"
          exit 1
```

## Test Results
Tested on 10 vulnerable example contracts:
- **Slither**: 207 vulnerabilities detected
- **Aderyn**: 17 vulnerabilities detected
- **Echidna**: Property-based fuzzing ready
- **Claude**: 11 AI-detected issues

## Inputs

| Input | Default | Description |
|-------|---------|-------------|
| `severity` | `high` | Minimum severity to fail (critical, high, medium, low) |
| `tools` | `both` | Tools to run (slither, aderyn, both) |
| `claude-audit` | `false` | Enable Claude Mini-Audit |
| `anthropic-api-key` | - | API key for Claude (required if claude-audit is true) |
| `fail-on-detection` | `true` | Fail workflow if vulnerabilities found |
| `solidity-version` | `0.8.20` | Solidity compiler version |
| `target` | `.` | Target directory to scan |

## Outputs

| Output | Description |
|--------|-------------|
| `critical-count` | Number of critical vulnerabilities |
| `high-count` | Number of high severity vulnerabilities |
| `medium-count` | Number of medium severity vulnerabilities |
| `low-count` | Number of low severity vulnerabilities |
| `total-count` | Total vulnerabilities found |
| `scan-result` | Overall result (passed/failed) |

## Documentation
See [ACTION_README.md](https://github.com/Bontempo-Web3/ChainGuard/blob/main/ACTION_README.md) for full documentation.

## Requirements
- Solidity smart contracts
- GitHub Actions workflow
- Optional: Anthropic API key for Claude Mini-Audit

## What's Included
- GitHub Action for CI/CD integration
- Scanner service with FastAPI
- 10 example vulnerable contracts
- Comprehensive documentation
- Docker-based deployment

## Roadmap
- **v1.0.0** (current): Scanner - Vulnerability detection
- **v2.0.0** (planned): Deployment - Secure deployment pipeline
- **v3.0.0** (planned): Monitor - Real-time monitoring

