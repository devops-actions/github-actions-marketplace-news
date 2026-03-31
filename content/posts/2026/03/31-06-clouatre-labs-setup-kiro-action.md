---
title: Setup Kiro CLI
date: 2026-03-31 06:14:59 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/setup-kiro-action
marketplace: https://github.com/marketplace/actions/setup-kiro-cli
version: v1.0.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/clouatre-labs/setup-kiro-action** to version **v1.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-kiro-cli) to find the latest changes.

## Action Summary

The "Setup Kiro CLI Action" is a GitHub Action designed to install, cache, and configure the Kiro CLI for CI/CD workflows, enabling efficient use of the tool in automated pipelines. It streamlines tasks such as headless IAM authentication via SIGV4 and accelerates builds through automatic binary caching. This action is particularly useful for teams leveraging Kiro CLI in AWS-integrated workflows, offering lightweight and secure setup with minimal dependencies.

## What's Changed

## Summary

Hardens CI infrastructure with zizmor SHA-pinning enforcement, path filters, and pinned runners. Adds OpenSSF Best Practices badge infrastructure, automated badge form scripts, and documentation improvements aligned with setup-goose-action conventions.

## What's Changed

### Infrastructure
- Pin runner to ubuntu-24.04 (#41)
- Add CI Result aggregate job and path filters (#43)
- Add zizmor SHA-pinning enforcement (#44)
- Fix zizmor min-severity value (error -> high) (#45)
- Remove merge_group trigger (#42)

### Features
- Add Renovate config for automated version updates (#3)
- Add merge_group trigger and concurrency for merge queue (#10)
- Add OpenSSF badge infrastructure and harden examples (#47)
- Add OpenSSF badge form automation scripts (#48)

### Documentation
- Update README with security patterns and badges (#9)
- Simplify README and improve discoverability (#24)
- Enable verify-checksum documentation (#27)
- Align README with setup-goose-action conventions (#49)

### Bug Fixes
- Use versioned URL instead of /latest/ for downloads (#2)
- Add job conditions to support merge_group event properly (#11)
- Apply Renovate config corrections (#40)

## Breaking Changes

None - this release is fully backward compatible with v1.0.0.

**Full Changelog**: https://github.com/clouatre-labs/setup-kiro-action/compare/v1.0.0...v1.0.1
