---
title: Superbus Contract Action
date: 2026-05-16 13:57:24 +00:00
tags:
  - techarrow12
  - GitHub Actions
draft: false
repo: https://github.com/techarrow12/superbus-contract-action
marketplace: https://github.com/marketplace/actions/superbus-contract-action
version: v0.1.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/techarrow12/superbus-contract-action** to version **v0.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/superbus-contract-action) to find the latest changes.

## Action Summary

The **Superbus Contract Action** is a GitHub Action designed to automate scope validation for pull requests by enforcing predefined file access rules specified in an "Agent Contract." It ensures PR changes stay within allowed file paths, blocks unauthorized modifications, and limits the number of files altered, helping to prevent accidental changes to sensitive or protected code areas. This action supports automated commenting on PRs and can optionally fail CI if contract violations occur, streamlining scope reviews and enhancing code safety.

## What's Changed

**Full Changelog**: https://github.com/techarrow12/superbus-contract-action/compare/v0.1.2...v0.1.3
## Superbus Contract Action 

- [ ] v0.1.3

No AI PR without a contract.

This release hardens the public GitHub Action and simplifies the onboarding path for developers installing Superbus for the first time.
<img width="1513" height="1039" alt="contract-violated-homepage jpeg" src="https://github.com/user-attachments/assets/39843ed4-69fb-4a2e-a9ea-5eab809d1644" />

### Added

- Adversarial edge-case test coverage for path normalization and contract bypass attempts
- Tests for path traversal, Windows path separators, leading slashes, mixed-case paths, and blocked-scope overrides
- Tests for observe mode and enforce mode behavior
- README product visual for the contract violation PR comment

### Changed

- Simplified README onboarding around two files:
  - `.superbus/agent-contract.json`
  - `.github/workflows/superbus-contract-check.yml`
- Improved violation comments to show the matched `blocked_scope` pattern
- Removed duplicate outside-scope noise when a blocked file already explains the violation
- Neutralized examples to avoid app-specific/private domain language
- Removed unnecessary source map output from the published action bundle

### Security and privacy

- The action checks PR changed-file paths only
- It does not fetch source file contents
- It does not inspect diffs
- It does not upload source code
- It does not call external APIs other than GitHub

### Usage

```yaml
- uses: techarrow12/superbus-contract-action@v0.1.3
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}


