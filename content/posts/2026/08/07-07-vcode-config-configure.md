---
title: Veracode Configure
date: 2026-08-07 07:14:16 +00:00
tags:
  - vcode-config
  - GitHub Actions
draft: false
repo: https://github.com/vcode-config/configure
marketplace: https://github.com/marketplace/actions/veracode-configure
version: v0.03
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `veracode-config` GitHub Action automates the process of onboarding repositories into the Veracode Workflow integration. It checks for and creates an Application Profile, persists inventory and workflow configuration values in custom metadata, and exposes reusable workflow outputs for downstream jobs. The action inventories programming languages, package managers, and non-GitHub build definitions, and can refresh or update these inventories as needed. It supports various configuration options and provides outputs for application GUIDs and workflow configurations.
---


Version updated for **https://github.com/vcode-config/configure** to version **v0.03**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veracode-configure) to find the latest changes.

## Action Summary

The `veracode-config` GitHub Action automates the process of onboarding repositories into the Veracode Workflow integration. It checks for and creates an Application Profile, persists inventory and workflow configuration values in custom metadata, and exposes reusable workflow outputs for downstream jobs. The action inventories programming languages, package managers, and non-GitHub build definitions, and can refresh or update these inventories as needed. It supports various configuration options and provides outputs for application GUIDs and workflow configurations.

## What's Changed

- better logging (a0d1ee7)
- Corrected the main call to use dist/index.mjs (abcc572)
- initial commit (460d6f7)
