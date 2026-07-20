---
title: easySFTP
date: 2026-07-20 07:43:05 +00:00
tags:
  - eiserv
  - GitHub Actions
draft: false
repo: https://github.com/eiserv/easySFTP
marketplace: https://github.com/marketplace/actions/easysftp
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  easySFTP is a fast, secure, and simple GitHub Actions action that automates the process of uploading build output to any SFTP server. It offers features such as host key verification, atomic file uploads, skip unchanged files, delete safety guards, and multiple target deployments. The action uses a prebuilt Go binary for fast execution and supports Linux, macOS, and Windows runners without requiring Docker.
---


Version updated for **https://github.com/eiserv/easySFTP** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/easysftp) to find the latest changes.

## Action Summary

easySFTP is a fast, secure, and simple GitHub Actions action that automates the process of uploading build output to any SFTP server. It offers features such as host key verification, atomic file uploads, skip unchanged files, delete safety guards, and multiple target deployments. The action uses a prebuilt Go binary for fast execution and supports Linux, macOS, and Windows runners without requiring Docker.

## What's Changed

## [2.1.0](https://github.com/eiserv/easySFTP/compare/v2.0.1...v2.1.0) (2026-07-19)


### Features

* accept OpenSSH known_hosts entries via a new known-hosts input ([#88](https://github.com/eiserv/easySFTP/issues/88)) ([bf9d5d7](https://github.com/eiserv/easySFTP/commit/bf9d5d7edd5434c000dec50594c336b125a38c5a)), closes [#7](https://github.com/eiserv/easySFTP/issues/7)
* add stall-timeout to fail fast when transfers stop progressing ([#89](https://github.com/eiserv/easySFTP/issues/89)) ([08359e8](https://github.com/eiserv/easySFTP/commit/08359e8031cf8f8edb89747c86e2f81eac2e739f)), closes [#45](https://github.com/eiserv/easySFTP/issues/45)
* added github pages site ([7031633](https://github.com/eiserv/easySFTP/commit/7031633ba51aae8e3cf2ab40121baed23d58ae0e))
* **overlay:** opt-in skip-unchanged skips same-size remote files ([#87](https://github.com/eiserv/easySFTP/issues/87)) ([8986191](https://github.com/eiserv/easySFTP/commit/89861912b8aa3fe7e6da3e783daddbe07834c622)), closes [#24](https://github.com/eiserv/easySFTP/issues/24)
* reconnect when the SSH connection drops mid-run ([#90](https://github.com/eiserv/easySFTP/issues/90)) ([66a780b](https://github.com/eiserv/easySFTP/commit/66a780b50f0b105ad68224c596cb13512a6934bd)), closes [#43](https://github.com/eiserv/easySFTP/issues/43)
* **sync:** persist a merged manifest when a run fails partway ([#86](https://github.com/eiserv/easySFTP/issues/86)) ([6a6a90d](https://github.com/eiserv/easySFTP/commit/6a6a90d1ed4ace19b99df55f28b6519a7f6dc231)), closes [#47](https://github.com/eiserv/easySFTP/issues/47)


### Bug Fixes

* renamed the self-test fixture dir to selftest-site/ in .github/workflows/ci.yml ([9619df7](https://github.com/eiserv/easySFTP/commit/9619df7d1f2516d82b9f90773eea7f958c358f1b))


### Performance

* **sync:** derive remote directories from the actual upload set ([#85](https://github.com/eiserv/easySFTP/issues/85)) ([37bc54d](https://github.com/eiserv/easySFTP/commit/37bc54d53fa337aca81dec8de3c590106f261120)), closes [#69](https://github.com/eiserv/easySFTP/issues/69)
