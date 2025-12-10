---
title: Setup Goose CLI
date: 2025-12-10 13:08:43 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/setup-goose-action
marketplace: https://github.com/marketplace/actions/setup-goose-cli
version: v1.0.5
dependentsNumber: "?"
---


Version updated for **https://github.com/clouatre-labs/setup-goose-action** to version **v1.0.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-goose-cli) to find the latest changes.

## Release notes

## Summary

Updates default Goose version to v1.16.0 and includes documentation improvements and infrastructure enhancements.

## What's Changed

### Features
- Default Goose version updated to v1.16.0 (#41, #25)
- Add Renovate config for automated dependency updates (#27)
- Add AI-assisted marketplace keywords (#19)

### Documentation
- Reorganize security content and add badges (#39)
- Simplify versioning documentation (#38)
- Update examples with descriptive step names (#17)
- Add security documentation and tiered examples (#14)
- Update to actions/checkout v6 in examples (#21)

### Infrastructure
- Pin dependencies for security (#37)
- Improve OpenSSF scorecard (#36)
- Enable automerge for patch updates (#30)
- Replace Dependabot with Renovate (#28)
- Remove check-version workflow (replaced by Renovate) (#31)

### Bug Fixes
- Restore blank lines between sections in action.yml (#26)
- Handle existing branch in version check workflow (#23)

## Goose v1.16.0 Highlights

The updated default Goose version (v1.16.0) includes:
- Updated Anthropic and Google Gemini models to latest API versions
- Improved AWS Bedrock credential handling
- Multiple bug fixes for multi-tool calling and session handling
- UI/UX improvements

**Full Changelog**: https://github.com/clouatre-labs/setup-goose-action/compare/v1.0.4...v1.0.5
