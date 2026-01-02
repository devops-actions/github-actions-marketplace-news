---
title: CodSpeed Performance Analysis
date: 2026-01-02 21:18:03 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.5.2
dependentsNumber: "1,915"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.5.2**.
- This action is used across all versions by **1,915** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

The CodSpeed GitHub Action integrates the CodSpeed benchmarking tool into CI workflows, automating the execution of performance benchmarks and uploading results to CodSpeed for analysis. It supports various measurement modes, authentication methods, and optional instrumentation tools, helping developers streamline performance testing and gain insights into their code's efficiency. This action is particularly useful for maintaining and improving application performance in projects with continuous integration pipelines.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Update release flow to make sure only runner releases are marked as latest (#180) by @GuillaumeLagrange in [#180](https://github.com/CodSpeedHQ/runner/pull/180)
- Improve `UNAUTHENTICATED` error message by @fargito in [#181](https://github.com/CodSpeedHQ/runner/pull/181)

### <!-- 7 -->⚙️ Internals
- Bump cargo dist to 0.30.3 by @art049
- chore: bump runner version to 4.5.2 by @github-actions[bot] in https://github.com/CodSpeedHQ/action/pull/167


## Install codspeed-runner 4.5.2

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.5.2/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.5.2

| File | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.2/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.5.2/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.5.1...v4.5.2
