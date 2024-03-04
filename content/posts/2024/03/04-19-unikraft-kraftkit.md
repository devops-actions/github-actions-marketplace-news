---
title: Build unikernel images with Unikraft
date: 2024-03-04 19:23:10 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.7.12
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.7.12**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.7.12 (2024-03-04T15:44:44Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* fe137bda029a3f1bb748eeacbaf6b4ebe83a6e3e: feat(list)!: Expose `--remote` and `--local` flags (#1365) (@craciunoiuc)
* 9078443a9abf720afa0eb1d97a23fc7f141f5460: refactor(start)!: Stop the unikernel virtual machine on Ctrl+C (#1351) (@craciunoiuc)
### 🚀 New Features
* 50f6277f2a3faf956918a158e9837fa845159a2e: feat(compose): Add compose build subommand (#1135) (@nderjung)
* f0ffe985374142a05885963416c49a76e17a7eee: feat(oci): Adjustments to log-messages and small fixes (#1356) (@craciunoiuc)
### 🐛 Bug Fixes
* ea81a9842a46d1844e5bf4aaed26b4f279c937c7: fix(actions): Correctly escape variables in user-provided code (#1358) (@craciunoiuc)
* a61c919f99f64299c15c65c456888ec9cdf0bc79: fix(oci): Correct order of plat/arch in name (#1360) (@craciunoiuc)
* 153041e9870f651928508c2d7d59a95943d5c8e2: fix(oci): Correctly handle "fullrefs" without an identifier (#1359) (@craciunoiuc)
* 4b35d86783920ce832a547af460bd9400f651c54: fix(run): Adjust error message (#1361) (@craciunoiuc)
* 3197995f93991ba24aa370b95748bf4e7386f362: fix(run): Correct log message with existing machine name (#1363) (@craciunoiuc)
* dbee4fb3cd6f55cbb3ab765c0d5b563bff4c6a9f: fix(run): Improve filter and selection process of potential packages (#1348) (@craciunoiuc)
* 64cb63f8ccc8ba4d667c05b0baaca4a76c97bafb: fix(run): Improve selection and output of package runner (#1357) (@craciunoiuc)
* 531f3e86515f1112601b9f4f755f2745c1ea9145: fix(run): Warn early if the requested ports are used by another machine (#1353) (@craciunoiuc)
* 04410b9edc1ac19d766c2b82cd7fd39418ab1ff9: fix(tools): Correctly prepend Mac lines (#1362) (@nderjung)
* 3266c84fe437e7cf5cbdba476e924a75e74648ad: fix(workflows): Fix typo in webinstall workflow (#1366) (@nderjung)
* ab42ef77e694a6794f123172d8b76a39b49ba0c7: fix: wrong log messages (#1339) (@craciunoiuc)
### 🤖 Bumps
* b99c58b342681282e7b122ecf38053f7f2f3c56a: build(deps): Bump taskmedia/action-conventional-commits from 1.1.13 to 1.1.14 (#1344) (@nderjung)
* d84026223316a96c3665fd8c9fe9e44b4ffee0bd: gomod(deps): Bump github.com/shirou/gopsutil/v3 from 3.24.1 to 3.24.2 (#1345) (@nderjung)
* fd2be0715c1e28541bcbfda4d9d672703bdcb593: gomod(deps): Bump github.com/stretchr/testify from 1.8.4 to 1.9.0 (#1346) (@nderjung)
* c86b2414e1879dafc0574ac79bc28556c908aa3e: gomod(deps): Bump kraftkit.sh from 0.7.7 to 0.7.11 in /tools/go-generate-qemu-devices (#1347) (@nderjung)
### 🐒 Miscellaneous
* dc89aa91e9bfa2f7dcabee4ad19e185a1ba69e5f: refactor(manifest): Upgrade log to debug w.r.t. catalog result and reword (#1349) (@craciunoiuc)
* 33d29e90feea8bbfc631bacf7dfabaa295f03fe5: refactor(pkg): Use `String` over `Name` and format type (#1364) (@craciunoiuc)
* e748a57a79fe299a53278bd9aa3760c263a96106: refactor(ps): Show ports as default output (#1350) (@craciunoiuc)
* 288141ef6584c6bf949418a864546a69380a6600: refactor(run): Reword and adjust log-level for runner candidate selection (#1354) (@craciunoiuc)
* dc04af51d61b83296679b93db07087f61a72f1a8: refactor(run): Wrap building the rootfs in processtree TUI (#1352) (@craciunoiuc)


