---
title: Setup Goose CLI
date: 2026-05-06 07:30:02 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/setup-goose-action
marketplace: https://github.com/marketplace/actions/setup-goose-cli
version: v1.0.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/setup-goose-action** to version **v1.0.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-goose-cli) to find the latest changes.

## Action Summary

The "Setup Goose Action" is a GitHub Action that installs and caches the Goose AI CLI tool for use in CI/CD workflows. It streamlines tasks such as automated AI-driven analysis by providing version pinning, caching for faster runs, and lightweight integration without external dependencies. This action simplifies the setup of Goose CLI, enabling reproducible builds and efficient AI-powered operations in development pipelines.

## What's Changed

## Summary

Fixes broken installs caused by the Goose project moving from `block/goose` to `aaif-goose/goose` on GitHub, updates GitHub Actions dependency SHAs, and includes documentation and infrastructure improvements since v1.0.7.

## What's Changed

### Bug Fixes
- Fix broken binary downloads and attestation verification after Goose repo rename from `block/goose` to `aaif-goose/goose` (#123)
- Bump pinned test version to v1.30.0, the earliest Goose release with attestations registered under the new org (#123)

### Documentation
- Update all `block/goose` repository links to `aaif-goose/goose` in README, ASSURANCE.md, and SECURITY.md (#123)
- Update `block.github.io/goose` documentation links to `goose-docs.ai` (#123)
- Migrate badges to shields.io for-the-badge style (#115)
- Add OpenSSF Silver certification callout to SECURITY.md (#114)
- Pin action SHA examples and update example workflows to ubuntu-24.04 (#111)
- Update SHA pin example in README to v1.0.7 (#110)
- Add AI policy, CODEOWNERS, and PR template review checkbox (#117)
- Soften AI policy enforcement language (#118, #119)

### Infrastructure
- Update `actions/cache` to v5.0.5 (#124)
- Update `actions/upload-artifact` to v7.0.1 (#124)
- Update `actions/checkout` and `zizmorcore/zizmor-action` SHAs (#122)
- Default Goose version updated to v1.33.1 (#121, #120)
- Remove scripts directory (moved to private dotfiles) (#116)
- Migrate license from MIT to Apache 2.0 (#112)

## SLSA Attestation Note

This release corrects a regression introduced by the upstream Goose project renaming its GitHub repository. The `gh attestation verify` call now targets `aaif-goose/goose`; attestations for releases prior to v1.30.0 are not available under the new org and will fail verification.

## Breaking Changes

None - this release is fully backward compatible with v1.0.7.

**Full Changelog**: https://github.com/clouatre-labs/setup-goose-action/compare/v1.0.7...v1.0.8

