---
title: CodSpeed Performance Analysis
date: 2025-07-08 16:58:49 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v3.7.0
dependentsNumber: "1,247"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v3.7.0**.
- This action is used across all versions by **1,247** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Release notes

## What's Changed


### <!-- 0 -->🚀 Features
- Add pre- and post-benchmark scripts by @not-matthias
- Add cli args for perf by @not-matthias in [#94](https://github.com/CodSpeedHQ/runner/pull/94)

### <!-- 1 -->🐛 Bug Fixes
- Forward environment to systemd-run cmd by @not-matthias
- Only panic in upload for non-existing integration by @not-matthias
- Multi-line commands in valgrind by @not-matthias
- Symlink libpython doesn't work for statically linked python by @not-matthias in [#89](https://github.com/CodSpeedHQ/runner/pull/89)
- Run perf with sudo; support systemd-run for non-perf walltime by @not-matthias
- Use correct path for unwind info by @not-matthias

### <!-- 7 -->⚙️ Internals
- Add executor tests by @not-matthias in [#95](https://github.com/CodSpeedHQ/runner/pull/95)
- Add log to detect invalid origin url by @not-matthias
- Upgrade to edition 2024 by @not-matthias
- Add debug logs for proc maps by @not-matthias in [#88](https://github.com/CodSpeedHQ/runner/pull/88)
- Enhance version resolution with 'latest' support and flexible formats by @art049 in https://github.com/CodSpeedHQ/action/pull/132

**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v3.6.1...v3.7.0
**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md
