---
title: Build unikernel images with Unikraft
date: 2024-04-17 03:31:10 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.3
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.3**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.3 (2024-04-16T17:00:32Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* 91b541f79eaf9b9edd21b6f86ab287b1c4268fab: feat(cloud): Add `https://` prefix to FQDN for relevant services (#1550) (@craciunoiuc)
* 121bd15780d67e41e32c7c66016248396e9e2843: feat(compose): Introduce `kraft cloud compose` commands (#1532) (@nderjung)
* 54c5745584d197f5121db223217270761d98ec6a: feat(create): Add environment variables (#1536) (@nderjung)
* abbd3b5509da6e7564f452db8c4a14965891857f: feat(internal): Expose restart and stop fields (#1539) (@nderjung)
* 7bef20a7a4c6c65d280f3ac96dbfdbcf91fd5d91: feat(internal): Fix error parsing for 'start' and add '--all' flag (#1526) (@craciunoiuc)
* 8a1146e89ea32898ac8d6ef3c12cdf0255ce21da: feat(kraft): Warn if the user has invoked kraft via sudo (#1355) (@craciunoiuc)
* 1f3487e1c216deb6e966a67da33baaadca2d4c91: feat: Introduce environmental variables (#1463) (@nderjung)
### 🐛 Bug Fixes
* a9e17bcdac6db1d679fbb65196e2b634f2e6035a: fix(cloud): Use cyan for better readability (#1549) (@nderjung)
* 6338bfad4271254a56f70146ac97044c848fb7a8: fix(compose): Remove race (#1534) (@nderjung)
* 21913b4343662c4fd8aa7a49696193176d1c166b: fix(internal): Add missing parameter to a cloud command example (#1541) (@nderjung)
* 270f540b98c8fd674e207df20b17a0b913701b46: fix(internal): Also print UUID field name (#1525) (@craciunoiuc)
* 06e66ab1ecb98e98476cf78ae0d0fb51cc4b7afd: fix(internal): Do not allow setting domains on existing service groups (#1538) (@nderjung)
### 🤖 Bumps
* 516a8ad10fd2766b952eb8eb2d05160b7aec9f4e: gomod(deps): Bump github.com/containerd/containerd from 1.7.14 to 1.7.15 (#1546) (@craciunoiuc)
* dda942970d0f5fd6cf9b6b53f8320d96a18c8d34: gomod(deps): Bump github.com/docker/cli from 26.0.0+incompatible to 26.0.1+incompatible (#1543) (@craciunoiuc)
* c1bfab5e48e7d77da828116c972b949438ae550d: gomod(deps): Bump github.com/go-git/go-git/v5 from 5.11.0 to 5.12.0 (#1523) (@nderjung)
* 1ad1e7d231dedd785dfdfe7693329c1f83f545c7: gomod(deps): Bump github.com/golang/glog from 1.2.0 to 1.2.1 in /tools/go-generate-qemu-devices (#1518) (@nderjung)
* 939d141d0317395d05a8442bccd7597f88c1ef8c: gomod(deps): Bump github.com/golang/glog from 1.2.0 to 1.2.1 in /tools/protoc-gen-go-netconn (#1519) (@nderjung)
* ce97ed891c750ea10cb89753e1422bf4ffe7d33d: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.17.0 to 2.17.1 (#1544) (@craciunoiuc)
* 85e6731950dcc2961511b2c1af2787a972e9ad6c: gomod(deps): Bump github.com/shirou/gopsutil/v3 from 3.24.2 to 3.24.3 (#1524) (@craciunoiuc)
* 49d0144d153ab10a2d9d7f026e28bcc58f0738e9: gomod(deps): Bump golang.org/x/oauth2 from 0.18.0 to 0.19.0 (#1547) (@craciunoiuc)
* 52d101e95e8044303f900f4f56afac8beb4afdb1: gomod(deps): Bump golang.org/x/sync from 0.6.0 to 0.7.0 (#1521) (@craciunoiuc)
* 7ab681e610aec03f3152446ae2e5506ed02ca8bd: gomod(deps): Bump golang.org/x/sys from 0.18.0 to 0.19.0 (#1520) (@nderjung)
* 58ef5a36f391eaf0cc4e3b4d33905389f1952c65: gomod(deps): Bump kraftkit.sh from 0.8.1 to 0.8.2 in /tools/go-generate-qemu-devices (#1517) (@nderjung)
* f2ee6c6ff642d915a1408ecc71d416d6688e77d2: gomod(deps): Bump sdk.kraft.cloud to 0.5.7 (#1535) (@craciunoiuc)
* 4d4b884957a79ac2ba9a1617a272f81613b4b0de: gomod(deps): Bump sigs.k8s.io/kustomize/kyaml from 0.14.3 to 0.17.0 (#1545) (@craciunoiuc)
### 🐒 Miscellaneous
* 1cbcbcf28b229ea8685476f5acdc8604d4335fe8: refactor(logs): Use native `TailLogs` SDK method (#1469) (@craciunoiuc)


