---
title: GodScore CI
date: 2025-12-30 21:11:53 +00:00
tags:
  - willshacklett
  - GitHub Actions
draft: false
repo: https://github.com/willshacklett/godscore-ci
marketplace: https://github.com/marketplace/actions/godscore-ci
version: v0.2.4
dependentsNumber: "?"
---


Version updated for **https://github.com/willshacklett/godscore-ci** to version **v0.2.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/godscore-ci) to find the latest changes.

## Action Summary

GodScore CI is a GitHub Action designed to assess the long-term resilience of evolving systems by evaluating their survivability, self-correctability, and irreversibility risk through a metric called the God Variable (Gv). It automates the detection of gradual system degradations that traditional CI pipelines often miss by enforcing global survivability constraints, running invariant and perturbation tests, and identifying irreversibility risks. This helps ensure that changes do not compromise a system's ability to recover or adapt over time.

## Release notes

### What’s new

- Fixed Marketplace execution in external repositories by ensuring the action is fully self-contained
- Action now checks out its own source before execution, enabling reliable use outside the GodScore CI repo
- Verified GodScore CI behavior against a fork of a third-party project (external repo test)
- Improved gate robustness and output signaling for CI consumers

### Why this matters

This release makes GodScore CI safe and predictable when used in *any* repository, not just the source repo.  
External users can now install the action from GitHub Marketplace with confidence that it will execute correctly in their CI environment.

### Notes

- This release focuses on correctness and portability, not new scoring semantics
- Recommended for all users installing GodScore CI from GitHub Marketplace

