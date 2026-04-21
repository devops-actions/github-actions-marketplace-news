---
title: Expand AWS IAM Wildcards
date: 2026-04-21 14:26:14 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/expand-aws-iam-wildcards
marketplace: https://github.com/marketplace/actions/expand-aws-iam-wildcards
version: v1.2.3
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/thekbb/expand-aws-iam-wildcards** to version **v1.2.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/expand-aws-iam-wildcards) to find the latest changes.

## Action Summary

This GitHub Action, "Expand AWS IAM Wildcards," automates the process of identifying and expanding wildcard actions in AWS IAM policy changes within pull requests. It analyzes PR diffs, identifies IAM actions with wildcards, and posts inline comments detailing the specific actions each wildcard matches, including links to AWS documentation. This helps reviewers quickly and accurately assess the security implications of IAM policy changes, improving code review efficiency and reducing the risk of unintended permissions.

## What's Changed

### Added

- Add OIDC-backed release attestation for the shipped `dist/index.js` action bundle
- Add release verification docs and extend `verify-release.sh` to check artifact attestations when GitHub CLI is
  available
- Add action entrypoint orchestration tests covering pull request handling, comment sync paths, truncation logging, and
  failure reporting

### Changed

- Refresh bundled IAM action data from AWS
- Generate release bundles on Ubuntu through the `Prepare Release` workflow instead of from a local machine
- Include the IAM data generator script in TypeScript checking
- Update npm dependencies

### Fixed

- Validate the `collapse-threshold` input and fail clearly for invalid values instead of accepting partial parses
