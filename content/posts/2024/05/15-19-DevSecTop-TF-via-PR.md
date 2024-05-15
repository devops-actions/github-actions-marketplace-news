---
title: OpenTofu/Terraform via Pull Request
date: 2024-05-15 19:31:00 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pull-request
version: v10.3.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v10.3.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pull-request) to find the latest changes.

## Release notes

### Added

- Output `comment_summary` of TF output (e.g., "Plan: 1 to add, 0 to change, 0 to destroy.")
  - Requires `checks: write` permission.
- Copy TF output to the job summary for easier access within GitHub Actions > Jobs.

### Changed

- (meta) Dependabot configuration to keep Terraform dependencies up-to-date [in a group](https://github.com/dependabot/dependabot-core/issues/2178#issuecomment-2111007962) (until [OpenTofu catches up](https://github.com/opentofu/opentofu/issues/1236)).
- (meta) Formatted yml → yaml workflows for consistency and legibility.

### Security

- Explicitly list all 3 GitHub Actions used by this workflow and the [steps taken](https://github.com/DevSecTop/TF-via-PR/blob/main/SECURITY.md) to prevent supply chain attacks from upstream dependencies:
  1. [actions/cache](https://github.com/actions/cache)
  1. [actions/github-script](https://github.com/actions/github-script)
  1. [actions/upload-artifact](https://github.com/actions/upload-artifact)

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v10.2.0...v10.3.0>

