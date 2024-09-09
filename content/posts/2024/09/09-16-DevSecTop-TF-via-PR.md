---
title: OpenTofu/Terraform via Pull Request
date: 2024-09-09 16:46:37 +00:00
tags:
  - DevSecTop
  - GitHub Actions
draft: false
repo: DevSecTop/TF-via-PR
marketplace: https://github.com/marketplace/actions/opentofu-terraform-via-pull-request
version: v11.3.0
dependentsNumber: "2"
---


Version updated for **DevSecTop/TF-via-PR** to version **v11.3.0**.
- This action is used across all versions by **2** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentofu-terraform-via-pull-request) to find the latest changes.

## Release notes

### Added

Optionally pin the version of [tenv](https://github.com/tofuutils/tenv) tool used by TF-via-PR with the new `tenv_version` [input parameter](https://github.com/DevSecTop/TF-via-PR?tab=readme-ov-file#parameters).

If `tf_version` input is being used and the following error is observed:

> Failed to detect a version allowing to call terraform : \<nil\>: Failed to read file; The configuration file "main.tf" could not be read.

There are a few different methods of resolution:

* Pass `tenv_version: 3.1.0` input to revert to previous behaviour.
* Set `TFENV_TERRAFORM_VERSION` or `TOFUENV_TERRAFORM_VERSION` environment variables, per [`tenv`](https://github.com/tofuutils/tenv/pull/247).
* Use setup-opentofu ([example](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_merge_matrix.yaml#L29-L30)) or setup-terraform ([example](https://github.com/DevSecTop/TF-via-PR/blob/main/.github/examples/pr_push_auth.yaml#L30-L31)) with the default wrapper enabled.

Commits changelog: <https://github.com/DevSecTop/TF-via-PR/compare/v11.2.0...v11.3.0>

