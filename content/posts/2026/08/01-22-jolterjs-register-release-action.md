---
title: Register Jolter release
date: 2026-08-01 22:35:04 +00:00
tags:
  - jolterjs
  - GitHub Actions
draft: false
repo: https://github.com/jolterjs/register-release-action
marketplace: https://github.com/marketplace/actions/register-jolter-release
version: v1.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The GitHub Action automates the process of registering a published plugin release with the Jolter registry. It handles various authentication methods (personal access token, repository-scoped GitHub token, or OIDC) to register the release artifacts, including WebAssembly assets, `plugin.json`, and optional checksums.txt. The action also supports version and release tag overrides and provides outputs for the registered version and release tag.
---


Version updated for **https://github.com/jolterjs/register-release-action** to version **v1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/register-jolter-release) to find the latest changes.

## Action Summary

The GitHub Action automates the process of registering a published plugin release with the Jolter registry. It handles various authentication methods (personal access token, repository-scoped GitHub token, or OIDC) to register the release artifacts, including WebAssembly assets, `plugin.json`, and optional checksums.txt. The action also supports version and release tag overrides and provides outputs for the registered version and release tag.

## What's Changed

### Added
- **GitHub Actions OIDC Authentication**: Added seamless passwordless authentication using GitHub Actions OIDC (`id-token: write` permission).
- **New Inputs**:
  - `id-token`: Manually supply an OIDC ID token or let the action automatically fetch one via `id-token: write` permissions.
  - `id-token-audience`: Specify a custom audience for the OIDC token if needed.
- Updated documentation and workflow examples (`examples/register-release.yml`) to recommend OIDC as the default authentication method.

### Changed
- Recommended authentication workflow updated to use GitHub Actions `id-token: write` and `contents: write` permissions instead of requiring manual token secrets.

### Security & Compatibility
- Fully backwards compatible with existing `token`, `jolter-token`, and `github-token` authentication options.


**Full Changelog**: https://github.com/jolterjs/register-release-action/compare/v1.2...v1.3
