---
title: Debug (by PSModule)
date: 2026-01-26 21:45:09 +00:00
tags:
  - PSModule
  - GitHub Actions
draft: false
repo: https://github.com/PSModule/Debug
marketplace: https://github.com/marketplace/actions/debug-by-psmodule
version: v1.0.7
dependentsNumber: "7"
---


Version updated for **https://github.com/PSModule/Debug** to version **v1.0.7**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **7** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/debug-by-psmodule) to find the latest changes.

## Action Summary

This GitHub Action, "Debug Action," provides comprehensive diagnostic details about the GitHub Actions runner environment, including contexts, environment variables, event payloads, and PowerShell-specific information such as session settings and installed modules. It automates the process of gathering and displaying debugging information to help troubleshoot and analyze the workflow environment. However, caution is advised as it may expose sensitive information like secrets or environment variables in logs.

## Release notes

# 🩹 [Patch]: Improve security, update dependencies, and reorganize source files (#19)

This patch modernizes the repository's CI/CD infrastructure by pinning dependencies to specific commits, improving security posture, fixing linter warnings, and aligning the source code structure with PSModule organization standards.

- Fixes #18 

## Changed

### Workflow Security Improvements

- Pinned all GitHub Actions to commit SHAs with version comments for reproducible builds
- Added `persist-credentials: false` to all checkout steps for improved security
- Changed Release workflow trigger from `pull_request_target` to `pull_request` for better fork handling
- Added path filters to Release workflow to only trigger on relevant file changes (`action.yml`, `src/**`)

### Dependency Management

- Updated Dependabot schedule from `weekly` to `daily` with 7-day cooldown for balanced update frequency
- Updated `actions/checkout` to `v6.0.2` (SHA: `de0fac2e4500dabe0009e67214ff5f5447ce83dd`)
- Updated `super-linter/super-linter` to `v8.3.2` (SHA: `d5b0a2ab116623730dd094f15ddc1b6b25bf7b99`)
- Updated `PSModule/GitHub-Script` to `v1.7.10` (SHA: `0097f3bbe3f413f3b577b9bcc600727b0ca3201a`)

### Action Migration

- Renamed `Auto-Release.yml` workflow to `Release.yml`
- Migrated from `PSModule/Auto-Release@v1` to `PSModule/Release-GHRepository@v2.0.1` (SHA: `88c70461c8f16cc09682005bcf3b7fca4dd8dc1a`)

### Source Reorganization

- Moved source files from `scripts/` to `src/` folder for consistency with other PSModule actions
- Updated `action.yml` to reference new source path

### Linter Configuration

- Removed `.jscpd.json` configuration file
- Disabled `VALIDATE_BIOME_FORMAT` and `VALIDATE_JSCPD` validators in super-linter

### Code Quality Fixes

- Fixed `PSAvoidUsingWriteHost` warnings by replacing `Write-Host` with `Write-Output` in `main.ps1`

### Action Improvements

- Added `Token` input with default value `${{ github.token }}` for automatic authentication
- Passed `GITHUB_TOKEN` environment variable to the GitHub-Script action

