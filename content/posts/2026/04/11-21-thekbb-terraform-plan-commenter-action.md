---
title: Terraform Plan Commenter
date: 2026-04-11 21:45:39 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/terraform-plan-commenter-action
marketplace: https://github.com/marketplace/actions/terraform-plan-commenter
version: v1.2.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/thekbb/terraform-plan-commenter-action** to version **v1.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-plan-commenter) to find the latest changes.

## Action Summary

The **Terraform Plan Commenter Action** is a GitHub Action designed to automate the process of running `terraform plan` and posting a formatted summary of the infrastructure changes as a comment on associated pull requests. It solves the problem of enabling reviewers to easily see proposed Terraform changes without needing direct access to run `terraform plan`. Key capabilities include updating comments with the latest plan, handling large plans with truncation, supporting multi-directory setups for monorepos, and providing workspace-specific results with customizable themes for enhanced accessibility.

## What's Changed

### Added

- Include the armored public GPG key used to sign release tags

### Changed

- Pin external GitHub Actions to full SHA
- Move the failed-plan check to a step-level `if`
- Dependency updates
- Document SHA pinning guidance, release tag usage, and signed tag verification in the README

