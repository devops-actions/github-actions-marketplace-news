---
title: Run AER Tests
date: 2026-01-22 05:56:55 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.92
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.92**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action provides a lightweight and Salesforce-compatible runtime for validating Apex code and running tests directly on a local workstation or in CI pipelines without requiring deployment to a Salesforce org. It automates test execution, supports interactive debugging, and ensures fast, reproducible testing cycles for Salesforce projects. This action is particularly useful for catching Apex regressions in continuous integration workflows and streamlining Apex development and testing.

## Release notes

Version v0.0.92

- Fix Type Resolution When Class And Trigger Share Same Name

- Fix SOQL IN Subquery Bind Expression AST Mutation

- Improve LSP Hover Resolution And Metadata Scanning

- Normalize Double Map Keys To Canonical Form

- Throw JSONException For Invalid Decimal With Multiple Decimal Points

- Add --timezone Flag For Test And Exec Commands

- Add Two-Argument System.purgeOldAsyncJobs Overload

- Add --api-version For Use With --reference

- Add ConnectApi.RecordUi.getPicklistValuesByRecordType

- Add scratch-preview and scratch-preview-ns Targets

- Preserve Enum Constants When Registering From Symbol Graph

- Fix SObject Resolution To Prefer Default Namespace Over Other Packages

- Fix SObject Clone Return Type Inference For Constructor Matching

- Clear RecordType IDs When Merging Package Schemas

- Add Default Values For PermissionSetAssignment IsActive And IsRevoked

- Exclude Null-Valued Queried Fields From getPopulatedFieldsAsMap

- Support Lookup Filter ValueField Attribute

- Fix Decimal Division Scale For Whole Number Results
