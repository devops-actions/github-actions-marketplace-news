---
title: Apex Test List
date: 2026-08-28 01:40:23 +00:00
tags:
  - wisefoxme
  - GitHub Actions
draft: false
repo: https://github.com/wisefoxme/apex-test-list
marketplace: https://github.com/marketplace/actions/apex-test-list
version: v1.14.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  The Apex Test List GitHub Action automates the identification and execution of tests based on various annotations or a centralized metadata filter, saving time by reducing the number of tests run in Salesforce orgs. This tool supports both custom comment annotations (`@Tests:` and `@TestSuites:`) and Apex's built-in `@isTest` annotation. For advanced users who prefer to manage dependencies centrally, it also allows specifying test classes based on Salesforce metadata via a `.test-dependencies.yml` file.
---


Version updated for **https://github.com/wisefoxme/apex-test-list** to version **v1.14.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/apex-test-list) to find the latest changes.

## Action Summary

The Apex Test List GitHub Action automates the identification and execution of tests based on various annotations or a centralized metadata filter, saving time by reducing the number of tests run in Salesforce orgs. This tool supports both custom comment annotations (`@Tests:` and `@TestSuites:`) and Apex's built-in `@isTest` annotation. For advanced users who prefer to manage dependencies centrally, it also allows specifying test classes based on Salesforce metadata via a `.test-dependencies.yml` file.

## What's Changed

## [1.14.0](https://github.com/wisefoxme/apex-test-list/compare/v1.13.15...v1.14.0) (2026-08-27)


### Features

* add GitHub Action for listing Apex tests ([#399](https://github.com/wisefoxme/apex-test-list/issues/399)) ([baca2f5](https://github.com/wisefoxme/apex-test-list/commit/baca2f5e51f26a502bf6efa23322a2fe96bde966))
* replace async, xml2js, yaml, and SDR with in-house parsers ([#398](https://github.com/wisefoxme/apex-test-list/issues/398)) ([001a6c6](https://github.com/wisefoxme/apex-test-list/commit/001a6c6f9f6625d28f1dac5774145fb6b0080292))
