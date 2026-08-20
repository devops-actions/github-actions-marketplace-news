---
title: Veracode Configure
date: 2026-08-20 22:28:36 +00:00
tags:
  - vcode-config
  - GitHub Actions
draft: false
repo: https://github.com/vcode-config/configure
marketplace: https://github.com/marketplace/actions/veracode-configure
version: v0.05
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The `veracode-config` GitHub Action automates the process of onboarding repositories into the Veracode Workflow integration. It checks if an Application Profile exists, creates one if it does not, and persists inventory and workflow configuration values in custom metadata. The action also provides reusable workflow outputs for downstream jobs. It inventories programming languages, package managers, non-GitHub build definitions, and generates JSON data for the inventory and workflow config. The action supports customization of various fields such as metadata keys and business criticality levels.
---


Version updated for **https://github.com/vcode-config/configure** to version **v0.05**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/veracode-configure) to find the latest changes.

## Action Summary

The `veracode-config` GitHub Action automates the process of onboarding repositories into the Veracode Workflow integration. It checks if an Application Profile exists, creates one if it does not, and persists inventory and workflow configuration values in custom metadata. The action also provides reusable workflow outputs for downstream jobs. It inventories programming languages, package managers, non-GitHub build definitions, and generates JSON data for the inventory and workflow config. The action supports customization of various fields such as metadata keys and business criticality levels.

## What's Changed

- sdcsw (83f399e)
- added debug output to inventory (e558b79)
- better logging (a0d1ee7)
- Corrected the main call to use dist/index.mjs (abcc572)
- initial commit (460d6f7)
