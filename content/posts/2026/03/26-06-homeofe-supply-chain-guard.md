---
title: Supply Chain Guard
date: 2026-03-26 06:14:12 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v3.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v3.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The `supply-chain-guard` GitHub Action is an open-source security scanner designed to detect and mitigate software supply-chain threats across npm, PyPI, VS Code extensions, GitHub Actions workflows, and Solana environments. It automates the identification of malicious indicators, such as obfuscated code, suspicious scripts, typosquatting, and command-and-control patterns, offering a targeted approach to catching threats that traditional scanners may overlook. This tool enhances security by enabling developers to proactively safeguard their projects against evolving supply-chain attacks.

## Release notes

## v3.0.0 (2026-03-26)

### New Features
- PyPI Scanner: detects malicious setup.py install hooks
- GitHub Actions Scanner: detects CI/CD pipeline attacks
- SARIF 2.1.0 output for GitHub Code Scanning (--format sarif)
- Solana C2 wallet watchlist with webhook alerts (watchlist commands)
- Improved README with changelog and quickstart

### Breaking Changes
None. All new features are additive.
