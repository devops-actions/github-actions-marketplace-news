---
title: Terraform/OpenTofu via Pull Request
date: 2026-04-27 14:35:00 +00:00
tags:
  - OP5dev
  - GitHub Actions
draft: false
repo: https://github.com/OP5dev/TF-via-PR
marketplace: https://github.com/marketplace/actions/terraform-opentofu-via-pull-request
version: v13.7.4
dependentsNumber: "35"
actionType: Composite
---


Version updated for **https://github.com/OP5dev/TF-via-PR** to version **v13.7.4**.

- This action is used across all versions by **35** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-opentofu-via-pull-request) to find the latest changes.

## Action Summary

This GitHub Action, *Terraform/OpenTofu via Pull Request (tf-via-pr)*, automates the execution of Terraform or OpenTofu workflows within pull request and push events. It securely generates and applies infrastructure changes, avoiding configuration drift by leveraging encrypted plan files, while providing detailed diffs through PR comments and workflow summaries. Designed for DevOps teams, it simplifies self-service infrastructure management and enhances pipeline security without requiring containers or virtual machines.

## What's Changed

```yml
uses: op5dev/tf-via-pr@39ed2635c056ca408ed24cc5c2baf0ef4381a7a5 # v13.7.4
```

> [!NOTE]
> OP5dev organization will be renamed as part of an upcoming release (with no action necessary on your part!)

### Fixed

- https://github.com/OP5dev/TF-via-PR/pull/548 Replace dual-process substitution with single pipe for output capture (thank you @dghermanMI).
- https://github.com/OP5dev/TF-via-PR/pull/551, https://github.com/OP5dev/TF-via-PR/pull/552 Graceful handling of PR number retrieval logic for various workflow event trigger types.

### Updated

- https://github.com/OP5dev/TF-via-PR/pull/550 Dependency [actions/upload-artifact](https://github.com/actions/upload-artifact) for non-GHE users.
- https://github.com/OP5dev/TF-via-PR/pull/555 Action versions in workflow examples.

### Secured

- https://github.com/OP5dev/TF-via-PR/pull/553 CodeQL expression injection of GitHub context values via environment variables.

### New Contributors

* @dghermanMI made their first contribution in https://github.com/OP5dev/TF-via-PR/pull/548

<br>

View [changelog](https://github.com/OP5dev/TF-via-PR/releases) or https://github.com/OP5dev/TF-via-PR/compare/v13.7.3...v13.7.4
