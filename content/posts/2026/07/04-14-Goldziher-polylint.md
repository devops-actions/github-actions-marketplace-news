---
title: Setup poly CLI
date: 2026-07-04 14:36:50 +00:00
tags:
  - Goldziher
  - GitHub Actions
draft: false
repo: https://github.com/Goldziher/polylint
marketplace: https://github.com/marketplace/actions/setup-poly-cli
version: v0.4.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Goldziher/polylint** to version **v0.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-poly-cli) to find the latest changes.

## What's Changed


### Added

- **Colored `poly hooks install` / `uninstall` output** — a green ✓ header with
  the hook count and the (relative) hooks directory, then one line per hook name,
  replacing the flat list of absolute paths.

### Changed

- **Installed git-hook shims resolve `poly` from `PATH`** rather than baking in an
  absolute path to the binary, so a hook always runs whatever `poly` is current
  (a recorded absolute path could pin a stale or moved build). When `poly` is not
  on `PATH` the shim now fails with a clear, actionable message and a non-zero exit
  instead of proceeding as though the hook had passed. Re-run `poly hooks install`
  to migrate existing shims.

### Fixed

- Native-toolchain formatter output is normalized to LF line endings; some
  first-party CLIs emit CRLF on Windows, which made output platform-dependent.


