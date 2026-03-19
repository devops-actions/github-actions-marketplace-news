---
title: CleanCloud Scan
date: 2026-03-19 13:51:53 +00:00
tags:
  - cleancloud-io
  - GitHub Actions
draft: false
repo: https://github.com/cleancloud-io/scan-action
marketplace: https://github.com/marketplace/actions/cleancloud-scan
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cleancloud-io/scan-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cleancloud-scan) to find the latest changes.

## Action Summary

The **CleanCloud Scan Action** is a GitHub Action designed to automate cloud resource hygiene checks for AWS and Azure environments. It identifies orphaned resources and potential cost inefficiencies by performing read-only scans, helping teams enforce cloud hygiene and optimize costs as part of their CI workflows. Key features include multi-region scanning, configurable failure thresholds for cost and resource findings, and support for multiple output formats to facilitate reporting and integration.

## Release notes

CleanCloud Scan Action v1

GitHub Action for https://github.com/cleancloud-io/cleancloud — a read-only cloud hygiene scanner for AWS and Azure.

Features:

Scan AWS (all regions or specific region) and Azure with a single action
Enforcement gates: fail-on-confidence, fail-on-cost, fail-on-findings
JSON, CSV, markdown, and human-readable output
Version pinning support
Works on Ubuntu, macOS, and Windows runners
Usage:

uses: cleancloud-io/scan-action@v1
with:
provider: aws
all-regions: 'true'
fail-on-confidence: HIGH
fail-on-cost: '100'
See the https://github.com/cleancloud-io/scan-action#readme for full AWS and Azure examples.


