---
title: CodSpeed Performance Analysis
date: 2026-01-27 21:42:42 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.10.0
dependentsNumber: "2,062"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.10.0**.
- This action is used across all versions by **2,062** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

The CodSpeed GitHub Action integrates CodSpeed benchmarking into CI workflows, automating the execution and reporting of performance benchmarks. It simplifies running benchmarks, collecting performance data, and uploading results to the CodSpeed platform for analysis. The action supports configurable execution modes, caching to optimize workflow runs, and integration with various tools and environments to streamline continuous performance monitoring.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Add pre-commit check to sync schema with code by @GuillaumeLagrange
- Add binary to generate project config schema by @GuillaumeLagrange
- Add command aliases by @art049 in [#216](https://github.com/CodSpeedHQ/runner/pull/216)


### <!-- 1 -->🐛 Bug Fixes
- Rename `targets` to `benchmarks` in the project_config to match spec by @GuillaumeLagrange in [#220](https://github.com/CodSpeedHQ/runner/pull/220)
- Use child process instead of pid/perf fifo for FIFO health check by @not-matthias in [#201](https://github.com/CodSpeedHQ/runner/pull/201)
- Make FIFO cancel-safe by @not-matthias
- Dont run health check in hot path by @not-matthias
- Update warning message format for go runner installation by @not-matthias in [#218](https://github.com/CodSpeedHQ/runner/pull/218)
- Tweaked exec-harness build for gcc15+ by @art049

### <!-- 2 -->🏗️ Refactor
- Move the whole runner logic under `lib.rs` to add other binaries by @GuillaumeLagrange

### <!-- 7 -->⚙️ Internals
- Add cancel-safety test for FIFO by @not-matthias
- Remove cargo check from pre-commit by @GuillaumeLagrange in [#215](https://github.com/CodSpeedHQ/runner/pull/215)
- Remove runner_mode from project config by @GuillaumeLagrange
- Improve readme by @art049 in [#214](https://github.com/CodSpeedHQ/runner/pull/214)

**Full Runner Changelog**: https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md
