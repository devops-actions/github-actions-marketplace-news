---
title: gtm-users
date: 2026-03-05 13:29:56 +00:00
tags:
  - h13
  - GitHub Actions
draft: false
repo: https://github.com/h13/gtm-users
marketplace: https://github.com/marketplace/actions/gtm-users
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/h13/gtm-users** to version **v1.0.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gtm-users) to find the latest changes.

## Action Summary

This GitHub Action, **gtm-users**, is a CLI tool designed to manage Google Tag Manager (GTM) user permissions declaratively using YAML files. It automates the process of configuring, validating, and applying user permissions, enabling a safe and reviewable workflow similar to Terraform. Key capabilities include exporting current GTM permissions, performing syntax and semantic validation, and offering both additive and authoritative modes for flexible user management.

## Release notes

## Initial Release

### CLI
- `validate` — Config file syntax and semantic validation
- `plan` — Preview changes between desired and actual GTM state
- `apply` — Apply planned changes to GTM API
- `export` — Export current GTM permissions as YAML

### GitHub Action
- Composite action available on [GitHub Marketplace](https://github.com/marketplace/actions/gtm-users)
- Auto-comments plan results on PRs
- Supports `validate`, `plan`, `apply`, and `export` commands

### Configuration
- Additive and authoritative modes
- Account-level and container-level permission management
