---
title: Differential ShellCheck
date: 2023-10-03 11:14:40 +00:00
tags:
  - redhat-plumbers-in-action
  - GitHub Actions
draft: false
repo: redhat-plumbers-in-action/differential-shellcheck
marketplace: https://github.com/marketplace/actions/differential-shellcheck
version: v5.0.0
dependentsNumber: "243"
---


Version updated for **redhat-plumbers-in-action/differential-shellcheck** to version **v5.0.0**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **243** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/differential-shellcheck) to find the latest changes.

## Release notes

# What's Changed

## Breaking

* drop: `ignored-codes` input :no_entry_sign:  (#290) @jamacku
* drop: `shell-scripts` input :no_entry_sign:  (#288) @jamacku

## New

* Show more context for ShellCheck defects and fixes in console output :floppy_disk:  (#300) @jamacku
* Add support for subdirectory scanning :file_folder:  (#294) @jamacku
* Add Statistics of defect severities :bar_chart:  (#233) @jamacku
* Show scanned files in console by default 📜 (#285) @jamacku

## Bug Fixes

* Fix autodetection of shell scripts in DEBUG mode :kiwi_fruit:  (#299) @jamacku
* Always gather defect statistics :chart_with_downwards_trend:  (#298) @jamacku
* Fix count of scanned files in job Summary when running on push event :1234:  (#297) @jamacku
* Set correct version of ShellCheck in SARIF :coconut:  (#296) @jamacku
* fix: detection of changed files that might cause failure on some paths :lollipop:  (#286) @jamacku

## Maintenance

* Make the version of the used GHA more visible :eyes:  (#320) @jamacku
* Update `csutils` (`csdiff` and `csgrep`) to 3.0.4 (#319) @jamacku
* Update `csutils` (`csdiff`) to 3.0.3 (#293) @jamacku

## Documentation

* Improve documentation examples and update feature showcase :camera:  (#301) @jamacku
* Add section documenting VS Code integration :woman_technologist:  (#311) @jamacku
* doc: Explain format of path list options (#310) @VladimirSlavik

## Automation and CI changes

* Monthly dependabot updates :robot:  (#274) @jamacku

## Dependency Updates

<details>
<summary>39 changes</summary>

* build(deps): bump fedora from `61f921e` to `6fc00f8` (#312) @dependabot
* build(deps): bump actions/checkout from 3.6.0 to 4.1.0 (#318) @dependabot
* build(deps): bump docker/build-push-action from 4.1.1 to 5.0.0 (#317) @dependabot
* build(deps): bump docker/login-action from 2.2.0 to 3.0.0 (#316) @dependabot
* build(deps): bump docker/setup-buildx-action from 2.10.0 to 3.0.0 (#315) @dependabot
* build(deps): bump actions/upload-artifact from 3.1.2 to 3.1.3 (#314) @dependabot
* build(deps): bump github/codeql-action from 2.21.5 to 2.21.9 (#313) @dependabot
* build(deps): bump test/test_helper/bats-assert from `42e4d86` to `e2d855b` (#302) @dependabot
* build(deps): bump test/test_helper/bats-support from `3c8fadc` to `9bf10e8` (#303) @dependabot
* build(deps): bump test/bats from `fb7d15b` to `360c1ea` (#304) @dependabot
* build(deps): bump test/test_helper/bats-file from `cb914cd` to `048aa4c` (#305) @dependabot
* build(deps): bump github/codeql-action from 2.21.3 to 2.21.5 (#306) @dependabot
* build(deps): bump actions/checkout from 3.5.3 to 3.6.0 (#307) @dependabot
* build(deps): bump docker/setup-buildx-action from 2.9.1 to 2.10.0 (#308) @dependabot
* build(deps): bump fedora from `a134743` to `61f921e` (#292) @dependabot
* build(deps): bump github/codeql-action from 2.21.2 to 2.21.3 (#291) @dependabot
* build(deps): bump docker/setup-buildx-action from 2.8.0 to 2.9.1 (#278) @dependabot
* build(deps): bump github/codeql-action from 2.20.1 to 2.21.2 (#279) @dependabot
* build(deps): bump test/bats from `f4552f1` to `fb7d15b` (#280) @dependabot
* build(deps): bump test/test_helper/bats-assert from `44913ff` to `42e4d86` (#281) @dependabot
* build(deps): bump test/test_helper/bats-file from `c0f822a` to `cb914cd` (#282) @dependabot
* build(deps): bump ossf/scorecard-action from 2.1.3 to 2.2.0 (#276) @dependabot
* build(deps): bump release-drafter/release-drafter from 5.23.0 to 5.24.0 (#275) @dependabot
* build(deps): bump fedora from `6335d2c` to `a134743` (#271) @dependabot
* build(deps): bump docker/setup-buildx-action from 2.5.0 to 2.8.0 (#273) @dependabot
* build(deps): bump github/codeql-action from 2.3.6 to 2.20.1 (#272) @dependabot
* build(deps): bump test/bats from `7421acf` to `f4552f1` (#270) @dependabot
* build(deps): bump docker/build-push-action from 4.0.0 to 4.1.1 (#267) @dependabot
* build(deps): bump actions/checkout from 3.5.2 to 3.5.3 (#262) @dependabot
* build(deps): bump docker/login-action from 2.1.0 to 2.2.0 (#264) @dependabot
* build(deps): bump fedora from `a1aff3e` to `6335d2c` (#257) @dependabot
* build(deps): bump github/codeql-action from 2.3.5 to 2.3.6 (#258) @dependabot
* build(deps): bump test/bats from `fdddadf` to `7421acf` (#259) @dependabot
* build(deps): bump codecov/codecov-action from 3.1.3 to 3.1.4 (#253) @dependabot
* build(deps): bump github/codeql-action from 2.3.3 to 2.3.5 (#254) @dependabot
* build(deps): bump test/bats from `4417a96` to `fdddadf` (#255) @dependabot
* build(deps): bump test/test_helper/bats-file from `805ffb7` to `c0f822a` (#256) @dependabot
* build(deps): bump github/codeql-action from 2.3.2 to 2.3.3 (#251) @dependabot
* build(deps): bump redhat-plumbers-in-action/advanced-issue-labeler from 2.0.4 to 2.0.6 (#252) @dependabot
</details>

**Full Changelog**: https://github.com/redhat-plumbers-in-action/differential-shellcheck/compare/v4.2.2...v5.0.0

