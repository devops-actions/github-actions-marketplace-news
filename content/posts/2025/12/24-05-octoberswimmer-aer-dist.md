---
title: Run AER Tests
date: 2025-12-24 05:30:10 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.75
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.75**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate Apex code, run tests, and simulate a lightweight Salesforce-compatible runtime locally or in CI pipelines. It automates Apex test execution, speeding up development cycles by eliminating the need for deployments to Salesforce environments. Key capabilities include running Apex tests, debugging code, and integrating with CI workflows to ensure fast and reproducible test results.

## Release notes

Version v0.0.75

- Preserve Decimal Precision In Arithmetic Operations

- Add Savepoint Rollback For DML And Database Methods On After Trigger Failure

- Fix --skip Flag Handling In LSP Settings And Add Standard SObject Detection

- Exclude Static Methods From Resolution On Instance Targets

- Support Date And Datetime Arguments In Date.valueOf And Datetime.valueOf

- Add getLabel To SObjectType And isEncrypted To SObjectField

- Evaluate Date And DateTime Default Value Formulas And Literals

- Add Case.IsClosed Auto-Sync With Status Field

- Remove packageDir Setting When Not Specified In LSP Configuration

- Fix For Loop Variable Scoping To Not Shadow Class Properties

- Add System.schedule Cron Expression Validation

- Fix AuraHandledException.getMessage To Return Script-thrown Exception

- Add Type Checker Duplicate Variable Detection

- Add Opportunity.IsPrivate Field And Fix Checkbox Field Type Detection

- Fix Method Overload Resolution For Null Id Fields

- Filter SOQL Alias Fields During DML Operations
