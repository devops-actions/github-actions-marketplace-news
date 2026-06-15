---
title: Tinted Builder Rust
date: 2026-06-15 15:57:55 +00:00
tags:
  - tinted-theming
  - GitHub Actions
draft: false
repo: https://github.com/tinted-theming/tinted-builder-rust
marketplace: https://github.com/marketplace/actions/tinted-builder-rust
version: v0.21.0
dependentsNumber: "2"
actionType: Docker
---


Version updated for **https://github.com/tinted-theming/tinted-builder-rust** to version **v0.21.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/tinted-builder-rust) to find the latest changes.

## What's Changed

### Fixed

- `build` no longer fails with `E111` on non-scheme files in the schemes
  directory (e.g. `LICENSE`, `README.md`) or on hidden entries such as
  `.yamllint.yml` / `.github/**`; these are skipped during discovery. Files
  with an unrecognized extension *inside* a `base16`/`base24`/`tinted8`
  directory still surface an error.

### Added

- Expose `get_scheme_files_by_name()` for `<system>/`-subdir keyed scheme
  discovery, so downstreams can share one walker implementation.
