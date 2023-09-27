---
title: cargo-deny
date: 2023-09-27 19:09:53 +00:00
tags:
  - EmbarkStudios
  - GitHub Actions
draft: false
repo: EmbarkStudios/cargo-deny-action
marketplace: https://github.com/marketplace/actions/cargo-deny
version: v1.5.5
dependentsNumber: "2,483"
---


Version updated for **EmbarkStudios/cargo-deny-action** to version **v1.5.5**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **2,483** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cargo-deny) to find the latest changes.

## Release notes

### Added
- [PR#545](https://github.com/EmbarkStudios/cargo-deny/pull/545) added the ability to specify additional license exceptions via [additional configuration files](https://embarkstudios.github.io/cargo-deny/checks/licenses/cfg.html#additional-exceptions-configuration-file).
- [PR#549](https://github.com/EmbarkStudios/cargo-deny/pull/549) added the [`bans.build`](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-build-field-optional) configuration option, opting in to checking for [file extensions](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-script-extensions-field-optional), [native executables](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-executables-field-optional), and [interpreted scripts](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-interpreted-field-optional). This resolved [#43](https://github.com/EmbarkStudios/cargo-deny/issues/43).

### Changed
- [PR#557](https://github.com/EmbarkStudios/cargo-deny/pull/557) introduced changes to how [`dev-dependencies`](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#development-dependencies) are handled. By default, crates that are only used as dev-dependencies (ie, there are no normal nor build dependency edges linking them to other crates) will no longer be considered when checking for [`multiple-versions`](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-multiple-versions-field-optional) violations. This can be re-enabled via the [`bans.multiple-versions-include-dev`](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-multiple-versions-include-dev-field-optional) config field. Additionally, licenses are no longer checked for `dev-dependencies`, but can be re-enabled via [`licenses.include-dev`](https://embarkstudios.github.io/cargo-deny/checks/licenses/cfg.html#the-include-dev-field-optional) the config field. `dev-dependencies` can also be completely disabled altogether, but this applies to all checks, including `advisories` and `sources`, so is not enabled by default. This behavior can be enabled by using the [`exclude-dev`](https://embarkstudios.github.io/cargo-deny/checks/cfg.html#the-exclude-dev-field-optional) field, or the `--exclude-dev` command line flag. This change resolved [#322](https://github.com/EmbarkStudios/cargo-deny/issues/322), [#329](https://github.com/EmbarkStudios/cargo-deny/issues/329), [#413](https://github.com/EmbarkStudios/cargo-deny/issues/413) and [#497](https://github.com/EmbarkStudios/cargo-deny/issues/497).

### Fixed
- [PR#549](https://github.com/EmbarkStudios/cargo-deny/pull/549) fixed [#548](https://github.com/EmbarkStudios/cargo-deny/issues/548) by correctly locating cargo registry indices from an git ssh url.
- [PR#549](https://github.com/EmbarkStudios/cargo-deny/pull/549) fixed [#552](https://github.com/EmbarkStudios/cargo-deny/issues/552) by correctly handling signal interrupts and removing the advisory-dbs lock file.
- [PR#549](https://github.com/EmbarkStudios/cargo-deny/pull/549) fixed [#553](https://github.com/EmbarkStudios/cargo-deny/issues/553) by adding the `native-certs` feature flag that can enable the OS native certificate store.

### Deprecated
- [PR#549](https://github.com/EmbarkStudios/cargo-deny/pull/549) moved `bans.allow-build-scripts` to [`bans.build.allow-build-scripts`](https://embarkstudios.github.io/cargo-deny/checks/bans/cfg.html#the-allow-build-scripts-field-optional). `bans.allow-build-scripts` is still supported, but emits a warning.
