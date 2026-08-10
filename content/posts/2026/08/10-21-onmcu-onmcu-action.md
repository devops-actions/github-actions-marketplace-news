---
title: Run on OnMCU
date: 2026-08-10 21:41:28 +00:00
tags:
  - onmcu
  - GitHub Actions
draft: false
repo: https://github.com/onmcu/onmcu-action
marketplace: https://github.com/marketplace/actions/run-on-onmcu
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the flashing and running of firmware on real MCU hardware using OnMCU, ensuring that the workflow fails if the hardware run fails. It installs the OnMCU CLI, writes a CI config, and invokes `onmcu run` in a single step, providing minimal overhead. The action is designed to handle various inputs such as board identifier, firmware file, API key, and more, with sensible defaults for missing values.
---


Version updated for **https://github.com/onmcu/onmcu-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-on-onmcu) to find the latest changes.

## Action Summary

This GitHub Action automates the flashing and running of firmware on real MCU hardware using OnMCU, ensuring that the workflow fails if the hardware run fails. It installs the OnMCU CLI, writes a CI config, and invokes `onmcu run` in a single step, providing minimal overhead. The action is designed to handle various inputs such as board identifier, firmware file, API key, and more, with sensible defaults for missing values.

## What's Changed

Config value `timeout_seconds` was renamed to `job_timeout_seconds` in `0.2.0` of https://github.com/onmcu/onmcu-rs
