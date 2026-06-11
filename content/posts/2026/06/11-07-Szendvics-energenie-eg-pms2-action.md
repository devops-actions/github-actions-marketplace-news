---
title: EG-PMS2 Control
date: 2026-06-11 07:18:49 +00:00
tags:
  - Szendvics
  - GitHub Actions
draft: false
repo: https://github.com/Szendvics/energenie-eg-pms2-action
marketplace: https://github.com/marketplace/actions/eg-pms2-control
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Szendvics/energenie-eg-pms2-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eg-pms2-control) to find the latest changes.

## What's Changed

  Changes:
  - move the sample workflow out of .github/workflows into examples/manual-example.yml
  - remove repository workflow files from the action repository
  - add Marketplace branding metadata to action.yml
  - keep the local validation and publish helper scripts

  Recommended reference for consumers:
  - uses: Szendvics/energenie-eg-pms2-action@v1

  Typical use case:
  - control an Energenie EG-PMS2 power strip from self-hosted Linux CI workflows
  - use discover / print-env to find and pin the device serial
  - 
