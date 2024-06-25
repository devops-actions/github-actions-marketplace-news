---
title: OpenTofu/Terraform via Pull Request
date: 2024-06-25 16:46:41 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pull-request
version: v10.6.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v10.6.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pull-request) to find the latest changes.

## Release notes

### Added

- Diff indicators to color-code change outline. (https://github.com/DevSecTop/TF-via-PR/pull/227 https://github.com/DevSecTop/TF-via-PR/pull/235)
  ```diff
  + resource.address will be created
  - resource.address will be destroyed
  ! resource.address will be updated
  # resource.address has been changed
  ```
- Option to toggle addition of PR labels via `label_enable` input parameter. (https://github.com/DevSecTop/TF-via-PR/pull/231)

### Changed

- Simplify sample workflow trigger and scope. (https://github.com/DevSecTop/TF-via-PR/pull/221 https://github.com/DevSecTop/TF-via-PR/pull/222 https://github.com/DevSecTop/TF-via-PR/pull/226 https://github.com/DevSecTop/TF-via-PR/pull/234)
- Emphasize use of PR trigger input for automation, over PR comments. (https://github.com/DevSecTop/TF-via-PR/pull/232)
- (meta) Relocate codeowners file to .github directory. (https://github.com/DevSecTop/TF-via-PR/pull/228 https://github.com/DevSecTop/TF-via-PR/pull/229 https://github.com/DevSecTop/TF-via-PR/pull/230)
- (meta) Enable dependabot wildcard matching. (https://github.com/DevSecTop/TF-via-PR/pull/219)
- (meta) Bumped terraform deps. (https://github.com/DevSecTop/TF-via-PR/pull/217 https://github.com/DevSecTop/TF-via-PR/pull/218 https://github.com/DevSecTop/TF-via-PR/pull/220 https://github.com/DevSecTop/TF-via-PR/pull/224 https://github.com/DevSecTop/TF-via-PR/pull/225)

### Fixed

- (meta) GitHub Marketplace link. (https://github.com/DevSecTop/TF-via-PR/pull/223)

### Security

- Highlight that only official GitHub Actions are used. (https://github.com/DevSecTop/TF-via-PR/pull/233)

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v10.5.0...v10.6.0>

