---
title: CodSpeed Performance Analysis
date: 2025-11-19 21:02:01 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.4.0
dependentsNumber: "1,710"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.4.0**.
- This action is used across all versions by **1,710** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Release notes

## Release Notes

### <!-- 0 -->🚀 Features
- Add support for oidc token authentication by @fargito in [#156](https://github.com/CodSpeedHQ/runner/pull/156)
  - You can now use OIDC to authenticate your CodSpeed workflow and remove `CODSPEED_TOKEN` from your repositories secret! Learn more the [authentication docs](https://codspeed.io/docs/integrations/ci/github-actions#openid-connect-oidc-authentication)
- Accept simulation as runner mode by @GuillaumeLagrange in [#152](https://github.com/CodSpeedHQ/runner/pull/152)
- Add a comment explaining why we do not check for emptiness in valgrind teardown by @GuillaumeLagrange in [#157](https://github.com/CodSpeedHQ/runner/pull/157)
- Validate walltime results before uploading by @GuillaumeLagrange
- Import walltime_results from monorepo by @GuillaumeLagrange
- Accept both simulation and instrumentation as a mode input by @GuillaumeLagrange in https://github.com/CodSpeedHQ/action/pull/155

### <!-- 1 -->🐛 Bug Fixes
- Dont start perf unless it's not already started by @not-matthias in [#158](https://github.com/CodSpeedHQ/runner/pull/158)
- Use a line buffer when reading stdout/stderr streams by @GuillaumeLagrange

### <!-- 4 --> 📚 Documentation
- docs: recommend OpenID Connect instead of static token by @fargito in https://github.com/CodSpeedHQ/action/pull/156

### <!-- 7 -->⚙️ Internals
- chore: bump runner version to 4.4.0 by @github-actions[bot] in https://github.com/CodSpeedHQ/action/pull/157


## Install codspeed-runner 4.4.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.4.0

|  File  | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.4.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.3.4...v4.4.0
