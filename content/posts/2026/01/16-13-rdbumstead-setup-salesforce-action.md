---
title: Setup Salesforce CLI
date: 2026-01-16 13:28:38 +00:00
tags:
  - rdbumstead
  - GitHub Actions
draft: false
repo: https://github.com/rdbumstead/setup-salesforce-action
marketplace: https://github.com/marketplace/actions/setup-salesforce-cli
version: v2.1.0
dependentsNumber: "1"
---


Version updated for **https://github.com/rdbumstead/setup-salesforce-action** to version **v2.1.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-salesforce-cli) to find the latest changes.

## Action Summary

This GitHub Action provides a reliable and efficient way to set up the Salesforce CLI in CI/CD pipelines. It addresses common pipeline issues such as slow and inconsistent CLI installations, fragile authentication handling, and lack of customization by offering fast, secure, and configurable CLI setup with caching, multi-platform support, and extensibility. Designed for enterprise Salesforce teams and complex workflows, it streamlines development and deployment processes for scalable and repeatable pipelines.

## Release notes

### Added - Multiple Authentication Methods 🔐

- **SFDX Auth URL authentication** (`auth_method: 'sfdx-url'`)
  - Simpler alternative to JWT - no certificate required
  - Uses refresh token from SFDX Auth URL
  - New input: `sfdx_auth_url`
- **Access Token authentication** (`auth_method: 'access-token'`)
  - Direct access token authentication for advanced use cases
  - New input: `access_token`
  - Warning: Access tokens are short-lived
- **New `auth_method` input** to select authentication type
  - Options: `jwt` (default), `sfdx-url`, `access-token`

### Added - Cache Granularity Control ⚡

- **New `cli_version_for_cache` input** to control cache key granularity
  - `major` - Cache busts only on major CLI version changes
  - `minor` - Cache busts on minor version changes (default)
  - `exact` - Cache busts on every CLI version change

### Added - New Outputs 📊

- **`api_version`** - Salesforce API version for the authenticated org
- **`auth_performed`** - Whether authentication was performed (`true`/`false`)

### Changed - Improvements

- Cache key format updated to `sf-v3-*` for new cache strategy
- Improved sandbox and scratch org detection logic
- Better logging with tree-formatted output
- Environment variables used for sensitive auth data (more secure)

### Fixed 🐞

- **Windows Support**: Resolves file permission issues for authentication on Windows runners.
- Custom plugin installation loop now correctly installs plugins
