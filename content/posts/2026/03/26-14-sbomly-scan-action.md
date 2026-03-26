---
title: SBOMly Scan
date: 2026-03-26 14:01:15 +00:00
tags:
  - sbomly
  - GitHub Actions
draft: false
repo: https://github.com/sbomly/scan-action
marketplace: https://github.com/marketplace/actions/sbomly-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sbomly/scan-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomly-scan) to find the latest changes.

## Action Summary

The SBOMly Scan Action automates the generation of a Software Bill of Materials (SBOM), performs comprehensive vulnerability scanning using dual scanners, and uploads results to GitHub Code Scanning in a single step. It helps developers identify and address security risks, including exploitable vulnerabilities, end-of-life components, and compliance issues, while providing configurable severity thresholds and detailed scan outputs. Key capabilities include SBOM generation, regulatory compliance scoring, and integration with GitHub's security workflows.

## Release notes

## SBOMly Scan Action v1.0.0

  Automated SBOM generation, vulnerability scanning, and SARIF upload to GitHub Code Scanning -- in one step.

  ### Features
  - Auto-detects 15 manifest types (package.json, requirements.txt, go.mod, Cargo.toml, pom.xml, etc.)
  - Dual-scanner vulnerability detection (Grype + OSV)
  - EPSS exploit probability scores and CISA KEV status
  - End-of-life component detection
  - Regulatory compliance scoring (NTIA, EU CRA, EO 14028)
  - SARIF 2.1.0 upload to GitHub Code Scanning
  - Configurable severity thresholds to block PRs
  - Job summary with scan results table

  ### Quick Start

  1. Get an API key at [my.sbomly.com](https://my.sbomly.com)
  2. Add it as a repo secret: `SBOMLY_API_KEY`
  3. Add this workflow:

  ```yaml
  name: SBOMly Scan
  on: [push, pull_request]
  jobs:
    scan:
      runs-on: ubuntu-latest
      permissions:
        security-events: write
      steps:
        - uses: actions/checkout@v4
        - uses: sbomly/scan-action@v1
          with:
            api-key: ${{ secrets.SBOMLY_API_KEY }}

  See README for full documentation.
