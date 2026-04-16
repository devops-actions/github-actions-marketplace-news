---
title: Terraform Plan Commenter
date: 2026-04-16 22:11:43 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/terraform-plan-commenter-action
marketplace: https://github.com/marketplace/actions/terraform-plan-commenter
version: v1.2.2
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/thekbb/terraform-plan-commenter-action** to version **v1.2.2**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-plan-commenter) to find the latest changes.

## Action Summary

The **Terraform Plan Commenter Action** is a GitHub Action designed to automate the execution of `terraform plan` and post a detailed, formatted summary of infrastructure changes directly as a comment on pull requests. It simplifies collaboration by providing reviewers with visibility into proposed Terraform changes without requiring them to run the plan locally. Key capabilities include updating comments on subsequent commits, handling large plans with summaries and truncation, supporting multi-directory configurations, and compatibility with multiple Terraform workspaces.

## What's Changed

## What's Changed
* Add test case to cover non-root working directory by @thekbb in https://github.com/thekbb/terraform-plan-commenter-action/pull/19
* refactor: split plan summary parsing from renderin. by @thekbb in https://github.com/thekbb/terraform-plan-commenter-action/pull/20


**Full Changelog**: https://github.com/thekbb/terraform-plan-commenter-action/compare/v1.2.1...v1.2.2
