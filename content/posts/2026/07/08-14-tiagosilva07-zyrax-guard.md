---
title: Zyrax Guard
date: 2026-07-08 14:52:52 +00:00
tags:
  - tiagosilva07
  - GitHub Actions
draft: false
repo: https://github.com/tiagosilva07/zyrax-guard
marketplace: https://github.com/marketplace/actions/zyrax-guard
version: v0.11.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tiagosilva07/zyrax-guard** to version **v0.11.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zyrax-guard) to find the latest changes.

## What's Changed

## v0.11.1 — Windows upgrade parity via scoop

Windows was the only platform without a working `zyrax-guard upgrade`. Fixed.

### Added

- **Scoop bucket** — install the signed release binary on Windows:

  ```powershell
  scoop bucket add zyrax https://github.com/tiagosilva07/scoop-zyrax
  scoop install zyrax-guard
  ```

  Manifest hashes come from the release's signed `checksums.txt`, and the bucket is regenerated automatically on every release.

- **`upgrade` delegates on scoop installs** — Guard detects a scoop-managed install (`scoop\apps\zyrax-guard\…`) and runs `scoop update zyrax-guard`, the same way it already delegates to npm, Homebrew, and `go install`. `--method scoop` is accepted for manual override.

The standalone (non-scoop) Windows binary still upgrades manually via the Releases page — installing through scoop is now the recommended path on Windows.

**Full Changelog**: https://github.com/tiagosilva07/zyrax-guard/compare/v0.11.0...v0.11.1

