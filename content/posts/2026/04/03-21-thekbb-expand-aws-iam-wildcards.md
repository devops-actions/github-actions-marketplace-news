---
title: Expand AWS IAM Wildcards
date: 2026-04-03 21:44:21 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/expand-aws-iam-wildcards
marketplace: https://github.com/marketplace/actions/expand-aws-iam-wildcards
version: v1.2.0
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/thekbb/expand-aws-iam-wildcards** to version **v1.2.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/expand-aws-iam-wildcards) to find the latest changes.

## Action Summary

This GitHub Action automatically expands AWS IAM policy wildcard actions in pull request (PR) diffs and adds inline comments that detail the specific actions each wildcard represents, with links to AWS documentation. It helps reviewers quickly understand the security implications of changes to IAM policies, streamlining code review processes for enhanced clarity and security posture evaluation. Key features include grouping consecutive wildcards into single comments, truncating large expansions for readability, and logging the full expansion details in workflow run logs.

## What's Changed

- Reuse existing review comments when the file and line anchor are unchanged, updating comment bodies in place when
  needed to preserve discussion threads and reduce comment churn
- Simplify review comments to focus on wildcard expansion output instead of duplicate or redundant-action warnings
- Remove the stale `@cloud-copilot/iam-expand` dependency and update docs to describe the generated IAM action list
- Move the action runtime and project workflows to Node 24
- Generate AWS documentation link slugs from IAM service metadata, with overrides only for known AWS docs path exceptions

### Fixed

- Paginate pull request file retrieval so large PRs are scanned completely
- Truncate oversized review comments that would break GitHub, and link full IAM expansions from the PR comment to the
  workflow run logs
- Recreate outdated review comments instead of editing stale threads that no longer map to the current diff
- Preserve outdated bot comments that already have replies instead of deleting their discussion threads

