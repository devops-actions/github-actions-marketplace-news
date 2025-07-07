---
title: CodSpeed Performance Analysis
date: 2025-07-07 16:58:42 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v3.6.1
dependentsNumber: "1,244"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v3.6.1**.
- This action is used across all versions by **1,244** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Release notes

## What's Changed

### <!-- 0 -->🚀 Features
- Allow setting upload url via env var for convenience by @GuillaumeLagrange in [#85](https://github.com/CodSpeedHQ/runner/pull/85)
- Send unknown cpu_brand when it is not recognized by @adriencaccia
- Allow only running the benchmarks, and only uploading the results by @GuillaumeLagrange in [#81](https://github.com/CodSpeedHQ/runner/pull/81)
- Install perf on setup by @not-matthias
- Add perf integration for python by @not-matthias
- Add perf integration for rust by @not-matthias
- Add fifo ipc by @not-matthias
- Use custom time formatting to be in line with the rest of CodSpeed by @GuillaumeLagrange in [#77](https://github.com/CodSpeedHQ/runner/pull/77)
- Output information about benches after a local run by @GuillaumeLagrange in [#76](https://github.com/CodSpeedHQ/runner/pull/76)
- Allow specifying oauth token through CLI by @GuillaumeLagrange in [#75](https://github.com/CodSpeedHQ/runner/pull/75)
- Add option to output structured json by @GuillaumeLagrange in [#74](https://github.com/CodSpeedHQ/runner/pull/74)
- Add flags to specify repository from CLI by @GuillaumeLagrange
- Improve error handling for valgrind by @not-matthias in [#67](https://github.com/CodSpeedHQ/runner/pull/67)
- Handle local run failure by @adriencaccia in [#71](https://github.com/CodSpeedHQ/runner/pull/71)
- Run benchmark with systemd (for optional cpu isolation) by @not-matthias in [#86](https://github.com/CodSpeedHQ/runner/pull/86)

### <!-- 1 -->🐛 Bug Fixes
- Persist logs when running with skip_upload by @GuillaumeLagrange in [#84](https://github.com/CodSpeedHQ/runner/pull/84)
- Valgrind crash for unresolved libpython by @not-matthias in [#82](https://github.com/CodSpeedHQ/runner/pull/82)
- Support trailing slash in origin url by @not-matthias in [#83](https://github.com/CodSpeedHQ/runner/pull/83)
- Use bash to ensure correct behavior across systems by @not-matthias
- Fix test randomly failing due to other test run in parallel by @GuillaumeLagrange
- Check child status code after valgrind by @not-matthias in [#72](https://github.com/CodSpeedHQ/runner/pull/72)
- Only show perf output at debug or trace level by @not-matthias in [#87](https://github.com/CodSpeedHQ/runner/pull/87)

### <!-- 7 -->⚙️ Internals
- Dont use regex in perf map harvest by @not-matthias
- Switch to astral-sh/cargo-dist by @adriencaccia in [#80](https://github.com/CodSpeedHQ/runner/pull/80)



**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v3.5.0...v3.6.1
