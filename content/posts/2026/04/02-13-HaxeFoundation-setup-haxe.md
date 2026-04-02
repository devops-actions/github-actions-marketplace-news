---
title: HaxeFoundation - Setup Haxe
date: 2026-04-02 13:59:04 +00:00
tags:
  - HaxeFoundation
  - GitHub Actions
draft: false
repo: https://github.com/HaxeFoundation/setup-haxe
marketplace: https://github.com/marketplace/actions/haxefoundation-setup-haxe
version: v2.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HaxeFoundation/setup-haxe** to version **v2.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/haxefoundation-setup-haxe) to find the latest changes.

## Action Summary

The `setup-haxe` GitHub Action automates the setup of a Haxe development environment in GitHub workflows. It simplifies the process of installing specific Haxe versions, including nightly builds, and supports caching of global package data to optimize build times. This action is ideal for streamlining CI/CD pipelines that require Haxe-based projects.

## What's Changed

- Initial Haxe Foundation release, based off [krdlab/setup-haxe](https://github.com/krdlab/setup-haxe/) version [2.0.2](https://github.com/krdlab/setup-haxe/releases/tag/v2.0.2)
- Use latest neko for haxe nightlies
- Add linux arm64 support
- Do not cache downloads for 'latest'
