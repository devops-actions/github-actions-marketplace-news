---
title: Drift — Architectural Erosion Check
date: 2026-03-27 13:56:35 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v0.7.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v0.7.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a deterministic static analysis tool designed to detect architectural drift in AI-accelerated Python codebases. It identifies cross-file coherence issues such as pattern fragmentation, architecture violations, and structural hotspots, helping teams address potential architecture erosion early. This action provides fast, actionable insights for maintaining structural integrity in growing codebases, particularly for teams leveraging AI-assisted coding tools.

## Release notes

Short version: deterministic auto-calibration output, dedicated ECM signal coverage, and scoped trend-history persistence for diff-only CI pipelines.

## Added

- **Dedicated ECM tests**: Added a standalone ECM signal test module with explicit true-positive, true-negative, and edge-case coverage for signature changes, missing history, and private-function handling.

## Changed

- **Deterministic weight auto-calibration**: auto_calibrate_weights() now uses canonical key ordering and deterministic residual correction during renormalization, ensuring stable results for identical input across iteration-order differences.
- **Diff trend/history parity**: analyze_diff() now computes trend context and persists snapshots, scoped to diff-mode history so CI pipelines that only run diff analysis retain functional trend and delta context without mixing full-repo snapshots.

## Fixed

- **Regression stability**: Added regression tests for deterministic auto-calibration output and for scoped diff-history persistence semantics.
