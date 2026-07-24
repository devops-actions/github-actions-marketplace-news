---
title: easySFTP
date: 2026-07-24 06:31:35 +00:00
tags:
  - eiserv
  - GitHub Actions
draft: false
repo: https://github.com/eiserv/easySFTP
marketplace: https://github.com/marketplace/actions/easysftp
version: v3.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  easySFTP is a fast, secure, and user-friendly GitHub Action for deploying files to an SFTP server. It handles common deploy tasks with minimal configuration and can be expanded for more complex deployments using a config file. The action supports multiple deployment targets, various authentication methods, and advanced features like file skipping, deletion guards, and performance tuning.
---


Version updated for **https://github.com/eiserv/easySFTP** to version **v3.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/easysftp) to find the latest changes.

## Action Summary

easySFTP is a fast, secure, and user-friendly GitHub Action for deploying files to an SFTP server. It handles common deploy tasks with minimal configuration and can be expanded for more complex deployments using a config file. The action supports multiple deployment targets, various authentication methods, and advanced features like file skipping, deletion guards, and performance tuning.

## What's Changed

## [3.0.0](https://github.com/eiserv/easySFTP/compare/v2.2.2...v3.0.0) (2026-07-23)


### ⚠ BREAKING CHANGES

- server was renamed to host, uploads was replaced by source + target, strategy is now mode, ignore is now exclude, host-key-fingerprint is now host-key, config-file is now config.
- Multiple upload mappings require a config file; inline mode supports exactly one deployment.
- All advanced/tuning inputs (concurrency, retries, timeout, stall-timeout, sftp-request-concurrency, sync-fast-path, skip-unchanged, manifest-name, dir-mode, file-mode, preserve-times, max-deletes) moved into the config file.
- All proxy/bastion connection inputs moved into the config file (connection.proxy); only the proxy credentials remain inputs.
- The config file format changed: version: 3, connection settings live in the file, and targets became named deployments.
- Host key verification is required. A run without host-key / known-hosts fails unless allow-any-host-key: true is set explicitly (v2 printed a warning and accepted any key).
- build-mode was removed; the build mode is selected automatically from the action ref (release tags download the verified prebuilt binary, development refs build from source).
- The default log no longer prints one line per file; per-file output moved to log-level: verbose (see [Logging changes](https://eiserv.github.io/easySFTP/docs.html#migration-v3/logging-changes)).
- The delete tombstone input from v1 was finally removed.

### Features

* v3 configuration model (inline vs config file, no mixed mode) ([#124](https://github.com/eiserv/easySFTP/issues/124)) ([2887530](https://github.com/eiserv/easySFTP/commit/2887530782498233207a4d54ec445ecc75b86e37)), closes [#123](https://github.com/eiserv/easySFTP/issues/123)
