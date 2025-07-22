---
title: CodSpeed Performance Analysis
date: 2025-07-22 16:59:02 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v3.8.0
dependentsNumber: "1,321"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v3.8.0**.
- This action is used across all versions by **1,321** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Release notes

## What's Changed


### <!-- 1 -->🐛 Bug Fixes
- Adjust offset for symbols of module loaded at preferred base by @not-matthias in [#97](https://github.com/CodSpeedHQ/runner/pull/97)
- Run with --scope to allow perf to trace the benchmark process by @not-matthias
- Run with bash to support complex scripts by @not-matthias
- Execute pre- and post-bench scripts for non-perf walltime runner by @not-matthias in [#96](https://github.com/CodSpeedHQ/runner/pull/96)

### <!-- 2 -->🏗️ Refactor
- Process memory mappings in separate function by @not-matthias

### <!-- 7 -->⚙️ Internals
- Add debug logs for perf.map collection by @not-matthias
- Add complex cmd and env tests by @not-matthias


**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v3.7.0...v3.8.0
**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md
