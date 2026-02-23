---
title: CodSpeed Performance Analysis
date: 2026-02-23 21:46:17 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.11.0
dependentsNumber: "2,168"
actionType: Composite
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.11.0**.
- This action is used across all versions by **2,168** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

CodSpeed Action is a GitHub Action designed to automate the execution of performance benchmarks using CodSpeed in CI/CD pipelines. It simplifies the process of running and uploading benchmark results to CodSpeed, enabling performance monitoring and analysis for projects. Key features include support for customizable measurement modes, integration with OpenID Connect for authentication, caching of instrument installations, and compatibility with various benchmark configurations.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- feat: add SHA256 hash verification for the installer script by @art049 in https://github.com/CodSpeedHQ/action/pull/189
- Collect debug info by pid by @GuillaumeLagrange in [#240](https://github.com/CodSpeedHQ/runner/pull/240)
- Skip tests requiring sudo if `GITHUB_ACTIONS` is not set by @GuillaumeLagrange
- Deduplicate symbol maps, unwind_data and debug info by @GuillaumeLagrange
- Use bench_pids filters when harvesting symbols from perf file by @GuillaumeLagrange
- Add new fields to perf metadata by @GuillaumeLagrange in [#246](https://github.com/CodSpeedHQ/runner/pull/246)
- Always try to attach to libc-compatible API by @not-matthias
- Support tcmalloc by @not-matthias
- Support more standard allocation APIs by @not-matthias
- Add tracegrind support as an alternative simulation tool by @art049 in [#236](https://github.com/CodSpeedHQ/runner/pull/236)

### <!-- 1 -->🐛 Bug Fixes
- Re-add perf map colection removed by mistake by @GuillaumeLagrange in [#251](https://github.com/CodSpeedHQ/runner/pull/251)

### <!-- 2 -->🏗️ Refactor
- Use common lib paths for all allocators by @not-matthias

### <!-- 7 -->⚙️ Internals
- chore: bump runner version to 4.11.0 by @github-actions[bot] in https://github.com/CodSpeedHQ/action/pull/190
- Bump exec-harness version
- Remove outdated allocator check by @not-matthias in [#241](https://github.com/CodSpeedHQ/runner/pull/241)
- Add tcmalloc test by @not-matthias

## Install codspeed-runner 4.11.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.11.0

| File | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/codspeed/releases/download/v4.11.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/codspeed/blob/main/CHANGELOG.md


**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.10.6...v4.11.0
