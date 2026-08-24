---
title: Lachesis Security Scan
date: 2026-08-24 22:44:07 +00:00
tags:
  - UnboundCompute
  - GitHub Actions
draft: false
repo: https://github.com/UnboundCompute/lachesis-action
marketplace: https://github.com/marketplace/actions/lachesis-security-scan
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action builds a code property graph of your repo, traces untrusted input to dangerous sinks, and emits reviewable SARIF from your own runner. It helps find missing authorization checks in your code, providing inline comments on pull requests with Lachesis bot signatures if the optional poster is enabled.
---


Version updated for **https://github.com/UnboundCompute/lachesis-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lachesis-security-scan) to find the latest changes.

## Action Summary

This GitHub Action builds a code property graph of your repo, traces untrusted input to dangerous sinks, and emits reviewable SARIF from your own runner. It helps find missing authorization checks in your code, providing inline comments on pull requests with Lachesis bot signatures if the optional poster is enabled.

## What's Changed


- Add a line-move-stable `lachesisFinding` SARIF fingerprint alongside the exact
  engine path id, enabling downstream finding lifecycle and deduplication.
- Prefer the stable finding fingerprint when filtering a trusted SARIF baseline,
  while retaining rule/file/line compatibility with older reports.
- Add opt-in `candidate-report: census` output for Atropos-backed obligation
  coverage in the GitHub Actions job summary.
- Expose generated SARIF and candidate-census paths as composite-action outputs so
  callers can archive or upload artifacts through generic CI integrations.
- Pin development defaults to the reviewed Lachesis `v0.2.0` and Atropos `v1.8.0`
  releases.
- Record the analysis projection, engine/catalog commits, and toolchain fingerprint
  in SARIF driver properties.


