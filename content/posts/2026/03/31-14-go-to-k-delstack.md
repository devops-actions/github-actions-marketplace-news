---
title: delstack-action
date: 2026-03-31 14:03:07 +00:00
tags:
  - go-to-k
  - GitHub Actions
draft: false
repo: https://github.com/go-to-k/delstack
marketplace: https://github.com/marketplace/actions/delstack-action
version: v2.9.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/go-to-k/delstack** to version **v2.9.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delstack-action) to find the latest changes.

## Action Summary

**Summary:**  
The `delstack` GitHub Action is a CLI tool designed to automate and simplify the deletion of AWS CloudFormation stacks, including those with undeletable or protected resources. It resolves common issues such as orphaned resources and deletion failures by forcefully cleaning up problematic resources, handling dependencies, and optimizing pre-deletion tasks. Key capabilities include parallel stack deletion, support for various IaC tools like AWS CDK and SAM, and seamless integration into CI/CD workflows.

## What's Changed

<!-- Release notes generated using configuration in .github/release.yml at 1f3f8888dedd6f59729b7a0de5fb1513e319738b -->

## What's Changed
* feat: add TerminationProtection awareness to cdk subcommand by @go-to-k in https://github.com/go-to-k/delstack/pull/622
* style: fix gofmt alignment in StackInfo struct by @go-to-k in https://github.com/go-to-k/delstack/pull/624


**Full Changelog**: https://github.com/go-to-k/delstack/compare/v2.8.0...v2.9.0
