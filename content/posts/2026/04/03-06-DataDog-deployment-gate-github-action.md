---
title: Datadog Deployment Gate
date: 2026-04-03 06:20:18 +00:00
tags:
  - DataDog
  - GitHub Actions
draft: false
repo: https://github.com/DataDog/deployment-gate-github-action
marketplace: https://github.com/marketplace/actions/datadog-deployment-gate
version: v2.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/DataDog/deployment-gate-github-action** to version **v2.0.0**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/datadog-deployment-gate) to find the latest changes.

## Action Summary

The Datadog Deployment Gate GitHub Action integrates Datadog Deployment Gates into CI/CD pipelines to automatically evaluate deployment readiness based on predefined rules. It helps reduce the risk of deployment-related incidents by enabling automated checks for service health, environment conditions, and other metrics before proceeding with deployments. This action provides seamless integration, detailed evaluation logs, and error handling to streamline deployment decision-making.

## What's Changed

## What's Changed
* Fix version in README by @GabrielAnca in https://github.com/DataDog/deployment-gate-github-action/pull/10
* Add identifier to docs | SDCD by @Aaron-9900 in https://github.com/DataDog/deployment-gate-github-action/pull/11
* security: eliminate supply chain vulnerability by using pre-built datadog-ci binary by @calvinbayer in https://github.com/DataDog/deployment-gate-github-action/pull/12
  - **Eliminated runtime npm installs**: No more `npm install -g @datadog/datadog-ci@latest`
  - **No transitive dependency resolution**: All dependencies bundled in pre-built binary
  - **Checksum verification**: Every binary download is verified
  - **Removed Node.js dependency**: No longer requires `actions/setup-node`

## ⚠️ Breaking Changes

### 1. Platform Requirements
**IMPORTANT:** This action now requires pre-built binaries. Supported platforms:
- ✅ `linux-x64`
- ✅ `linux-arm64`
- ✅ `darwin-x64` (macOS Intel)
- ✅ `darwin-arm64` (macOS Apple Silicon)
- ✅ `win-x64` (Windows)

❌ Unsupported platforms (that worked in v1.x with npm):
- `linux-arm` (32-bit ARM)
- Other architectures where Node.js runs but datadog-ci binaries aren't built

**If your workflows run on unsupported platforms, they will fail.** Stick with v1.x or request binary support from [datadog-ci releases](https://github.com/DataDog/datadog-ci/releases).
