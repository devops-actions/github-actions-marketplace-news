---
title: Apex Test List
date: 2026-08-28 17:39:30 +00:00
tags:
  - wisefoxme
  - GitHub Actions
draft: false
repo: https://github.com/wisefoxme/apex-test-list
marketplace: https://github.com/marketplace/actions/apex-test-list
version: v1.14.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action generates a list of Apex tests that need to be run based on comments or specified metadata, automating the process of identifying and running necessary test classes. It supports both custom comment annotations (`@Tests:`) and using a centralized metadata filter file (`.test-dependencies.yml`), making it easier for developers to manage and execute test cases efficiently.
---


Version updated for **https://github.com/wisefoxme/apex-test-list** to version **v1.14.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apex-test-list) to find the latest changes.

## Action Summary

This GitHub Action generates a list of Apex tests that need to be run based on comments or specified metadata, automating the process of identifying and running necessary test classes. It supports both custom comment annotations (`@Tests:`) and using a centralized metadata filter file (`.test-dependencies.yml`), making it easier for developers to manage and execute test cases efficiently.

## What's Changed

## [1.14.1](https://github.com/wisefoxme/apex-test-list/compare/v1.14.0...v1.14.1) (2026-08-28)


### Bug Fixes

* handle YAML comments in yamlParser (regression from 1.14.0) ([#402](https://github.com/wisefoxme/apex-test-list/issues/402)) ([05b91b1](https://github.com/wisefoxme/apex-test-list/commit/05b91b1ca3749f9989fa9e1e7c6ebf36b9f5886c))
