---
title: Build unikernel images with Unikraft
date: 2024-04-24 03:32:26 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.5
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.5**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.5 (2024-04-23T19:57:20Z)

This is a stable release of kraftkit.

## Changelog
### ⚠️ Breaking Changes
* c7f0921b5c4dab8d7e028868dc8e7036b3fb25f0: feat(initrd)!: Bump buildkit and export OCI information from it  (#1575) (@nderjung)
* 1229d5b33305f80b364f2e26e05cded792a0d5f4: refactor(deploy)!: Introduce `--follow` and re-purpose `-f` flag (#1591) (@craciunoiuc)
### 🚀 New Features
* 3da3f852a7cfee9f254b430ea3c7770eff067d2b: feat(compose): Introduce `--remove-orphans` flag (#1587) (@nderjung)
* 03d12d58cfedde4c80896f1f1cb3cf46d2434607: feat(compose): Support named volumes (#1589) (@nderjung)
* e6a9a804d05568dad677138c8b0eeede23a17e12: feat(kraft): Introduce the volume subcommand (#1540) (@nderjung)
* 334eaa97b780920f3f71d9a8286d5db3df9eb161: feat(up): Parse, create and mount service volumes (#1588) (@craciunoiuc)
* 10daeb764e5d2748dce2287fa275c4313ca6b615: feat(up): Support the `containername` attribute (#1592) (@craciunoiuc)
* 6c569708b6d1360933515b40471840a9e0745b38: feat(utils): Use colors to indicate bar level (#1590) (@craciunoiuc)
### 🤖 Bumps
* cbf36e2bed82361f02034a99e9bc2979cbd3283f: build(deps): Bump golang.org/x/net from 0.17.0 to 0.23.0 in /tools/dockerfile-llb-frontend (#1577) (@nderjung)
* 24561e2041b14baae184fabeaabf7353b9183fd5: build(deps): Bump golang.org/x/net from 0.19.0 to 0.23.0 in /tools/github-action (#1578) (@nderjung)
* 026115c7557dbcf6768fd98345ce612322588af3: gomod(deps): Bump github.com/docker/cli from 26.0.1+incompatible to 26.0.2+incompatible (#1583) (@nderjung)
* f4ee07d52741cccc3634406b9ae29fd655fa5ccb: gomod(deps): Bump github.com/docker/docker from 25.0.5+incompatible to 26.0.2+incompatible (#1579) (@nderjung)
* 5f3a5a42c1783e3629cd8f6a1ae80a39b4e6ac64: gomod(deps): Bump github.com/onsi/gomega from 1.30.0 to 1.33.0 (#1581) (@nderjung)
* a39ff890cacf906b0c8993f701ac010106d82a87: gomod(deps): Bump kraftkit.sh from 0.8.2 to 0.8.4 in /tools/go-generate-qemu-devices (#1584) (@nderjung)


