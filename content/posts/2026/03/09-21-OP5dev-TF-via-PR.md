---
title: Terraform/OpenTofu via Pull Request
date: 2026-03-09 21:49:12 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.7.3
dependentsNumber: "35"
actionType: Composite
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.7.3**.
- This action is used across all versions by **35** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Action Summary

This GitHub Action, "Terraform/OpenTofu via Pull Request (TF-via-PR)," automates the process of planning and applying infrastructure changes using Terraform or OpenTofu directly through pull requests. It provides secure, scalable workflows by generating encrypted plan files, displaying diffs in PR comments, and offering detailed workflow summaries, enabling teams to self-service infrastructure updates while maintaining configuration consistency and reducing pipeline overhead.

## Release notes

```yml
uses: op5dev/tf-via-pr@8d74c69c2863bcb3bb87c8313ca46bc2fc89b98a # v13.7.3
```

> [!NOTE]
> OP5dev organisation will be renamed as part of upcoming release, with no actions necessary on your behalf(!)

### Fixed

- https://github.com/OP5dev/TF-via-PR/pull/539 Pass in original `github.token` during check-run API call (thank you, @renkeven).

### Updated

- https://github.com/OP5dev/TF-via-PR/pull/526, https://github.com/OP5dev/TF-via-PR/pull/537 Dependency [actions/upload-artifact](https://github.com/actions/upload-artifact) to v7.0.0 for non-GHE users.

### New Contributors

* @renkeven made their first contribution in https://github.com/OP5dev/TF-via-PR/pull/539

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.7.2...v13.7.3

