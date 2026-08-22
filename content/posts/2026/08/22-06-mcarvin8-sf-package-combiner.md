---
title: SF Package Combiner
date: 2026-08-22 06:23:32 +00:00
tags:
  - mcarvin8
  - GitHub Actions
draft: false
repo: https://github.com/mcarvin8/sf-package-combiner
marketplace: https://github.com/marketplace/actions/sf-package-combiner
version: v4.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action combines multiple Salesforce `package.xml` manifests into one, simplifying CI/CD processes by automating the merging of different package configurations. It supports combining files and directories containing `package.xml`, making it suitable for integrating with sfdx-git-delta output or manual lists. The action provides flexibility through inputs like API version and dry run options, enhancing its utility for various deployment scenarios in Salesforce development pipelines.
---


Version updated for **https://github.com/mcarvin8/sf-package-combiner** to version **v4.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sf-package-combiner) to find the latest changes.

## Action Summary

This GitHub Action combines multiple Salesforce `package.xml` manifests into one, simplifying CI/CD processes by automating the merging of different package configurations. It supports combining files and directories containing `package.xml`, making it suitable for integrating with sfdx-git-delta output or manual lists. The action provides flexibility through inputs like API version and dry run options, enhancing its utility for various deployment scenarios in Salesforce development pipelines.

## What's Changed

## [4.1.0](https://github.com/mcarvin8/sf-package-combiner/compare/v4.0.3...v4.1.0) (2026-08-21)


### Features

* **parser:** replace txml with an in-house XML parser ([#206](https://github.com/mcarvin8/sf-package-combiner/issues/206)) ([5bf818c](https://github.com/mcarvin8/sf-package-combiner/commit/5bf818cfb69a07a5689955788d57313708556d4d))
* publish as a native GitHub Action ([#208](https://github.com/mcarvin8/sf-package-combiner/issues/208)) ([1f8938d](https://github.com/mcarvin8/sf-package-combiner/commit/1f8938d5b3b0a28666974a6b21701d19eccddb14))
