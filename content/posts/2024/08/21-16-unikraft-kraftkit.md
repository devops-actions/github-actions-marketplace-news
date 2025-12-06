---
title: Build unikernel images with Unikraft
date: 2024-08-21 16:46:24 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.9.2
dependentsNumber: "7"
---


Version updated for **unikraft/kraftkit** to version **v0.9.2**.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.9.2 (2024-08-21T10:24:44Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* b7229cd89331f610819b7741490fad0358330947: feat(cloud): Introduce new 'vcpu' fields (#1856) (@nderjung)
* e7bad5cad75ee48382b760546fc4b226557057e8: feat(log): Set log-level timestamps to nano-level precision (#1833) (@craciunoiuc)
* 5398244f7ad235452ffa600d13d421455c3f75b2: feat(machine): Bump qemu to use all CPU features (#1854) (@razvand)
### 🐛 Bug Fixes
* 9942c630a75556264b85614409682f1c1caef200: fix(cloud): Fetch status when also running (#1837) (@nderjung)
* 207e5eccecdec6589d0874a38552d2880dba73d8: fix(cloud): Several changes to `volume` commands (#1846) (@nderjung)
* e654ddb80f0e443ac37fd0df68774a606bfdec77: fix(create): Allow more than one port (#1831) (@nderjung)
* e7842df56b34b8b026efb978ca3be11f82755993: fix(oci): Fully enable using config auths (#1836) (@nderjung)
### 🤖 Bumps
* 8f81359d096dbfb147884a1564b5d30a17ed9ea9: build(deps): Bump github.com/docker/docker from 26.1.4+incompatible to 26.1.5+incompatible (#1845) (@craciunoiuc)
* b5de34f42c9029b25c00e06a40c142724c63971f: build(deps): Bump github.com/docker/docker from 26.1.4+incompatible to 26.1.5+incompatible in /tools/github-action (#1847) (@nderjung)
* fcc2997defe0ebf2cc2ab60fccd052cf938f79fd: gomod(deps): Bump github.com/cli/cli/v2 from 2.52.0 to 2.54.0 (#1840) (@craciunoiuc)
* 059c86f1a4b7b17d21503df0a2196d1df0e07c43: gomod(deps): Bump github.com/compose-spec/compose-go/v2 from 2.1.4 to 2.1.6 (#1843) (@craciunoiuc)
* 06a26b618e3160c09246332914aaf3fabd6f4e02: gomod(deps): Bump github.com/containerd/containerd from 1.7.19 to 1.7.20 (#1844) (@craciunoiuc)
* 13b4d2d2112a8f79e0e2a35f6e92a5d847592c02: gomod(deps): Bump github.com/docker/cli from 27.1.1+incompatible to 27.1.2+incompatible (#1852) (@nderjung)
* 319aab113f3038dd50b0d2c2775044b8ba12cb5b: gomod(deps): Bump golang.org/x/sys from 0.22.0 to 0.24.0 (#1842) (@craciunoiuc)
* 7144f801bed3682ea23df7bd357266088225766a: gomod(deps): Bump golang.org/x/term from 0.22.0 to 0.23.0 (#1841) (@craciunoiuc)
* b5e7138b765ed7dbbb363433143293e4bfa747bb: gomod(deps): Bump google.golang.org/grpc from 1.64.1 to 1.65.0 (#1850) (@nderjung)
* bac5ee58732e8c818db8be9d9f5e9302f8022dd9: gomod(deps): Bump k8s.io/apimachinery from 0.30.3 to 0.31.0 (#1853) (@nderjung)
* 4c0d8e2033ed372f6de9bdb26825fde0ee824d7c: gomod(deps): Bump kraftkit.sh from 0.9.0 to 0.9.1 in /tools/go-generate-qemu-devices (#1839) (@craciunoiuc)
* 352158fe2608a7b21f315f427decbf6fc348f664: gomod(deps): Bump mvdan.cc/gofumpt from 0.6.0 to 0.7.0 in /tools/go-generate-qemu-devices (#1848) (@nderjung)


