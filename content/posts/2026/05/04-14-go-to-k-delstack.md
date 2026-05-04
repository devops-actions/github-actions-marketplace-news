---
title: delstack-action
date: 2026-05-04 14:45:43 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.11.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.11.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**delstack** is a CLI tool and GitHub Action designed to automate the deletion of AWS CloudFormation stacks, including those with resources that are typically difficult to remove. It ensures complete cleanup by force-deleting undeletable resources (e.g., non-empty S3 buckets) and resolving inter-stack dependencies, preventing orphaned resources. Key features include parallel deletion, interactive stack selection, handling of deletion protections, and integration with popular IaC tools like AWS CDK, AWS SAM, and Serverless Framework.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at 875ed5f6c8cc5224a3b4d1dd65d72b7acd0e73a8 -->

## What's Changed
* docs: add mise installation method by @go-to-k in https://github.com/go-to-k/delstack/pull/635
* chore: add CLAUDE.md by @go-to-k in https://github.com/go-to-k/delstack/pull/638
* ci: Add Claude Code GitHub Workflow by @go-to-k in https://github.com/go-to-k/delstack/pull/640
* docs: add Claude Code skills for adding operators/preprocessors by @go-to-k in https://github.com/go-to-k/delstack/pull/642
* feat: force-delete Subnet/SG blocked by orphan Lambda VPC ENIs by @go-to-k in https://github.com/go-to-k/delstack/pull/643


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.10.0...v2.11.0
