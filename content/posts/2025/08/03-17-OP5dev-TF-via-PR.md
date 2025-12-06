---
title: Terraform/OpenTofu via Pull Request
date: 2025-08-03 17:00:41 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.6.1
dependentsNumber: "16"
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.6.1**.
- This action is used across all versions by **16** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Release notes

```yml
uses: op5dev/tf-via-pr@8a5419f58e07d28721f4f9c907c85f3c5648c2b1 # v13.6.1
```

### Fixed

- https://github.com/OP5dev/TF-via-PR/pull/488 Job ID determination for matrix strategy with names exceeding 100 characters (thank you, @karolba).
- https://github.com/OP5dev/TF-via-PR/pull/491 Fallback on `0` by default if PR number could not be determined.

### Improved

- https://github.com/OP5dev/TF-via-PR/pull/487 Documentation of `comment-pr: false` option in cron-scheduling workflow example (thank you, @jlkravitz).

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.6.0...v13.6.1
