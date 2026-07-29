---
title: quantakrypto Quantum Readiness Scan
date: 2026-07-29 15:03:45 +00:00
tags:
  - quantakrypto
  - GitHub Actions
draft: false
repo: https://github.com/quantakrypto/pqc-tools
marketplace: https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan
version: v0.7.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action, `@quantakrypto/action`, automates the scanning of quantum-vulnerable cryptography in codebases using `qScan`. It integrates with GitHub CI pipelines to fail builds on newly identified vulnerabilities, providing a comprehensive solution for ensuring post-quantum security.
---


Version updated for **https://github.com/quantakrypto/pqc-tools** to version **v0.7.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/quantakrypto-quantum-readiness-scan) to find the latest changes.

## Action Summary

This GitHub Action, `@quantakrypto/action`, automates the scanning of quantum-vulnerable cryptography in codebases using `qScan`. It integrates with GitHub CI pipelines to fail builds on newly identified vulnerabilities, providing a comprehensive solution for ensuring post-quantum security.

## What's Changed

Adds the policy-as-code compliance mandate gate: qscan --mandate cnsa-2.0|nist-ir-8547 (repeatable) evaluates findings against dated, named clauses (deadline-aware: deprecate warns after 2030, disallow fails after 2035; --lead-months / --fail-now for early enforcement), plus the same as a GitHub Action input. Deadlines derive from PQC_STANDARDS; X25519/X448 excluded (hybrid leg). All packages 0.6.0 -> 0.7.0.
