---
title: Macaron Security Analysis Action
date: 2026-07-26 14:42:29 +00:00
tags:
  - oracle
  - GitHub Actions
draft: false
repo: https://github.com/oracle/macaron
marketplace: https://github.com/marketplace/actions/macaron-security-analysis-action
version: v0.25.0
dependentsNumber: "6"
actionType: Composite
actionSummary: |
  **Purpose**: The Macaron GitHub Action is designed to ensure the integrity and security of software packages in major ecosystems by verifying their build process and detecting malicious or suspicious packages.
  
  **Problem Solves**: It automates the verification of build integrity, aids in identifying potential vulnerabilities and malicious activities, particularly in GitHub Actions, and supports reproducible builds through static analysis.
---


Version updated for **https://github.com/oracle/macaron** to version **v0.25.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/macaron-security-analysis-action) to find the latest changes.

## Action Summary

**Purpose**: The Macaron GitHub Action is designed to ensure the integrity and security of software packages in major ecosystems by verifying their build process and detecting malicious or suspicious packages.

**Problem Solves**: It automates the verification of build integrity, aids in identifying potential vulnerabilities and malicious activities, particularly in GitHub Actions, and supports reproducible builds through static analysis.

## What's Changed

## v0.25.0 (2026-07-26)

### Feat

- add inference for rebuilding Python wheels that bundle Rust binaries. (#1408)
- new malware sourcecode detection for anti-analysis behaviour (#1388)

### Fix

- **action**: replace string-built GitHub Action commands with a bash argv array and direct execution (#1424)
- cleanup PyPI package temp directory and prevent leaks (#1404)
- prefer tag commits over attestation commits (#1401)


