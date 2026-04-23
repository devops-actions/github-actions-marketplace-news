---
title: Fluid Attacks SAST
date: 2026-04-23 21:43:39 +00:00
tags:
  - fluidattacks
  - GitHub Actions
draft: false
repo: https://github.com/fluidattacks/sast-action
marketplace: https://github.com/marketplace/actions/fluid-attacks-sast
version: 1.2.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/fluidattacks/sast-action** to version **1.2.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fluid-attacks-sast) to find the latest changes.

## Action Summary

The Fluid Attacks SAST GitHub Action is a free, open-source tool for static application security testing (SAST) that automates code analysis in repositories without requiring accounts or API keys. It detects vulnerabilities by performing either full scans or differential scans (analyzing only changed files) based on the context of pushes, pull requests, or schedules, optimizing security checks while maintaining CI efficiency. Results are generated in SARIF format, which can be reviewed locally or integrated with GitHub's Security tab for enhanced visibility and tracking of code scanning alerts.

## What's Changed

Main changes:
- Now supporting a common ".fluidattacks.yaml" format.
- yaml configuration file not mandatory anymore. scanner will execute with default options

