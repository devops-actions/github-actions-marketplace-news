---
title: Run AER Tests
date: 2026-01-24 21:39:45 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.93
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.93**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate and test Salesforce Apex code locally or within CI/CD pipelines without deploying to a Salesforce org. It provides a lightweight, Salesforce-compatible runtime for running tests, debugging, and executing Apex logic, significantly improving the speed and repeatability of development and testing workflows. This action also supports metadata imports, interactive debugging, and seamless integration with GitHub Actions to automate regression tests and streamline CI processes.

## Release notes

Version v0.0.93

- Canonicalize Global Variables In Formulas At Load Time

- Fix List.sort() Stability With Inconsistent Comparators

- Skip Parent Triggers When Rollup Values Unchanged

- Parse Datetime Literals in Dynamic SOQL Queries

- Fix Formula Field Calculation For Null Nested Relationship Dependencies

- Add Standard Platform User Profile and Fix Standard User UserLicense

- Normalize Workflow Rules On Load

- Improve License Guidance In Debug And Test Limits

- Implement RequestVersion Context For RunAs(Version)

- Enforce Callout Work Pending Rules

- Canonicalize SObject List Casts and Namespace Resolution

- Add Multi-level Verbosity For `test`

- Fix Id/String Collection Compatibility Bug

- Implement isQueryable and isSearchable for DescribeSObjectResult

- Return Correct Types for SObject Field Access in Type Checker

- Fix PermissionSet Seeding And ObjectPermissions Enforcement

- Improve Metadata Import And Custom Permission Wiring

- Fix Abstract Method Detection For Empty Overrides

- Add Content Library Schema Objects

- Throw TypeException for DML Methods on Non-DML Exceptions

- Implement getDigits() on DescribeFieldResult

- Add ListView Standard Object To Schema

- Allow Construction of Auth Exception Types

- Preserve Enum Constant Casing In String.valueOf And String Concatenation

- Enforce Single-Row Semantics for SOQL in List Literals

- Treat Name as system field for USER_MODE FLS checks

- Fix Inner Class toString() To Return Simple Class Name

- Fix Package Metadata Namespacing And Loading For Permission Sets and Custom Permissions

- Mark Lookup Fields Queried For Relationship Paths

- Allow Custom Metadata Types To Be Queried With USER_MODE

- Handle Subquery Permission Checks In USER_MODE SOQL

- Convert Percent Field Values To Decimal For Validation Rule Formulas

- Preserve Declared Fields In Default clone()

- Fix Lazy Parent Field Initialization In Child Initializers

- Fix Built-In User Read Permissions And Add USER_MODE Coverage

- Support Record-Triggered Flows with Scheduled Paths

- Fix Id/String Comparison Validation

- Fix this/super Assignment Class Resolution

- Fix QueryWithBinds Evaluation And Bind Replacement Order

- Fix JSON.deserialize Declared Field Assignment

- Fix Static Context Class Resolution And JSON Parser Auto-Advance

- Isolate Batch Callout Transactions For Uncommitted DML Tracking
