---
title: ChainAudit — Smart Contract Security Scanner
date: 2026-03-28 22:14:27 +00:00
tags:
  - aizen299
  - GitHub Actions
draft: false
repo: https://github.com/aizen299/smart-contract-auditor
marketplace: https://github.com/marketplace/actions/chainaudit-smart-contract-security-scanner
version: v1.1.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/aizen299/smart-contract-auditor** to version **v1.1.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/chainaudit-smart-contract-security-scanner) to find the latest changes.

## Action Summary

ChainAudit is a GitHub Action and CLI tool designed for automated security auditing of smart contracts written in Solidity or Solana's Rust. It identifies vulnerabilities, provides risk scores, and generates detailed real-time audit reports, incorporating ML-based exploitability predictions and blockchain-specific findings for Layer 2 solutions like Arbitrum and Optimism, as well as Solana. By automating the detection of critical security issues, it helps developers ensure the safety and reliability of their smart contracts, particularly in CI/CD pipelines.

## Release notes

## ChainAudit v1.1.4

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
