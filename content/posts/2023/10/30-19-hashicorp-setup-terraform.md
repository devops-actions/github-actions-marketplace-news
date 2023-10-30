---
title: HashiCorp - Setup Terraform
date: 2023-10-30 19:17:16 +00:00
tags:
  - hashicorp
  - GitHub Actions
draft: false
repo: hashicorp/setup-terraform
marketplace: https://github.com/marketplace/actions/hashicorp-setup-terraform
version: v3.0.0
dependentsNumber: "0"
---


Version updated for **hashicorp/setup-terraform** to version **v3.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hashicorp-setup-terraform) to find the latest changes.

## Release notes

NOTES:

* Updated default runtime to node20 ([#346](https://github.com/hashicorp/setup-terraform/issues/346))
* The wrapper around the installed Terraform binary has been fixed to return the exact STDOUT and STDERR from Terraform when executing commands. Previous versions of setup-terraform may have required workarounds to process the STDOUT in bash, such as filtering out the first line or selectively parsing STDOUT with jq. These workarounds may need to be adjusted with `v3.0.0`, which will now return just the STDOUT/STDERR from Terraform with no errant characters/statements. ([#367](https://github.com/hashicorp/setup-terraform/issues/367))

BUG FIXES:

* Fixed malformed stdout when wrapper is enabled ([#367](https://github.com/hashicorp/setup-terraform/issues/367))


