---
title: CodSpeed Performance Analysis
date: 2025-11-21 21:17:44 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.4.1
dependentsNumber: "1,717"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.4.1**.
- This action is used across all versions by **1,717** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Display oidc as announcement by @fargito
- Add --allow-empty run option by @GuillaumeLagrange in [#160](https://github.com/CodSpeedHQ/runner/pull/160)

### <!-- 1 -->🐛 Bug Fixes
- Do not espace trailing newlines in logger by @fargito
- Make multiline logs appear correctly in summary by @fargito in [#162](https://github.com/CodSpeedHQ/runner/pull/162)
- Request OIDC token just before upload by @fargito
- Update docs links to oidc by @fargito in [#159](https://github.com/CodSpeedHQ/runner/pull/159)

### <!-- 7 -->⚙️ Internals
- feat: make use of allow-empty in the ci of this action by @GuillaumeLagrange in https://github.com/CodSpeedHQ/action/pull/158
- chore: bump runner version to 4.4.1 by @github-actions[bot] in https://github.com/CodSpeedHQ/action/pull/159

## Install codspeed-runner 4.4.1

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.4.1

|  File  | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.1/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.4.0...v4.4.1
