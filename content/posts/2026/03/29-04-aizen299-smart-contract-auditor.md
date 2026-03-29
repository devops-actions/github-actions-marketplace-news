---
title: ChainAudit — Smart Contract Security Scanner
date: 2026-03-29 04:39:48 +00:00
tags:
  - aizen299
  - GitHub Actions
draft: false
repo: https://github.com/aizen299/smart-contract-auditor
marketplace: https://github.com/marketplace/actions/chainaudit-smart-contract-security-scanner
version: v1.1.7
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aizen299/smart-contract-auditor** to version **v1.1.7**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chainaudit-smart-contract-security-scanner) to find the latest changes.

## Action Summary

ChainAudit is a GitHub Action and CLI tool designed for automated security scanning of smart contracts written in Solidity and Solana's Rust. It provides detailed audit reports with risk scores, machine learning-driven exploitability predictions, and detection of vulnerabilities specific to Layer 2 solutions (e.g., Arbitrum, Optimism) and Solana. By integrating into CI pipelines, it helps developers identify critical vulnerabilities and block deployments when severe risks are detected, streamlining the security audit process for blockchain applications.

## What's Changed

## ChainAudit v1.1.7

Production-grade smart contract security scanner for EVM and Solana. Analyze Solidity contracts, Solana Rust programs, or mixed zip archives with real-time risk scoring, ML-based exploitability prediction, and chain-aware vulnerability detection.

### Features
- Static analysis powered by Slither (EVM)
- Solana/Rust scanning via cargo-audit + pattern analysis
- ML exploitability prediction (Random Forest, ~88% accuracy)
- CVSS-inspired risk scoring system
- L2-aware detection (Arbitrum, Optimism auto-detection)
- Multi-contract and mixed zip scanning (.sol + .rs)
- CLI + GitHub Action integration
- JSON output support for pipelines
- Exit code `1` on CRITICAL findings (CI/CD enforcement)

### GitHub Action
```yaml
- uses: aizen299/smart-contract-auditor@v1
  with:
    target: contracts/
    fail-on-critical: true
```
### What it detects
EVM vulnerabilities
Reentrancy, delegatecall abuse, unchecked token transfers, tx.origin authentication, weak randomness, access control flaws, timestamp dependence, unsafe low-level calls, and more.

L2-specific vulnerabilities (Arbitrum / Optimism)
Address aliasing, sequencer dependence, cross-chain replay attacks, bridge-related issues, storage collisions, and L2-specific gas/timestamp assumptions.

Solana / Rust vulnerabilities
Missing signer/owner checks, arbitrary CPI, account confusion, unsafe Rust patterns, insecure randomness, PDA validation issues, and dependency vulnerabilities via cargo-audit.

## What's new in v1.1.7
- Fixed ML predictions for EVM findings (impact/confidence field normalization)
- ML predictions now work for Solana/Rust findings via check mapping
- Bundled ML model in PyPI package — no manual setup needed
- Fixed directory scanning to scan all .rs files individually
- Fixed mixed directory support (.sol + .rs scanned together)
- Removed debug print statements from CLI
