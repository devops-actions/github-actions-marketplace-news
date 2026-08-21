---
title: Cerbi Logging Governance Scanner
date: 2026-08-21 21:49:22 +00:00
tags:
  - Zeroshi
  - GitHub Actions
draft: false
repo: https://github.com/Zeroshi/cerbi-scanner-action
marketplace: https://github.com/marketplace/actions/cerbi-logging-governance-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  The GitHub Action `Zeroshi/cerbi-scanner-action` is a tool designed to statically analyze application logging calls for sensitive data exposure, unsafe payload logging, policy violations, and other logging-governance risks. It runs on the GitHub Actions runner, performs static analysis using the Cerbi Scanner NuGet package, and provides detailed reports that can be uploaded to GitHub code scanning. The action supports various logging patterns across C#, Go, Java, JavaScript/TypeScript, and Python languages and can enforce policy thresholds by failing builds based on severity levels. It also offers options for privacy mode, SARIF upload, and artifact generation, making it a versatile tool for improving logging governance in software development pipelines.
---


Version updated for **https://github.com/Zeroshi/cerbi-scanner-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cerbi-logging-governance-scanner) to find the latest changes.

## Action Summary

**Summary:**

The GitHub Action `Zeroshi/cerbi-scanner-action` is a tool designed to statically analyze application logging calls for sensitive data exposure, unsafe payload logging, policy violations, and other logging-governance risks. It runs on the GitHub Actions runner, performs static analysis using the Cerbi Scanner NuGet package, and provides detailed reports that can be uploaded to GitHub code scanning. The action supports various logging patterns across C#, Go, Java, JavaScript/TypeScript, and Python languages and can enforce policy thresholds by failing builds based on severity levels. It also offers options for privacy mode, SARIF upload, and artifact generation, making it a versatile tool for improving logging governance in software development pipelines.

## What's Changed

Cerbi Logging Governance Scanner v1.0.0

Find sensitive data, unsafe logging patterns, and logging policy violations before production.

Cerbi Scanner runs directly in GitHub Actions and analyzes application logging code before telemetry reaches production systems.

What this release includes
Scans C#, Go, Java, JavaScript/TypeScript, and Python repositories
Detects sensitive-data and logging-governance risks
Supports Cerbi policy-as-code
Generates JSON, SARIF, and Markdown reports
Integrates with GitHub Code Scanning through SARIF
Supports configurable CI failure thresholds
Runs on Linux, Windows, and macOS GitHub-hosted runners
Does not upload source code or findings to Cerbi by default
Disables source snippets by default for safer CI artifacts
Quick start
- uses: actions/checkout@v7


- name: Cerbi logging governance scan
  uses: Zeroshi/cerbi-scanner-action@v1
Enforce logging policy
- name: Cerbi logging governance scan
  uses: Zeroshi/cerbi-scanner-action@v1
  with:
    policy: cerbi-policy.yml
    fail-on: high
GitHub Code Scanning
permissions:
  contents: read
  security-events: write


steps:
  - uses: actions/checkout@v7


  - uses: Zeroshi/cerbi-scanner-action@v1
    with:
      upload-sarif: 'true'

Cerbi Scanner can be used independently. CerbiShield is available for organizations that need centralized logging policy, governance, evidence, and visibility across repositories and workloads.

Documentation: https://www.cerbi.io/docs/scanner/quickstart
