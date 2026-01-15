---
title: Run AER Tests
date: 2026-01-15 22:03:23 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.84
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.84**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables developers to validate Apex code, execute tests, and simulate a lightweight Salesforce-compatible runtime directly on local workstations or in CI pipelines. It eliminates the need for deploying code to a Salesforce org, providing a faster, reproducible testing and debugging workflow for Salesforce development. Key capabilities include running Apex tests, debugging with tools like VS Code, and integrating seamlessly into CI pipelines to automate regression detection.

## Release notes

Version v0.0.84

- Consolidate Type Assignment Functions And Fix Inner Enum Resolution

- Implement DescribeFieldResult.getCalculatedFormula Method

- Remove `run` Command; `exec` Enhancements

- Add Account.IsCustomerPortal Field And PageReference.forResource Method

- Namespace Metadata Relationship Values During Package Merge

- Gate schema/storage/server Commands Behind Dev Build Tag

- Fix Inherited Property Setter Recursion

- Improve Overload Resolution For Declared Generic Types

- Formula Evaluator Handles Nulls And Escapes

- Add IsTest testFor And critical Test Filtering

- Track RecordType Assignments And Allow Null RecordTypeId

- Fix Formula TEXT Formatting And Validation Rule Messages

- Add path@namespace Syntax For Inline Namespace Specification

- Add Label Namespace Support with Canonical Format

- Add StaticResources Support to Package Schema Merging

- Add Visualforce Pages and Components Support to Package Schema Merging

- Fix label namespace detection to preserve labels from different packages

- Fix SObject identifier resolution for case mismatches and namespace suffix matching

- Fix case-insensitive SObject type lookup in field validation

- Canonicalize Formula Label And Field References At Schema Load Time

- Improve Schema Merge And SOQL Cascade Handling

- Normalize Relationship Targets And SOQL Date Parsing

- Fix Namespaced DescribeFormula Expectations And Packagemerge Canonicalization Helpers

- Deprecate --as-namespace In Favor Of --default-namespace

- Add System.Debug Formatting

- Align SOQL Timeouts With Execution Context
