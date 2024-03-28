---
title: OpenTofu/Terraform via PR Comments
date: 2024-03-28 11:21:22 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR-Comments
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pr-comments
version: v10
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR-Comments** to version **v10**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pr-comments) to find the latest changes.

## Release notes

### Highlight

In addition to the existing PR comment trigger, support TF execution directly via `command_input` within the workflow to enable more flexible and dynamic use-cases, including parallel runs in matrix strategy.

### Added

- Support TF execution directly via `command_input` string.
- Multiple workflow examples with associated permissions and triggers for usage clarity.
- Cache TF plugins to speed up workflow run times, optionally.
- TF Tests workflow to validate GitHub Action against various sample Terraform configurations.
- Badges/shields at the top of the README to show(-off) notable metrics and metadata.
- Support `recreate_comment` boolean flag to optionally delete and re-add PR comments after any updates/commits made on the PR branch to make the conversation easier to follow.
- [Support](https://github.com/opentofu/opentofu/pull/1225) `-concise` flag to reduce verbosity of OpenTofu output.

### Changed

- Streamline calls to "github-script" with `await require(...)` one-liner.
- Rename GitHub Action to prioritise/emphasise OpenTofu support.
- Bump up character limits of TF output (51200 → 66000) and format diff (10240 → 12000).
- Set default values for boolean inputs to reduce usage ambiguity.

### Fixed

- Support `-or-create` flag for more appropriate TF workspace creation via CI.

### Deprecated

- Explicit requirement on defining `cli_uses` input in favour of assuming it automatically from the prior TF-setup step with the wrapper enabled.

### Secured

- Document best practices for using 3rd party GitHub Actions in a secure manner.
- Support v10.X and above.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR-Comments/compare/v9.1.0...v10>

