---
title: Terraform Plan Commenter
date: 2026-04-30 06:01:49 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/terraform-plan-commenter-action
marketplace: https://github.com/marketplace/actions/terraform-plan-commenter
version: v2.0.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/thekbb/terraform-plan-commenter-action** to version **v2.0.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/terraform-plan-commenter) to find the latest changes.

## Action Summary

The **Terraform Plan Commenter Action** automates the process of running `terraform plan` and posting a detailed, formatted summary of infrastructure changes as a comment on GitHub pull requests. It solves the problem of providing reviewers with clear visibility into proposed Terraform changes without requiring them to run `terraform plan` locally. Key capabilities include updating comments dynamically with subsequent commits, summarizing resource changes, supporting multi-directory and multi-workspace setups, and offering accessibility-friendly themes.

## What's Changed

This release makes the first intentional breaking change to the action interface and introduces a more disciplined release process.

  ### Breaking change

  - Removed the `plan-stdout` output

  The action no longer exposes the full Terraform plan body as a public workflow output. Full plan text is now
  kept in a temporary file for comment generation instead of being transported through GitHub Actions step
  outputs.

  If you were consuming `plan-stdout` directly in downstream workflow steps, you will need to remove that
  dependency or replace it with a different pattern.

  ### What changed

  - Full plan transport now uses a temporary file instead of step outputs
  - Release preparation now happens through a `release-candidate/vX.Y.Z` workflow-driven PR flow from `main`
  - Draft releases are verified from the signed tag before publication
  - Verified draft releases are re-checked before being made public
  - CI and package metadata are aligned on Node.js `24.14.1`
  - Dependabot is constrained to stay on the Node 24 line
  - Repository docs now describe the workflow-driven release process and composite action release model

  ### Security and operational improvements

  - Added workflow linting with `actionlint` and `zizmor`
  - Added dependency review on pull requests
  - Added CodeQL analysis for JavaScript
  - Added CI timeout and concurrency controls

  ### Upgrade guidance

  If you use this action in production workflows, continue to prefer a full 40-character commit SHA in `uses:`
  with the release tag in a trailing comment for human review.

  If you previously relied on `plan-stdout`, update your workflow before moving to `v2.0.0`.
