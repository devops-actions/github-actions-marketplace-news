---
title: Build unikernel images with Unikraft
date: 2024-04-05 19:25:41 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.2
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.2**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.2 (2024-04-05T15:47:42Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* 3cfb5204713cb68ef73228018813187c9aee3e41: feat(internal)!: Switch to multiple subdomains/domains (#1510) (@craciunoiuc)
* d72294ac1cdf4539a1fadbd6baf8fe1d58e293ed: refactor(cloud)!: Improve rollout strateg(ies) (#1511) (@craciunoiuc)
### 🚀 New Features
* ab6d511f9f504b37fbc664e166f745daf12221a2: feat(cloud): Display username in `quotas` subcommand (#1462) (@craciunoiuc)
* ab47dddffb75b70a5e4ccb5ef650f7dc58ec74bc: feat(cloud): volume initialization via data import (#1500) (@antoineco)
* ef1c315077cdb7ee7dfc685d115054d443a6c974: feat(compose): Add pause and unpause commands (#1477) (@nderjung)
* 3d775175c79ec3c369ab63858a1e38455aa92695: feat(compose): Add service-level volumes (#1455) (@nderjung)
* 021c237541000b98d7e7a3a013bc731369aecd9d: feat(compose): Use compose V2 (#1478) (@nderjung)
* 2dfbc185f75bf243318b492a53f011764e7777e9: feat(ls): Improve project status granularity (#1464) (@nderjung)
* fdb3dde94c8025986b52506d9e945a6fd318d2da: feat(qemu): Support both ports and networks (#1501) (@nderjung)
* 3efa01da8323fd1958c3d78e9f9fb855ecfda5da: feat(up): Introduce detach flag (#1465) (@nderjung)
* 170eb1cf1cf59117f678ae41094725c14c360b21: feat: Add pause command (#1476) (@nderjung)
* 043b50221d4e1349b650a3769d2de6e4301c5171: feat: Add recommended VSCode settings (#1472) (@craciunoiuc)
### 🐛 Bug Fixes
* 2d456161dd1deb08aa6f39e0630dcf45ba5a8fa9: fix(action): Elevate group permissions if unknown UID:GID are used (#1487) (@nderjung)
* cea6b6e51c924e48eee22c40d701916393d95541: fix(bridge): Error out if not able to assign interface name (#1508) (@craciunoiuc)
* 27e5120acde53d1ad00ae0e0caa6382f078c4ca0: fix(cloud): mitigate ignored paraprogress.Start err (#1509) (@antoineco)
* e6622a3735c9583f717f70ae1bac5a44e18e98d1: fix(config): Add potential values of log level and log type (#1471) (@craciunoiuc)
* 66cda507028c4da9afb056f153587a57fcecf1df: fix(internal): Improve help menu display (#1497) (@craciunoiuc)
* e7727ff59a073ad2218ee0b8fb6ab354da858d4d: fix(internal): Limit interface name size to os limit (#1506) (@nderjung)
* 769aa31127f06d1e5eaf97940b8f177d64f40b69: fix(internal): Misc fixes and features for commands (#1475) (@craciunoiuc)
* 7ecb1448f3e70f189f0dacdb809e92e672bdd9a5: fix(internal): Use waitgroups in custom waitgroup package (#1498) (@nderjung)
* 8a3d964378b888ff0d08d5287f466fb2f5f38817: fix(oci): Clean partial files on error (#1499) (@nderjung)
* e458be3e5eb6579e010201f5c2c51fd5f2b53a73: fix(run): Fix `nil` dereference when deriving volume strategy (#1502) (@craciunoiuc)
* eb7cd6c37e8d1b861406781062ebe28dc08c54a2: fix(tui): Pass in the context's stdin (#1512) (@craciunoiuc)
* 01b05fa899d6b1a7cfa2dd6e2c2780cab41466ce: fix(tui): Quit on timeout (#1516) (@craciunoiuc)
* 91f32ca938e5e29fa252feef5ccdb612da42d8ca: fix(unikraft): Correctly set target name when building (#1491) (@craciunoiuc)
* 6371181ba71f2625e590491b700dcd354242c978: fix(webinstall): Disable completion prompt (#1473) (@craciunoiuc)
* 5c23ec8d8fdcb998552f252fff98e778977f34ff: fix: Better handling of cmd propagation (#1470) (@craciunoiuc)
### 🤖 Bumps
* 0ca38b86b0a8f8c912241ab72e2fc5d6d3698457: build(deps): Bump taskmedia/action-conventional-commits from 1.1.14 to 1.1.15 (#1480) (@craciunoiuc)
* 41e0cdd834b98bb1c5e1fc2282e754cd20de2f09: gomod(deps): Bump github.com/docker/cli from 25.0.3+incompatible to 26.0.0+incompatible (#1482) (@craciunoiuc)
* 9c01f2d443bc457be4e6392e77986461d2efbd53: gomod(deps): Bump k8s.io/api from 0.29.2 to 0.29.3 (#1484) (@craciunoiuc)
* 3bf4283e56fa0f4eb542648c5db1f2b82d4a64cf: gomod(deps): Bump k8s.io/apiserver from 0.29.2 to 0.29.3 (#1483) (@craciunoiuc)
* cac2653c4073498cf2274fc56c3ac988870f7d6d: gomod(deps): Bump kraftkit.sh from 0.7.14 to 0.8.1 in /tools/go-generate-qemu-devices (#1486) (@craciunoiuc)
* bafa155e900b4e2501ca579ff36bbc9c1e45d8ae: gomod(deps): Bump oras.land/oras-go/v2 from 2.4.0 to 2.5.0 (#1485) (@craciunoiuc)
### 🐒 Miscellaneous
* 70d4b3e2a28a0c946b9edd5dd23750c1c2bcb71e: refactor(pkg): Wrap initial call to `Catalog` with `processtree` (#1514) (@craciunoiuc)
* 2f744a7987b63c82deb1de811f54dd3124bac435: refactor(quotas): Switch default output type to `list` (#1515) (@craciunoiuc)


