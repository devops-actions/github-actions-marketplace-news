---
title: Stellar Security Gate
date: 2026-07-30 06:47:18 +00:00
tags:
  - Stackgirl01
  - GitHub Actions
draft: false
repo: https://github.com/Stackgirl01/stellar-security-gate
marketplace: https://github.com/marketplace/actions/stellar-security-gate
version: v1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates security checks for Stellar/Soroban repositories, scanning for leaked secrets, vulnerable dependencies, and specific Soroban issues like missing authentication calls. It posts findings as a comment on pull requests and optionally fails the workflow based on severity settings. The check is heuristic and focuses on Rust and JS/TS packages, with limited support for Soroban-specific checks due to performance considerations.
---


Version updated for **https://github.com/Stackgirl01/stellar-security-gate** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/stellar-security-gate) to find the latest changes.

## Action Summary

This GitHub Action automates security checks for Stellar/Soroban repositories, scanning for leaked secrets, vulnerable dependencies, and specific Soroban issues like missing authentication calls. It posts findings as a comment on pull requests and optionally fails the workflow based on severity settings. The check is heuristic and focuses on Rust and JS/TS packages, with limited support for Soroban-specific checks due to performance considerations.

## What's Changed

- Initial release: secret scanning, dependency audit, Soroban auth/panic checks (066aabd)
