---
title: attest-vm-image
date: 2026-07-22 06:31:19 +00:00
tags:
  - meigma
  - GitHub Actions
draft: false
repo: https://github.com/meigma/attest-vm-image
marketplace: https://github.com/marketplace/actions/attest-vm-image
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The attest-vm-image GitHub Action inspects a finished QCOW2 VM disk image to produce auditable evidence about its contents and optionally signs that evidence. It helps verify the integrity of an artifact, ensures compliance with security policies, and provides detailed reports on vulnerabilities and contamination during the build process. The action is designed to be run after an image has been built and does not modify the input image.
---


Version updated for **https://github.com/meigma/attest-vm-image** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/attest-vm-image) to find the latest changes.

## Action Summary

The attest-vm-image GitHub Action inspects a finished QCOW2 VM disk image to produce auditable evidence about its contents and optionally signs that evidence. It helps verify the integrity of an artifact, ensures compliance with security policies, and provides detailed reports on vulnerabilities and contamination during the build process. The action is designed to be run after an image has been built and does not modify the input image.

## What's Changed

## [1.1.0](https://github.com/meigma/attest-vm-image/compare/v1.0.0...v1.1.0) (2026-07-22)


### Features

* add evidence handoff manifest ([#20](https://github.com/meigma/attest-vm-image/issues/20)) ([f6752e7](https://github.com/meigma/attest-vm-image/commit/f6752e7c746309d31593d33e88d108ccb43a4200))
