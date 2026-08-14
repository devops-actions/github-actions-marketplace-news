---
title: SFDX Delete Scratch Org
date: 2026-08-14 13:39:01 +00:00
tags:
  - svierk
  - GitHub Actions
draft: false
repo: https://github.com/svierk/sfdx-delete-scratch-org
marketplace: https://github.com/marketplace/actions/sfdx-delete-scratch-org
version: v1.1.3
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub action automates the deletion of Salesforce scratch orgs after a CI run, ensuring that resources are released even if previous steps fail. It works in conjunction with the `sfdx-create-scratch-org` action and uses tokens for authentication, following best practices for maintaining security and clarity in workflows.
---


Version updated for **https://github.com/svierk/sfdx-delete-scratch-org** to version **v1.1.3**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sfdx-delete-scratch-org) to find the latest changes.

## Action Summary

This GitHub action automates the deletion of Salesforce scratch orgs after a CI run, ensuring that resources are released even if previous steps fail. It works in conjunction with the `sfdx-create-scratch-org` action and uses tokens for authentication, following best practices for maintaining security and clarity in workflows.

## What's Changed

- pin action versions and harden workflow example

**Full Changelog**: https://github.com/svierk/sfdx-delete-scratch-org/compare/v1.1.2...v1.1.3
