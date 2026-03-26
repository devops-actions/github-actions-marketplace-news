---
title: Drift — Architectural Erosion Check
date: 2026-03-26 14:01:20 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v0.6.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a deterministic static analysis tool designed to detect architectural drift in AI-accelerated Python codebases. It identifies structural issues such as pattern fragmentation, architecture violations, and hotspots, providing actionable insights to help teams maintain coherent and scalable architectures. This tool is particularly useful for fast-growing Python teams and tech leads seeking proactive feedback on architectural health beyond standard style or type checks, especially in environments leveraging AI coding tools.

## Release notes

## Highlights
- Expanded TypeScript analysis with stronger import resolution, workspace assignment, vendor filtering, and dedicated TS/TSX architectural rules.
- Added delta-first score interpretation and context tags so score changes and migration phases are visible and actionable in CLI and JSON output.
- Added the report-only consistency proxy signals BEM, TPD, and GCD with empirical validation artifacts.
- Expanded adoption guidance with report-only CI rollout material, concrete example findings, and stronger trust/evidence documentation.

## Changed
- Strengthened release hygiene and feature-evidence gates so new feature work must ship with tests and empirical artifacts.
- Expanded onboarding, integrations, comparisons, FAQ, and use-case documentation to align public messaging with actual product maturity.
- Reduced redundant TypeScript discovery work and improved workspace-boundary handling in TS analysis.

## Fixed
- Hardened pipeline, config, suppression, cache, and observational analysis behavior to reduce rollout surprises.
- Tightened delta-gate typing and snapshot handling while keeping existing fail_on behavior backward compatible.
- Aligned rollout defaults and trust messaging around conservative report-only adoption.
