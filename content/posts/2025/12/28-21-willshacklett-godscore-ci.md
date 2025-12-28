---
title: GodScore CI
date: 2025-12-28 21:17:56 +00:00
tags:
  - willshacklett
  - GitHub Actions
draft: false
repo: https://github.com/willshacklett/godscore-ci
marketplace: https://github.com/marketplace/actions/godscore-ci
version: v0.2.2
dependentsNumber: "?"
---


Version updated for **https://github.com/willshacklett/godscore-ci** to version **v0.2.2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/godscore-ci) to find the latest changes.

## Action Summary

**GodScore CI** is a GitHub Action designed to enhance traditional CI pipelines by evaluating the long-term survivability, recoverability, and resilience of evolving systems through a scalar metric called the *God Variable (Gv)*. It automates the detection of issues like irreversibility and silent degradation, which are often missed by conventional CI tools, ensuring that changes do not compromise the system's ability to adapt and recover over time. Key capabilities include invariant tests, perturbation simulations, regression checks, and irreversibility detection, making it particularly useful for maintaining the health and longevity of complex, long-lived systems.

## Release notes

### GodScore CI – Marketplace Release

This release publishes GodScore CI to the GitHub Marketplace.

**Features**
- Survivability-aware CI gate using God Variable (Gv)
- Configurable threshold enforcement
- Free vs Pro enforcement modes
- Composite GitHub Action (no Docker required)

**Usage**
```yaml
- name: GodScore CI
  uses: willshacklett/godscore-ci@v0.2.1
  with:
    score: "0.92"
    threshold: "0.80"
    mode: "free"

