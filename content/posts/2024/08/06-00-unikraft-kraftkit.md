---
title: Build unikernel images with Unikraft
date: 2024-08-06 00:51:23 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.9.1
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.9.1**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.9.1 (2024-08-05T16:24:34Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* 2e45210089d18acb58884cdbec15057bc3b1389b: fix!: Propagate Docker auths to BuildKit (#1820) (@craciunoiuc)
### 🐛 Bug Fixes
* ab0553e041eb4a1250c2358bc5ce210b516d665e: fix(Makefile): Pin version to match new package version (#1828) (@nderjung)
* e4594faa01cc7080b3ce12e33f0ed920bdac679e: fix(cloud): Correctly set default enum attributes (#1819) (@craciunoiuc)
* 30d6ab4c1dc1a6e00efd6c17cd0902992783c22b: fix(kraft): Handle better error messages and prevent preemptive checks (#1822) (@craciunoiuc)
* 20404bdff480cbbdc1d05a64f397f300ede9cbc9: fix(workflows): Move setup to correct place (#1830) (@nderjung)
* 9d468e931a549d3ea573715013b4baa87ef33cff: fix(workflows): Setup docker in the actions (#1829) (@nderjung)
* 1fc64fbbc56fb98f4590b1fdaeeb4fbffe8edd28: fix: Testing fixes and adapting to the latest version (#1811) (@nderjung)
* 7a7741a489b6d1b50443751894d72536666ebc21: fix: Update help information & others (#1812) (@craciunoiuc)
### 🤖 Bumps
* be9e46d9620e219ce7e334dae6659d21ab63cd35: gomod(deps): Bump github.com/cyphar/filepath-securejoin from 0.3.0 to 0.3.1 (#1815) (@nderjung)
* 6214120f06e14d4e56c9687019dba0d41605c5dd: gomod(deps): Bump github.com/docker/cli from 27.0.3+incompatible to 27.1.1+incompatible (#1813) (@nderjung)
* 21f38dfbdc9946506b9d9beb93f6032015afc657: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.19.0 to 2.19.1 (#1825) (@nderjung)
* 33870bad120a0a93497d4e8e8a23b9dec753e659: gomod(deps): Bump github.com/onsi/gomega from 1.33.1 to 1.34.0 (#1816) (@craciunoiuc)
* 631cea9447ab27f05e2b478eeef0ef78e422fe93: gomod(deps): Bump kraftkit.sh from 0.8.7 to 0.9.0 in /tools/go-generate-qemu-devices (#1817) (@craciunoiuc)
* 15ccd49176e58c8b82467b45aaff155771834c72: gomod(deps): Bump sigs.k8s.io/kustomize/kyaml from 0.17.1 to 0.17.2 (#1824) (@nderjung)


