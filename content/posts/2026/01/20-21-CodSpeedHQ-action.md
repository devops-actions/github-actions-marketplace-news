---
title: CodSpeed Performance Analysis
date: 2026-01-20 21:42:55 +00:00
tags:
  - CodSpeedHQ
  - GitHub Actions
draft: false
repo: https://github.com/CodSpeedHQ/action
marketplace: https://github.com/marketplace/actions/codspeed-performance-analysis
version: v4.8.0
dependentsNumber: "2,027"
---


Version updated for **https://github.com/CodSpeedHQ/action** to version **v4.8.0**.
- This action is used across all versions by **2,027** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codspeed-performance-analysis) to find the latest changes.

## Action Summary

The CodSpeed GitHub Action automates the process of running performance benchmarks in CI/CD workflows and uploading the results to CodSpeed for analysis. It simplifies benchmarking by supporting various measurement modes and integration with tools like MongoDB, while also providing authentication options and caching to optimize performance. This action is ideal for streamlining performance testing and enhancing visibility into application efficiency directly within a CI pipeline.

## Release notes

## Release Notes

It is now possible to do consecutive CodSpeed run in the same GitHub job. This will allow using multiple instruments without having to spawn another job 🎉

```yaml
jobs:
  codspeed:
    ...
    steps:
      ...
      - name: Build benchmarks
        run: cargo codspeed build -m analysis

      - name: Run benchmarks
        uses: CodSpeedHQ/action@v4
        with:
          run: cargo codspeed run
          mode: "simulation"

      - name: Run memory benchmarks
        uses: CodSpeedHQ/action@v4
        with:
          run: cargo codspeed run
          mode: "memory"
```

### <!-- 0 -->🚀 Features
- Allow defining targets in codspeed yaml by @GuillaumeLagrange in [#197](https://github.com/CodSpeedHQ/runner/pull/197)
- Add an stdin mode to provide multiple commands by @GuillaumeLagrange
- Add a run index suffix by @fargito in [#199](https://github.com/CodSpeedHQ/runner/pull/199)
- Make the config less strict about its config by @GuillaumeLagrange in [#198](https://github.com/CodSpeedHQ/runner/pull/198)
- Add support for analysis mode with memory instrument by @GuillaumeLagrange
- Reduce shared fifo timeout to end executor runs faster after the program has ended by @GuillaumeLagrange in [#193](https://github.com/CodSpeedHQ/runner/pull/193)
- Use a bufwriter to save unwind data by @GuillaumeLagrange
- Support dynamically and statically linked allocators by @not-matthias
- Track `memalign` calls by @not-matthias
- Accept IPC before creating tracker to avoid timeouts by @not-matthias
- Add integration tests for complex cli commands by @GuillaumeLagrange
- Add the full command to the uri and handle hyphens better by @GuillaumeLagrange
- Add yaml project config discovery and loading by @GuillaumeLagrange in [#189](https://github.com/CodSpeedHQ/runner/pull/189)
- Implement the walltime benchmarking algorithm by @GuillaumeLagrange
- Use rayon to collect perf walltime data by @GuillaumeLagrange
- Handle memory executor when displaying results by @GuillaumeLagrange in [#190](https://github.com/CodSpeedHQ/runner/pull/190)
- Do not draw a table if there is only one benchmark by @GuillaumeLagrange
- Stop using the deprecated `time` field and use `value` instead by @GuillaumeLagrange

### <!-- 1 -->🐛 Bug Fixes
- Fix behavior when multiple benchmarks are ran by @GuillaumeLagrange
- Simplify `run_part_id` computation by @fargito in [#200](https://github.com/CodSpeedHQ/runner/pull/200)
- Write perf map all at once instead of line by line by @GuillaumeLagrange
- Drop privileges when running commands under sudo by @not-matthias
- Make walltime results stat computation the same as pytest-codspeed by @GuillaumeLagrange in [#185](https://github.com/CodSpeedHQ/runner/pull/185)

### <!-- 2 -->🏗️ Refactor
- Move project config structs to interfaces mod by @GuillaumeLagrange
- Move all walltime benchmarking to its dedicated module by @GuillaumeLagrange

### <!-- 7 -->⚙️ Internals
- chore: bump runner version to 4.8.0 by @github-actions[bot] in https://github.com/CodSpeedHQ/action/pull/172
- Bump memtrack version
- Ignore .codspeed for exec-harness output by @GuillaumeLagrange
- Remove useless clone derive for project config by @GuillaumeLagrange
- Cleanup output by @not-matthias in [#196](https://github.com/CodSpeedHQ/runner/pull/196)
- Use simulation in codspeed action by @GuillaumeLagrange in [#194](https://github.com/CodSpeedHQ/runner/pull/194)
- Cache benchmark executable by @GuillaumeLagrange
- Add prelude and remove linter dead_code suppression by @GuillaumeLagrange
- Reduce logs verbosity of debug info and perf file serialization by @GuillaumeLagrange
- Remove unused execve event by @not-matthias in [#192](https://github.com/CodSpeedHQ/runner/pull/192)
- Add prelude by @not-matthias
- Print number of events written to disk by @not-matthias
- Switch to rust-cache to cache builds of the installed workspace binaries by @GuillaumeLagrange in [#191](https://github.com/CodSpeedHQ/runner/pull/191)
- Install exec-harness before runner tests tests by @GuillaumeLagrange
- Remove double metadata information by @GuillaumeLagrange
- Add link to relevant issue for codspeed-rust metadata by @GuillaumeLagrange
- Use fork supporting compressed events for linux-perf-data by @GuillaumeLagrange
- Run exec-harness tests in separate CI job to prevent fifo issues by @GuillaumeLagrange
- Downgrade flate because 1.1.7 was yanked by @GuillaumeLagrange


## Install codspeed-runner 4.8.0

### Install prebuilt binaries via shell script

```sh
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-installer.sh | sh
```

## Download codspeed-runner 4.8.0

| File | Platform | Checksum |
|--------|----------|----------|
| [codspeed-runner-aarch64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz) | ARM64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-aarch64-unknown-linux-musl.tar.gz.sha256) |
| [codspeed-runner-x86_64-unknown-linux-musl.tar.gz](https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz) | x64 MUSL Linux | [checksum](https://github.com/CodSpeedHQ/runner/releases/download/v4.8.0/codspeed-runner-x86_64-unknown-linux-musl.tar.gz.sha256) |


**Full Runner Changelog**: https://github.com/CodSpeedHQ/runner/blob/main/CHANGELOG.md


**Full Changelog**: https://github.com/CodSpeedHQ/action/compare/v4.7.0...v4.8.0
