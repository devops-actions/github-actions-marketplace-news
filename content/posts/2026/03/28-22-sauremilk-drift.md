---
title: Drift — Architectural Erosion Check
date: 2026-03-28 22:13:09 +00:00
tags:
  - sauremilk
  - GitHub Actions
draft: false
repo: https://github.com/sauremilk/drift
marketplace: https://github.com/marketplace/actions/drift-architectural-erosion-check
version: v0.8.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sauremilk/drift** to version **v0.8.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/drift-architectural-erosion-check) to find the latest changes.

## Action Summary

Drift is a deterministic static analysis tool designed to detect architectural drift in AI-accelerated Python codebases. It identifies issues such as pattern fragmentation, architecture violations, and structural hotspots, helping teams maintain code coherence and prevent structural degradation in fast-growing projects. The tool automates cross-file architectural reviews, providing actionable insights and a "drift score" to enable teams and tech leads to address structural issues proactively.

## Release notes

﻿Short version: drift now enforces English-only user-facing finding remediation text to keep CLI output and demo assets language-consistent.

## Fixed

- **Language consistency in findings**: Translated remaining user-facing recommendation/fix strings from German to English across AVS, EDS, MDS, SMS, and TVS signal outputs.
- **Demo output reliability**: Demo generation now reflects fully English drift output in rendered CLI captures.

**Full Changelog**: https://github.com/sauremilk/drift/compare/v0.8.0...v0.8.1

