---
title: cargo-deny
date: 2024-03-05 19:19:58 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v1.6.0
dependentsNumber: "2,925"
---


Version updated for **EmbarkStudios/cargo-deny-action** to version **v1.6.0**.
- This action is used across all versions by **2,925** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Release notes

## action changes
- Color output is now always enabled so that colors show up in the action output.

## 0.14.15
### Added
- [PR#618](https://github.com/EmbarkStudios/cargo-deny/pull/618) added metadata notes to diagnostics when a license is rejected, as well as removing span information for accepted licenses unless the log level is `info` or higher to make the diagnostic clearer by default.

## 0.14.14
### Fixed
- [PR#617](https://github.com/EmbarkStudios/cargo-deny/pull/617) resolved [#576](https://github.com/EmbarkStudios/cargo-deny/issues/576) by updating the SPDX license list to 3.23.

## 0.14.13
### Fixed
- [PR#615](https://github.com/EmbarkStudios/cargo-deny/pull/615) fixed an issue introduced in [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) where the various `bans` diagnostic codes could not have their lint level changed via the CLI. It also introduced the `deprecated` diagnostic code.

## 0.14.12
### Changed
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) did a major refactor of configuration, both how it is deserialized and changing (hopefully improving) many options.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) moved `targets`, `exclude`, `all-features`, `features`, `no-default-features`, and `exclude` into the `[graph]` table.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) moved `feature-depth` into the `[output]` table.

### Added
- [PR#613](https://github.com/EmbarkStudios/cargo-deny/pull/613) added support for [basic shell expansion](https://embarkstudios.github.io/cargo-deny/checks/advisories/cfg.html#the-db-path-field-optional) to `advisories.db-path`, which expands support beyond just `~` to include environment variable expansion.

### Fixed
- [PR#601](https://github.com/EmbarkStudios/cargo-deny/pull/601) resolved [#600](https://github.com/EmbarkStudios/cargo-deny/issues/600) by outputting the correct spans when a license was both allowed and denied.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) resolved [#264](https://github.com/EmbarkStudios/cargo-deny/issues/264) be replacing `toml` and `serde` with `toml-span`.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) resolved [#539](https://github.com/EmbarkStudios/cargo-deny/issues/539) by simplifying the very common `name = "<crate_name>", version = "<requirements>"` used to target specific crates into either a plain [package spec string](https://embarkstudios.github.io/cargo-deny/checks/cfg.html#string-format) or the simpler `crate = "<package spec>"`.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) resolved [#578](https://github.com/EmbarkStudios/cargo-deny/issues/578) by adding a `reason = "<reason>"` field to _many_ fields within the configuration that are provided in diagnostics. `[bans.deny]` also has an additional `use-instead = "<url/crate_name>"`. [PR#610](https://github.com/EmbarkStudios/cargo-deny/pull/610) did this for the `advisories.ignore` field.
- [PR#605](https://github.com/EmbarkStudios/cargo-deny/pull/605) resolved [#579](https://github.com/EmbarkStudios/cargo-deny/issues/579) by allowing yanked crates to be ignored by specifying a [PackageSpec](https://embarkstudios.github.io/cargo-deny/checks/cfg.html#package-specs) in the `[advisories.ignore]` array.

### Deprecated
- [PR#606](https://github.com/EmbarkStudios/cargo-deny/pull/606) and [PR#611](https://github.com/EmbarkStudios/cargo-deny/pull/611) together deprecated several fields listed below. See [PR#611](https://github.com/EmbarkStudios/cargo-deny/pull/611) for how to change your config to opt-in to the new behavior that will become the default when the deprecated fields are removed in a future minor version.
  - `[advisories]`
    - `vulnerability`
    - `unmaintained`
    - `unsound`
    - `notice`
    - `severity-threshold`
  - `[licenses]`
    - `unlicensed`
    - `allow-osi-fsf-free`
    - `copyleft`
    - `default`
    - `deny`
