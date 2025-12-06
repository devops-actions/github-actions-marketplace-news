---
title: Terraform/OpenTofu via Pull Request
date: 2024-10-28 16:46:58 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v12.0.1
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v12.0.1**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

### Added

- Count of diff lines in the output.

### Improved

- Reorder above-the-fold content in the README.
  - Consistent use of arguments throughout [workflow examples](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#where-to-find-more-examples).
- Use `-json` for `diff` command comparison of plan files with `plan-parity` enabled.
  - Reveal `diff` command output during `plan-parity` comparison.
- Append '…' ellipsis to truncated plan or diff outputs if exceeding character limit.

### Fixed 

- Handling of plan files which exceed GitHub's character limit.
- Include `stderr` within console output of the workflow run log.
- Exclude `-detailed-exitcode` argument from plan command during `plan-parity` comparison.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v12.0.0...v12.0.1>
