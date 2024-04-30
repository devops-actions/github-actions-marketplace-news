---
title: Build unikernel images with Unikraft
date: 2024-04-30 03:25:56 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.8.6
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.8.6**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.8.6 (2024-04-29T19:50:21Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* 3b6315f4e78eabc303bad3a0863ec95c2b14f26c: feat(create): Assign memory to VM (#1616) (@nderjung)
* ffbc9ee4b50f98792342b51c76bd609d1730709d: feat(github-action): Bump to latest kraftkit (#1593) (@nderjung)
* 40e793cd3c561fa34818f8f9d3a9225af8c76bad: feat(webinstall): Don't reprompt for sudo (#1599) (@nderjung)
### 🐛 Bug Fixes
* fdc2a33489b1734e17b3205d6abe4b1241f89db5: fix(action): Bump buildkit container in the action (#1595) (@nderjung)
* 161334cde103e4305b7f4e0329af0a5b1f24e255: fix(iostreams): If enabled, proxy the color to `ansi.ColorFunc` (#1603) (@craciunoiuc)
* 0601616b89ba4703c0da4f0ccc5254eef93e7ce4: fix(kraft): Only accept single target in `utils.BuildRootfs` (#1596) (@craciunoiuc)
* eaa3781af6bff49ef896beb833d24c8f44c55427: fix(oci): Protect read access also, not only write (#1602) (@nderjung)
* c04feb28f56db2bdf4c8f502fba09482669bc51d: fix(run): Initialize env map if nil (#1613) (@nderjung)
* fc6cee176ff26493a5f0e314e64dbe865c62025f: fix(run): Prevent possible nil-pointers by always using `Cut` (#1600) (@craciunoiuc)
* ed670392af77ff7c7227535fcca2f601f205e977: fix(scale): Correctly check for minimum warm/cool period (#1617) (@nderjung)
* dc59dbf2b832c2ef69afd5d01b823310473e62c4: fix(webinstall): Ensure root prompt happens for fedora (#1598) (@nderjung)
### 🤖 Bumps
* 53dbc6802a75afb818455ed60849924d22128469: build(deps): Bump golangci/golangci-lint-action from 4 to 5 (#1611) (@nderjung)
* d46c42b63ef9380a2365c88e073381fdc48fff13: build(deps): Bump taskmedia/action-conventional-commits from 1.1.15 to 1.1.16 (#1610) (@nderjung)
* f857428c78e1bc1be413f065341979208bf0cc7b: gomod(deps): Bump github.com/moby/buildkit from 0.13.1 to 0.13.2 (#1605) (@nderjung)
* 1a276e93a598197891aa06bb66ab65ecb55bf561: gomod(deps): Bump github.com/onsi/ginkgo/v2 from 2.17.1 to 2.17.2 (#1606) (@nderjung)
* ee221a60768c48c29350efc5ec6a302fa79ff73b: gomod(deps): Bump github.com/testcontainers/testcontainers-go from 0.29.1 to 0.30.0 (#1607) (@nderjung)
* ccdd68c2ed29718d2455d2d5d1a59c00b78b026e: gomod(deps): Bump google.golang.org/grpc from 1.59.0 to 1.63.2 (#1608) (@nderjung)
* 3db9da9c0d00458127e5d87c2812efd349ebc1bc: gomod(deps): Bump kraftkit.sh from 0.8.4 to 0.8.5 in /tools/go-generate-qemu-devices (#1604) (@nderjung)
### 🐒 Miscellaneous
* 6183dbf674f1844e59efeaf9968ef3fd7ca82f6f: refactor(webinstall): Reprompt after invalid input instead of exiting (#1585) (@craciunoiuc)


