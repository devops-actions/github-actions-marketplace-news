---
title: Build unikernel images with Unikraft
date: 2024-02-07 19:38:00 +00:00
tags:
  - unikraft
  - GitHub Actions
draft: false
repo: unikraft/kraftkit
marketplace: https://github.com/marketplace/actions/build-unikernel-images-with-unikraft
version: v0.7.4
dependentsNumber: "6"
---


Version updated for **unikraft/kraftkit** to version **v0.7.4**.
- This action is used across all versions by **6** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-unikernel-images-with-unikraft) to find the latest changes.

## Release notes

## KraftKit v0.7.4 (2024-02-06T07:56:35Z)

This is a stable release of kraftkit.

## Changelog
### 🚀 New Features
* 5307e97ba7ad16079af6037061d9bd88132e0c3f: feat(api): Add `compose` to Zip Api (#1151) (@nderjung)
* ab028552ed55e75afb325d6eee01d732ef490807: feat(buildenvs): Add `KRAFTKIT_VERSION` as build-arg to `github-action` (#1190) (@craciunoiuc)
* 78772ab4dcf606ec2384e33f2fbc975f7d17517c: feat(buildenvs): Install `zip` and `jq` in the action (#1204) (@nderjung)
* c3d5de9b5bf5f14019fa737e2691e95cbef5f567: feat(compose): Add kraft compose command (#1024) (@nderjung)
* b491122d6248eb82c5b24698d8d832af11036027: feat: Add `kraft cloud scale` subcommands and bump go-sdk (#1208) (@nderjung)
* f5a395cfbb8be3fc4070cca08f6ed67e0b65a6d8: feat: Introduce `run` and `dbg` attribute to GitHub Action (#1185) (@razvand)
### 🐛 Bug Fixes
* e2853f62da54fb7ba7e1409da13d2389570b0413: fix(README): Update to new icon location (#1186) (@craciunoiuc)
* 5bc242f4b784b8546068fdf7fac460a250c97f8b: fix(actions): Set the working directory (#1189) (@craciunoiuc)
* af74468e79ddb9a4ad25812e78dee5ef841b87ca: fix(internal): Use correct port for NGINX (#1183) (@nderjung)
* 2aa81161a5893d5d464f58e99611f79a9f38594f: fix(runtime): Set version if provided via colon delimeter (#1215) (@craciunoiuc)
* 493de6f3a7a856ab8fc3c036e62d3137f04808f0: fix: Better handling of colors in GitHub Actions (#1217) (@craciunoiuc)
### 🤖 Bumps
* 7a9597c6abaa19f4edf0e5bd43d902cd9350125e: build(deps): Bump github.com/moby/buildkit from 0.12.0 to 0.12.5 in /tools/dockerfile-llb-frontend (#1209) (@nderjung)
* 9665a1589ca1c132dfcecff7dab5e2be765b6be8: build(deps): Bump github.com/moby/buildkit from 0.12.2 to 0.12.5 in /tools/github-action (#1211) (@nderjung)
* 804bc22384ad9d76a02a967f17e0589667aa6e9f: build(deps): Bump github.com/opencontainers/runc from 1.1.7 to 1.1.12 in /tools/dockerfile-llb-frontend (#1213) (@nderjung)
* 63831be719a3d55e14ed1c2c4e1c31483391ce30: build(deps): Bump github.com/opencontainers/runc from 1.1.7 to 1.1.12 in /tools/github-action (#1212) (@nderjung)
* 554f0001921e685459df6dbae834b68237237991: build(deps): Bump taskmedia/action-conventional-commits from 1.1.11 to 1.1.12 (#1202) (@nderjung)
* 47aa8dd680ea4faefe94b14e9e1f699c1f1df805: gomod(deps): Bump github.com/go-git/go-git/v5 from 5.8.1 to 5.11.0 (#1220) (@nderjung)
* e82d4f30277d5c17bc80597c799e9b9ae3fb0f9d: gomod(deps): Bump kraftkit.sh from 0.7.2 to 0.7.3 in /tools/go-generate-qemu-devices (#1201) (@nderjung)
* 199aa93f383a10ec1ffce8f75c1eb89c00741070: gomod(deps): Bump mvdan.cc/gofumpt from 0.5.0 to 0.6.0 in /tools/go-generate-qemu-devices (#1223) (@nderjung)


