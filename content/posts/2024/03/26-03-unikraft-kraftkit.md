---
title: Build unikernel images with Unikraft
date: 2024-03-26 03:26:24 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.0
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.0**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.0 (2024-03-25T21:28:57Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* c1af2258e87c463b3d8203e452c0718e288c233b: feat!: Named services & Log Pagination & Fixes (#1413) (@craciunoiuc)
* 8ff971a352f37774d3716d10dd5c32c6f29a94d4: style(internal)!: Switch to uniform 'wait' flag for start/stop (#1424) (@craciunoiuc)
### 🚀 New Features
* 9245ba614e8b25381320fe179db9a91eba9020a1: feat(compose): Introduce create, start, stop subcommands (#1398) (@nderjung)
* 8f6a71e36049ed2e1102a64e6f9dc8cc595e1be8: feat(internal): Add default timeout for process calls (#1453) (@craciunoiuc)
* 05738a327f68501ea09555fcaa2cb796a35384ed: feat(internal): Cache checking for updates for speed (#1436) (@craciunoiuc)
* 7d0468c8687404e0d49b6c29e90499ac211d65f2: feat(internal): Enable experimental rootfs compression (#1438) (@craciunoiuc)
* 8134a7091b6762b2767125c05329dfcdb5bc68c8: feat(internal): Introduce 'kraft cloud compose' up/down cmds (#1427) (@craciunoiuc)
* 413e34fac9647965ee8d12692f064fbc912949a3: feat: Introduce compose logs subcommand (#1379) (@nderjung)
* c2d3465aaafc1eb0762275cb02cc6d8c8ad97acd: feat: new service domains attribute for multi-dns (#1439) (@craciunoiuc)
### 🐛 Bug Fixes
* 82deacc3fa69439dd53e0c829d7f29901e9d63de: fix(cloud): suppressed API errors in delete responses (#1451) (@craciunoiuc)
* 6ceeeb28d8c618ca5b3ea96c1acbd81ff461b71f: fix(initrd): Also truncate initrd file if it exists (#1435) (@craciunoiuc)
* 634fe26aa3a0688b87c9c01ad3f2d406007eeee4: fix(internal): Adapt name check to new request API (#1452) (@craciunoiuc)
* c98ec79bd51f7ab93b2a9094f4c76d5120837767: fix(internal): Display kernel arguments also (#1431) (@craciunoiuc)
* f33d416601aaf111f63bfa150206e01070f535cc: fix(internal): Do not error on cancels (#1414) (@craciunoiuc)
* 47887f8549940d438232f9b75ac6392a7d2b740d: fix(internal): Do not error on empty flag (#1422) (@craciunoiuc)
* e7494bc4b86b2d42c8f656a023e65d1f055119bc: fix(internal): Require at least 1Mi for running (#1425) (@nderjung)
* da5a87243a834ade41572e156c11cddb1271c8e6: fix(internal): Several fixes to the rollout process (#1430) (@craciunoiuc)
* 1944fffec67cbe5aea3bcb8b71bef72a3188f9ec: fix(ukargparse): Split only first = of kernel args (#1408) (@craciunoiuc)
* d639e577ca6085e2127e23571ae713484edb9f07: fix(webinstall): Several fixes and features (#1412) (@nderjung)
### 🤖 Bumps
* d78086c7265a5a9fa7cf3a5a9ea2dc8e169e2f97: build(deps): Bump github.com/docker/docker from 24.0.4+incompatible to 24.0.9+incompatible in /tools/github-action (#1432) (@craciunoiuc)
* d7510375ef3a167bd41b74181ee44d2e846602bc: build(deps): Bump github.com/docker/docker from 24.0.7+incompatible to 24.0.9+incompatible in /tools/dockerfile-llb-frontend (#1433) (@craciunoiuc)
* ec619c41c0bc1813a4389482d8bcea464b328681: build(deps): Bump github.com/docker/docker from 25.0.4+incompatible to 25.0.5+incompatible (#1434) (@craciunoiuc)
* 66dde421ca5ca607c9cc0e6e3023f4aa5a5c1fc8: build(deps): Bump google.golang.org/protobuf from 1.31.0 to 1.33.0 (#1409) (@nderjung)
* 7790a8051322bfa996685fbf075ab9a2109805a4: build(deps): Bump google.golang.org/protobuf from 1.31.0 to 1.33.0 in /tools/dockerfile-llb-frontend (#1411) (@nderjung)
* be066bd2c605276fa884fe116dc61e2105a10307: build(deps): Bump google.golang.org/protobuf from 1.31.0 to 1.33.0 in /tools/github-action (#1410) (@nderjung)
* c04b4734f8354a6de9870ef8a6b91e176705955a: gomod(deps): Bump github.com/cli/cli/v2 from 2.44.1 to 2.45.0 (#1419) (@nderjung)
* 7da5c9d1a2c5c1c17f929574920101bd8f21e68f: gomod(deps): Bump github.com/cli/cli/v2 from 2.45.0 to 2.46.0 (#1445) (@craciunoiuc)
* 99bc70dc4977a99305e48ce9fc2f2aac151c5a08: gomod(deps): Bump github.com/containerd/containerd from 1.7.13 to 1.7.14 (#1416) (@nderjung)
* 72ff9fe426a2f4fd8b8037f75ae088c3d5cde606: gomod(deps): Bump github.com/containerd/nerdctl from 1.7.4 to 1.7.5 (#1420) (@craciunoiuc)
* 053bb9fded1f597911235af64a59145f654af521: gomod(deps): Bump github.com/google/go-containerregistry from 0.19.0 to 0.19.1 (#1444) (@craciunoiuc)
* 6ae9d0046b133bc962395edac035eb39d87aba2c: gomod(deps): Bump github.com/kubescape/go-git-url from 0.0.25 to 0.0.30 (#1447) (@craciunoiuc)
* 106b226e878da7ac0bb894f68e5db25f52e1c822: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.16.0 to 2.17.0 (#1446) (@craciunoiuc)
* e4c472718ac44a355639fbe0b8a3b318afa0b499: gomod(deps): Bump github.com/testcontainers/testcontainers-go from 0.28.0 to 0.29.1 (#1418) (@nderjung)
* 0dfb5bdfa887badb6e1cc8a5764562c1f6a871d9: gomod(deps): Bump kraftkit.sh from 0.7.12 to 0.7.14 in /tools/go-generate-qemu-devices (#1421) (@nderjung)
### 🐒 Miscellaneous
* 5f3f7469a4180861c3555c69fb5d227d2c379e30: refactor(cloud): use batch ops for vols and sgs (#1450) (@craciunoiuc)
* d41544fa24e2fddb1b203f8af4fb3214b3b090c4: revert(oci): Do not reset the list of OS features (#1437) (@craciunoiuc)


