---
title: Macaron Security Analysis Action
date: 2026-03-31 14:01:49 +00:00
tags:
  - oracle
  - GitHub Actions
draft: false
repo: https://github.com/oracle/macaron
marketplace: https://github.com/marketplace/actions/macaron-security-analysis-action
version: v0.23.0
dependentsNumber: "6"
actionType: Composite
---


Version updated for **https://github.com/oracle/macaron** to version **v0.23.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/macaron-security-analysis-action) to find the latest changes.

## Action Summary

Macaron is a GitHub Action designed to automate software supply chain security analysis by verifying the build integrity of artifacts and their dependencies. It addresses issues such as detecting malicious packages, validating artifact provenance, identifying vulnerable GitHub Actions, and ensuring reproducible builds to prevent tampering or compromised workflows. Its key capabilities include attestation verification, static analysis for build discrepancies, and enhanced traceability for released artifacts.

## What's Changed

## v0.23.0 (2026-03-31)

### Feat

- add more inputs to Macaron Action and improve GitHub Action analysis (#1339)
- change dockerfile generation for Python rebuild to always default to standard build command (#1336)
- adjusted max_download_size to 30MB (#1337)

### Fix

- improve URL validation to avoid unexpected redirects (#1344)
- allow parsing of github expressions containing non-breaking-space characters, and allow dataflow analysis to fail (#1340)
- improve has_binary flag condition for Python buildspec generation (#1333)


