---
title: Rustler Precompiled Action
date: 2023-09-23 03:10:38 +00:00
tags:
  - philss
  - GitHub Actions
draft: false
repo: philss/rustler-precompiled-action
marketplace: https://github.com/marketplace/actions/rustler-precompiled-action
version: v1.1.0
dependentsNumber: "49"
---


Version updated for **philss/rustler-precompiled-action** to version **v1.1.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **49** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rustler-precompiled-action) to find the latest changes.

## Release notes

## Added

- Add support for the `:variant` option. This is a way to build alternative versions
  for the same target. The idea is to build for different dependencies, or with different
  features.

  This feature is compatible with `RustlerPrecompiled` since version 0.7.
  See: https://github.com/philss/rustler_precompiled/releases/tag/v0.7.0

- Add the `:cargo-args` option. It enables the users to pass arbitrary flags
  to the `cargo build` command (this may be `cross build` sometimes).

- Support the `RUSTFLAGS` environment variable. It pass down options to the
  Rust compiler.

  Normally this env var is not needed, since it's possible to configure the
  same flags by configuring the `.cargo/config.toml` file in your project.

  Be aware that you need to set this env var before using this GitHub Action.
  It is also required to configure the `Cross.toml` file to read this env var.
  See the [guide](https://hexdocs.pm/rustler_precompiled/precompilation_guide.html)
  for details

- Add two env vars to make easier to debug:
  - `RUSTLER_PRECOMPILED_DEBUG_MODE`: sets the compilation profile to "debug" instead
    of the default "release".
  - `DRY_RUN`: avoid to run the build command, and instead print what would be executed.

## Pull requests

* Support Rustler's NIF version selection using features by @philss in https://github.com/philss/rustler-precompiled-action/pull/4
* Support building with a variant name by @philss in https://github.com/philss/rustler-precompiled-action/pull/5


**Full Changelog**: https://github.com/philss/rustler-precompiled-action/compare/v1.0.1...v1.1.0
