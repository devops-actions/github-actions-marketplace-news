---
title: Terraform/OpenTofu via Pull Request
date: 2025-11-22 21:02:42 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.7.2
dependentsNumber: "32"
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.7.2**.
- This action is used across all versions by **32** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

```yml
uses: op5dev/tf-via-pr@5a4229041e3c90818d85813d4e4a4d44f653d5e9 # v13.7.2
```

### Fixed

- https://github.com/OP5dev/TF-via-PR/pull/519 Upload of encrypted plan file for GHE users (thank you, @EmNaveed).
- https://github.com/OP5dev/TF-via-PR/pull/522 Only enable booleans with `true` instead of any non-zero string input (thank you, @jbaldodiego).

### Updated

- https://github.com/OP5dev/TF-via-PR/pull/512 Dependency [actions/upload-artifact](https://github.com/actions/upload-artifact) from v4.6.2 to v5.0.0 for non-GHE users.
- https://github.com/OP5dev/TF-via-PR/pull/521 "To-do" provisioning of interim build artifacts, [join discussion](https://github.com/OP5dev/TF-via-PR/issues/517) (thank you, @slords).

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.7.1...v13.7.2
