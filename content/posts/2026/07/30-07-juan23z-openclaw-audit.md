---
title: OpenClaw Audit
date: 2026-07-30 07:09:13 +00:00
tags:
  - juan23z
  - GitHub Actions
draft: false
repo: https://github.com/juan23z/openclaw-audit
marketplace: https://github.com/marketplace/actions/openclaw-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  OpenClaw Audit is a free, fast heuristic security scanner for Solidity projects that focuses on detecting common vulnerabilities. It automatically scans repositories and provides a professional report in seconds. The action is calibrated to minimize false positives by running on OpenZeppelin codebases (no findings), making it ideal for OpenZeppelin contracts. It can be used in CI pipelines with minimal setup, providing automated security reviews without the need for additional tools or human intervention.
---


Version updated for **https://github.com/juan23z/openclaw-audit** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openclaw-audit) to find the latest changes.

## Action Summary

OpenClaw Audit is a free, fast heuristic security scanner for Solidity projects that focuses on detecting common vulnerabilities. It automatically scans repositories and provides a professional report in seconds. The action is calibrated to minimize false positives by running on OpenZeppelin codebases (no findings), making it ideal for OpenZeppelin contracts. It can be used in CI pipelines with minimal setup, providing automated security reviews without the need for additional tools or human intervention.

## What's Changed

Free heuristic Solidity security scanner + GitHub Action. Scans on every push/PR — no API keys, no cost.

Calibrated to 0 findings across the entire OpenZeppelin library (247 files): signal, not noise. 12 detectors cover access control, cross-function & read-only reentrancy, oracle staleness, ERC-4626 rounding & first-depositor inflation, precision loss, unchecked low-level calls, tx.origin auth, donation attacks, fee-on-transfer, ERC compliance, and NatSpec.

The report lands in the job summary plus a downloadable artifact. Findings are heuristic candidates — verify before acting.

Usage: add `uses: juan23z/openclaw-audit@v1` to your workflow, or run `pipx run --spec git+https://github.com/juan23z/openclaw-audit openclaw-audit <repo>`.
