---
title: Run AER Tests
date: 2026-01-27 21:41:56 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.95
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.95**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables users to validate and test Salesforce Apex code in a lightweight, Salesforce-compatible runtime environment without needing to deploy to a live organization. It automates the execution of Apex tests, supports debugging, and ensures fast, reproducible test cycles, making it ideal for iterative development and troubleshooting. Key capabilities include running test suites, individual code execution, and interactive debugging, all while simulating Salesforce-like behavior.

## Release notes

Version v0.0.95

- Implement Java MessageFormat Single-Quote Semantics in String.format

- Return SObject From Type.newInstance When Inner Class Shares Name

- Remove Incorrect Inner Class Scan From Type.newInstance

- Support Top-Level Classes as @InvocableMethod Input Types

- Fix DATETIME Literal Formatting In SOQL AST-To-String Conversion

- Fix AccountId Field Label to "Account ID" in Default Schema

- Convert Percent Field Default Values From Decimal to Display Form

- Treat Empty Child Relationship Lists as Default SObject Field Values

- Add --filter-path Flag to Filter Tests by Source File Path

- Fix String.format To Preserve Apostrophes Not Adjacent to Braces

- Propagate Trigger addError Back to Original Record for hasErrors
