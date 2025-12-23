---
title: CodSpeed Performance Analysis
date: 2025-12-23 05:29:12 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.5.1
dependentsNumber: "1,868"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.5.1**.
- This action is used across all versions by **1,868** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

The CodSpeed GitHub Action automates the process of running performance benchmarks using the CodSpeed platform within a CI/CD pipeline. It enables users to execute benchmarking commands, measure performance using various modes, and upload results to CodSpeed for analysis. This action simplifies performance monitoring and optimization by integrating seamlessly into CI workflows and supporting features like caching and instrument configurations.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Remove projects query from the exec polling by @GuillaumeLagrange in [#173](https://github.com/CodSpeedHQ/runner/pull/173)
- Fetch project from API when running outside of git repo by @GuillaumeLagrange
- Add get or create project repository query by @GuillaumeLagrange
- Automatically install exec-harness for exec subcommand by @GuillaumeLagrange
- Auto install codspeed-memtrack during executor setup by @GuillaumeLagrange
- Serialize events serially to allow streamed decoding by @not-matthias in [#172](https://github.com/CodSpeedHQ/runner/pull/172)
- Parse perf file for memmap events instead of relying on /proc/pid/maps by @GuillaumeLagrange
- Use the projects upload enpdoint in exec command by @GuillaumeLagrange
- Add exec subcommand and refactor run subcommand by @GuillaumeLagrange
- Add exec-harness binary by @GuillaumeLagrange
- Add memory executor by @not-matthias
- Add memtrack crate by @not-matthias
- Add artifact types by @not-matthias
- Add shared fifo by @not-matthias
- Add new fifo commands by @not-matthias
- Support simulation for free-threaded python by @adriencaccia in [#167](https://github.com/CodSpeedHQ/runner/pull/167)

### <!-- 1 -->🐛 Bug Fixes
- fix: specify package when using branch/ref by @not-matthias in https://github.com/CodSpeedHQ/action/pull/162
- fix: properly check for allow_empty input by @GuillaumeLagrange in https://github.com/CodSpeedHQ/action/pull/164
- Filter out arm debugging symbols by @GuillaumeLagrange in [#179](https://github.com/CodSpeedHQ/runner/pull/179)
- Filter out empty named symbols when building perf-map by @GuillaumeLagrange in [#176](https://github.com/CodSpeedHQ/runner/pull/176)
- Do not break support for no reason when changing integration hooks protocol version by @GuillaumeLagrange in [#175](https://github.com/CodSpeedHQ/runner/pull/175)
- Remove dirty retry on timeout and simply increase timeout for GQL client by @GuillaumeLagrange
- Stop hanging indefinitely if process fails to start in memory executor by @GuillaumeLagrange in [#171](https://github.com/CodSpeedHQ/runner/pull/171)
- Remove the password prompt from the run_with_sudo dialog by @GuillaumeLagrange
- Collect events in thread to avoid mutex overhead by @not-matthias
- Convert events in thread to avoid blocking at the end by @not-matthias
- Compress only when size exceeds threshold by @not-matthias
- Forward environment in memory executor by @not-matthias
- Fix plan test in CI by @GuillaumeLagrange in [#165](https://github.com/CodSpeedHQ/runner/pull/165)
- Prevent nextest from running valgrind and memcheck concurrently by @GuillaumeLagrange
- Stop ignoring samples by @GuillaumeLagrange
- Use correct name for unwind_data trait declaration by @GuillaumeLagrange
- Stop filtering out zero sized symbol by @GuillaumeLagrange
- Request OIDC token after creating profile archive by @fargito in [#170](https://github.com/CodSpeedHQ/runner/pull/170)
- Remove snapshots that were not part of lfs by @not-matthias in [#166](https://github.com/CodSpeedHQ/runner/pull/166)
- Always print memory mapping logs by @not-matthias

### <!-- 2 -->🏗️ Refactor
- Create a dedicated execution_context that holds runtime information by @GuillaumeLagrange
- Move executor and instruments modules out of `run` module by @GuillaumeLagrange

### <!-- 7 -->⚙️ Internals
- docs(examples): add go and cpp examples by @fargito in https://github.com/CodSpeedHQ/action/pull/161
- Ignore some tags in the changelog
- Bump protocol version by @not-matthias in [#174](https://github.com/CodSpeedHQ/runner/pull/174)
- Add CONTRIBUTING.md by @GuillaumeLagrange
- Add cargo-dist arguments for release by @GuillaumeLagrange
- Reset exec-harness and memtrack crate versions to 1.0.0 ahead of first release by @GuillaumeLagrange
- Switch to pr run mode plan only for pr by @GuillaumeLagrange
- Add test to ensure path is properly forwarded by @not-matthias in [#169](https://github.com/CodSpeedHQ/runner/pull/169)
- Make the exec command work outside of git repos by @GuillaumeLagrange
- Do not publish memtrack to crates.io by @adriencaccia
- Dont run valgrind and memory tests at the same time by @not-matthias in [#164](https://github.com/CodSpeedHQ/runner/pull/164)
- Add test-log to see output on failures by @not-matthias
- Add workspace dependencies by @not-matthias



## Install codspeed-runner 4.5.1

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.5.1/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.5.1

|  File  | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.4.1...v4.5.1
