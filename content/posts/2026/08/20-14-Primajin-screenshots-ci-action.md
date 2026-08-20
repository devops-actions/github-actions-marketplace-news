---
title: Multi-Device Website Screenshots CI
date: 2026-08-20 14:13:28 +00:00
tags:
  - Primajin
  - GitHub Actions
draft: false
repo: https://github.com/Primajin/screenshots-ci-action
marketplace: https://github.com/marketplace/actions/multi-device-website-screenshots-ci
version: v3.2.0
dependentsNumber: "6"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action captures screenshots of websites on both desktop and multiple emulated mobile devices within a CI/CD workflow. It supports various options such as specifying device names, excluding desktop shots, taking full-page screenshots, and controlling wait times before capturing images. The action outputs the screenshots as build artifacts, allowing for easy integration into pull-request comments or Telegram notifications.
---


Version updated for **https://github.com/Primajin/screenshots-ci-action** to version **v3.2.0**.

- This action is used across all versions by **6** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-device-website-screenshots-ci) to find the latest changes.

## Action Summary

This GitHub Action captures screenshots of websites on both desktop and multiple emulated mobile devices within a CI/CD workflow. It supports various options such as specifying device names, excluding desktop shots, taking full-page screenshots, and controlling wait times before capturing images. The action outputs the screenshots as build artifacts, allowing for easy integration into pull-request comments or Telegram notifications.

## What's Changed

## [3.2.0](https://github.com/Primajin/screenshots-ci-action/compare/v3.1.1...v3.2.0) (2026-08-20)


### Features

* run on the Node 24 (latest LTS) runtime ([2e5fa4a](https://github.com/Primajin/screenshots-ci-action/commit/2e5fa4a89adc35d9edabd01354b362cabebb403b))


### Bug Fixes

* resolve system Chrome for puppeteer v24 in CI ([a79a6f2](https://github.com/Primajin/screenshots-ci-action/commit/a79a6f29bcb51798fe35a4e7a979b9d2a7a0847a))
