---
title: OpenTofu/Terraform via Pull Request
date: 2024-09-09 00:55:01 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pull-request
version: v11.2.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v11.2.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pull-request) to find the latest changes.

## Release notes

### Added

Optionally compare the existing TF plan file with a newly-generated one, in order to prevent stale apply using the new `plan_parity` [input parameter](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#parameters). Comparison is conducted via normalized string comparison of the plan outlines. If the outlines are identical, the old TF plan file is replaced by the new one before apply, otherwise proceeding as usual.

This is useful in a [merge_group](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_merge_matrix.yaml)-triggered workflow to prevent stale apply, where prior merges may have invalidated the existing TF plan file despite no changes to the plan proposal.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v11.1.0...v11.2.0>

