---
title: Expand AWS IAM Wildcards
date: 2026-04-21 22:00:31 +00:00
tags:
  - thekbb
  - GitHub Actions
draft: false
repo: https://github.com/thekbb/expand-aws-iam-wildcards
marketplace: https://github.com/marketplace/actions/expand-aws-iam-wildcards
version: v1.2.4
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/thekbb/expand-aws-iam-wildcards** to version **v1.2.4**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/expand-aws-iam-wildcards) to find the latest changes.

## Action Summary

This GitHub Action automatically detects and expands AWS IAM wildcard actions in pull request (PR) diffs, adding inline comments that detail the specific actions matched by each wildcard, along with links to AWS documentation. It streamlines code reviews by helping reviewers quickly understand the security implications of IAM changes, especially in scenarios involving wildcard permissions. The action supports various file types, groups consecutive wildcards into a single comment, and logs full expansions for very large wildcard matches.

## What's Changed

### Fixed

- Require the `Verify Draft Release` workflow to run from the same release tag it verifies, so artifact attestations can
  be verified with `--source-ref refs/tags/vX.Y.Z` instead of a commit SHA
