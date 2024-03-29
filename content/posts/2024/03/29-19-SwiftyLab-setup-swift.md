---
title: Setup Swift environment for macOS, Linux and Windows
date: 2024-03-29 19:26:38 +00:00
tags:
  - SwiftyLab
  - GitHub Actions
draft: false
repo: SwiftyLab/setup-swift
marketplace: https://github.com/marketplace/actions/setup-swift-environment-for-macos-linux-and-windows
version: v1.6.0
dependentsNumber: "39"
---


Version updated for **SwiftyLab/setup-swift** to version **v1.6.0**.
- This action is used across all versions by **39** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-swift-environment-for-macos-linux-and-windows) to find the latest changes.

## Release notes

## [1.6.0](https://github.com/SwiftyLab/setup-swift/compare/v1.5.2...v1.6.0) (2024-03-29)


### 🚀 Features

* added git ref support to `check-latest` option ([840a162](https://github.com/SwiftyLab/setup-swift/commit/840a162aceb6bbd06e4d75fc2a01368606fbcd79))
* added supporting new swift toolchains without action release ([#259](https://github.com/SwiftyLab/setup-swift/issues/259)) ([b8b0c2a](https://github.com/SwiftyLab/setup-swift/commit/b8b0c2a092dae00291896efaed137186604e8a4f))


### 🐛 Fixes

* fixed toolchain caching ([a36cd73](https://github.com/SwiftyLab/setup-swift/commit/a36cd7340bd78afaec08414baf006875c510cfc8))


### 🐎 Performance Improvements

* added skipping gpg verification if signature missing ([17c7929](https://github.com/SwiftyLab/setup-swift/commit/17c79292c8f4fa745c8473d6e3d1b1ee36ee6d6e))
* cache will only be saved if not saved once ([a7ba193](https://github.com/SwiftyLab/setup-swift/commit/a7ba1938c28b6866f405452b04d443f3f9bab9b1))


### 🛠 Dependency

* bump glob from 10.3.10 to 10.3.12 ([#261](https://github.com/SwiftyLab/setup-swift/issues/261)) ([3495928](https://github.com/SwiftyLab/setup-swift/commit/349592802c9eab68a74c07a825d431adb37d185e))
