---
title: OQS Scanner
date: 2026-04-03 06:19:56 +00:00
tags:
  - jimbo111
  - GitHub Actions
draft: false
repo: https://github.com/jimbo111/open-quantum-secure
marketplace: https://github.com/marketplace/actions/oqs-scanner
version: v2.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/jimbo111/open-quantum-secure** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/oqs-scanner) to find the latest changes.

## Action Summary

The Open Quantum Secure (OQS Scanner) is a post-quantum cryptography analysis tool that scans codebases, configuration files, and binary artifacts to identify cryptographic algorithm usage vulnerable to quantum computing attacks. It automates the process of assessing quantum readiness by generating a Quantum Readiness Score, producing CycloneDX SBOMs, and checking compliance with CNSA 2.0 standards, all while running fully offline without requiring a backend. The tool supports extensible scanning capabilities via built-in and optional engines for comprehensive cryptography evaluations across diverse file formats and programming languages.

## What's Changed

## What's included

  Post-quantum cryptography scanner with 10 detection engines covering 14+
  languages.

  ### Core
  - 12-stage scan pipeline with cross-engine deduplication and corroboration
  - Quantum Readiness Score (QRS 0-100) with HNDL classification
  (immediate/deferred)
  - CycloneDX 1.7 CBOM output with 31 custom properties
  - 5 output formats: JSON, table, SARIF, CBOM, HTML

  ### Compliance
  - CNSA 2.0 compliance checking (`--compliance cnsa-2.0`)
  - Formal compliance report generation (`compliance-report` command)
  - CBOM signing with Ed25519 (`--sign-cbom`)
  - Migration effort estimates (simple/moderate/complex) per finding
  - Hybrid transition recommendations (X25519+ML-KEM-768, ECDSA+ML-DSA-65)

  ### CI/CD
  - GitHub Actions integration with PR comments and SARIF upload
  - GitLab CI template with MR notes and Security Dashboard
  - Three CI modes: blocking, advisory, silent
  - Generic HTTPS webhook for ITSM integration

  ### Dashboard
  - Local web dashboard (`oqs-scanner dashboard`)
  - QRS trend tracking with per-finding drill-down
  - No backend required — fully offline

  ### Standards
  NIST CNSA 2.0, FIPS 203/204/205, HQC, KCMVP, K-PQC Round 4, CycloneDX 1.7,
  SARIF 2.1.0
