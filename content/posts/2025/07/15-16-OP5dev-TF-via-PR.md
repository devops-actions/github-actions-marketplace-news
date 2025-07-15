---
title: Terraform/OpenTofu via Pull Request
date: 2025-07-15 16:58:27 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.6.0
dependentsNumber: "14"
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.6.0**.
- This action is used across all versions by **14** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

```yml
uses: op5dev/tf-via-pr@17a512ff6f2ec9f5ba7dc80ed26da4c49aa795fa # v13.6.0
```

### Added

- https://github.com/OP5dev/TF-via-PR/pull/479 Support for specifying `pr-number` in case of unsupported workflow trigger (thank you, @gowgopal83).

### Fixed

- https://github.com/OP5dev/TF-via-PR/pull/478 Paginate `gh` API calls to handle results beyond the first 100 results (thank you, @jemc).

### Improved

- https://github.com/OP5dev/TF-via-PR/pull/469 CI tests for provisioning AWS infrastructure via OIDC authentication.
- https://github.com/OP5dev/TF-via-PR/pull/471 Include links from Readme to blog posts and references to this project.

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.5.0...v13.6.0
