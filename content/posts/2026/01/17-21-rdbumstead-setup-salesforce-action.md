---
title: Setup Salesforce CLI
date: 2026-01-17 21:24:47 +00:00
tags:
  - rdbumstead
  - GitHub Actions
draft: false
repo: https://github.com/rdbumstead/setup-salesforce-action
marketplace: https://github.com/marketplace/actions/setup-salesforce-cli
version: v2.2.0
dependentsNumber: "1"
---


Version updated for **https://github.com/rdbumstead/setup-salesforce-action** to version **v2.2.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-salesforce-cli) to find the latest changes.

## Action Summary

The "Setup Salesforce CLI" GitHub Action provides a fast, secure, and reliable way to set up Salesforce CLI in CI/CD pipelines. It automates tasks like CLI installation, authentication, caching, and plugin management, solving common issues such as slow setup times, fragile authentication, and lack of flexibility in workflows. With features like multi-platform support, extensibility, and smart caching, it is optimized for enterprise-level Salesforce development and deployment.

## Release notes

### 🚀 New Features - Performance & Caching

- **OS-Specific Caching** - Cache paths are now partitioned by operating system (Linux/macOS/Windows) to prevent cross-platform corruption and improve hit rates
- **Optimized Version Resolution** - Uses `npm view` to resolve "latest" versions 10x faster than a full install, with 10s timeout protection against network hangs
- **Smart Hash Detection** - Automatically uses `sha256sum` or `shasum -a 256` depending on the runner OS
- **CLI Health Verification** - Automatic health check after CLI installation validates core plugins are loaded and functional
  - Detects broken installations immediately instead of failing later in workflows
  - Adds ~100ms overhead for significantly improved reliability
  - Runs inline with installation step for fast feedback

### Performance 🚀

- **Setup time**: ~25-55s (cached), ~1.5-3 min (first run) on Ubuntu/macOS
- **Cache hit rate**: >95% across all platforms
- **Health check overhead**: ~0.1s (negligible)
- **Reliability**: Broken installations caught immediately
- **Platform note**: Windows runners are 10-15x slower; Ubuntu recommended for production CI/CD

### 🛡️ Reliability & Retries

- **Resilient Installation Logic** - All network-dependent steps now include 3-attempt retries with exponential backoff:
  - Salesforce CLI (`@salesforce/cli`)
  - `sfdx-git-delta`
  - `@salesforce/plugin-code-analyzer`
  - Custom plugins (each plugin retries individually)
- **Improved Cache Fallback** - When npm registry is unreachable, cache keys now use monthly time-based rotation (`latest-YYYY-MM`) instead of static "latest"
  - Prevents indefinite cache staleness during npm outages
  - Automatically rotates monthly to ensure fresh CLI versions
  - Provides clearer error messaging about fallback behavior

### Added ➕

- **Formal Access Token Support** - Added explicit support for `auth_method: access-token` using the `sf org login access-token` command (replaces legacy logic)
- **Access Token Default** - `allow_access_token_auth` now defaults to `true`, making this a safe non-breaking change
- **New Tests** (`test-access-token-auth`, `test-multiple-plugins`) to validate complex scenarios
- **Enhanced Testing** - Added comprehensive CLI health checks to critical and cross-platform test suites
  - Health checks now run on all platforms (Ubuntu, macOS, Windows)
  - Validates CLI version, core plugins, help system, config commands, and org listing
  - Total test coverage increased from ~90% to ~95%
- **Workflows**: All test workflows now support manual `workflow_dispatch` triggers for on-demand validation.

### Changed 🔧

- **Test Architecture Overhaul** - Replaced monolithic "Quick Tests" (`test.yml`) with 4 dedicated workflows (`test-critical`, `test-plugins`, `test-auth`, `test-cross-platform`)
- **Improved Plugin Verification** - Test suite now uses `jq` regex matching to reliably detect namespaced plugins
- **Better CLI Validation** - Switched verification commands to `sf plugins` to ensure core plugin availability
- **Refactored Retry Tests** - Renamed `test-network-retry` to `test-cli-install-retry` for clarity
- **Enhanced Error Messages** - Source directory validation now includes actionable troubleshooting tips
  - Clarifies that `force-app` is auto-created while custom directories must exist
  - Suggests checking for typos in `source_dirs` input
  - Reduces support burden with self-service guidance

### Fixed 🐞

- **Windows Permissions** - Fixed file permission warnings for temporary auth files (`authurl.txt`, `access_token.txt`) on Windows runners
- **Instance URL Handling** - Auth logic now correctly strips trailing slashes from `instance_url` to prevent connection errors
- **Custom Plugin Loops** - Fixed bash iteration logic to correctly install multiple comma-separated plugins
- **Source Flags** - Output verification now strictly checks for the `--source-dir` format
- **Dependencies** - `authurl.txt` and `access_token.txt` added to `.gitignore`
- **Test Consistency** - Standardized boolean input format across all test workflows (`skip_auth: "true"` instead of mixed `true`/`"true"`)
