---
title: CodSpeed Performance Analysis
date: 2026-01-13 22:06:17 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.7.0
dependentsNumber: "1,975"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.7.0**.
- This action is used across all versions by **1,975** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

The CodSpeed GitHub Action automates the process of running performance benchmarks in continuous integration (CI) environments using CodSpeed. It simplifies the execution, measurement, and reporting of benchmarks while integrating seamlessly with CodSpeed's platform for performance analysis. Key capabilities include support for various measurement modes, instrument caching, and optional authentication methods to securely upload benchmarking results.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Check for perf compression and enable multi-events conditionally by @GuillaumeLagrange
- Enable perf data compression by @art049
- Add more events to perf monitoring by @GuillaumeLagrange
- Add zstd compression support by @not-matthias
- Add l2d cache events to perf command by @GuillaumeLagrange in [#188](https://github.com/CodSpeedHQ/runner/pull/188)

### <!-- 1 -->🐛 Bug Fixes
- Do not cat stdout from command to pipe.data by @GuillaumeLagrange in [#182](https://github.com/CodSpeedHQ/runner/pull/182)
- Drain events arriving after process terminated by @not-matthias
- Support non-x86 libc paths by @not-matthias in [#183](https://github.com/CodSpeedHQ/runner/pull/183)

### <!-- 7 -->⚙️ Internals
- Add instructions event, and use runner_shared for monitored events by @GuillaumeLagrange in [#154](https://github.com/CodSpeedHQ/runner/pull/154)
- Bump memtrack version by @not-matthias in [#187](https://github.com/CodSpeedHQ/runner/pull/187)
- Prevent gh release edit from automatically setting release as latest by @GuillaumeLagrange in [#186](https://github.com/CodSpeedHQ/runner/pull/186)
- Add memtrack serialization benchmark by @not-matthias in [#184](https://github.com/CodSpeedHQ/runner/pull/184)


## Install codspeed-runner 4.7.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.7.0

| File | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.7.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.5.2...v4.7.0
