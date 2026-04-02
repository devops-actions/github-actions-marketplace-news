---
title: Run AER Tests
date: 2026-04-02 06:33:18 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.137
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.137**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action provides a lightweight runtime for validating and testing Salesforce Apex code directly on a local workstation or in CI pipelines, eliminating the need to deploy to a Salesforce org. It automates tasks like running Apex test suites, debugging code, and simulating Salesforce runtime behavior, enabling developers to iterate quickly and ensure consistent, reproducible test cycles. Key capabilities include support for interactive debugging, namespace configuration, and integration into GitHub Actions workflows for streamlined CI/CD processes.

## What's Changed

Version v0.0.137

- Treat Null Collections as Empty Sets in SOQL IN Clauses

- Handle Null Lookup Hops in Boolean Relationship Filters

- Log Server Startup and OAuth User Query Failures

- Fix Quarter Date Literal Calculations on Month Boundaries

- Allow ListView Name Field to Store Values Longer Than Reported Length

- Preserve Query Snapshots During Update Trigger Merges

- Support Interface Parameter Contravariance in Interface Implementations

- Use DeveloperName Keys for Custom Metadata getAll()

- Fix Custom ChangeEvent Field Resolution with Default Namespace

- Fix Type Checker Variable/Type Name Confusion and DML Exception Methods

- Preserve Explicit Query Values Across Reused Updates

- Fix Picklist Literal Equality in Formula TEXT Comparisons

- Cache Parsed Apex Files and SQLite Templates on Disk

- Fix Fiscal Quarter Literal Range on Quarter Boundaries

- Fix Cached SOQL Reloads, Flow Invocable Resolution, and ACR Defaults

- Fix Null Collection Handling in SOQL IN Clauses and TypeException Reporting

- Fix Datetime.valueOf Non-Padded Parsing and T Separator Handling

- Fix Platform Cache Partition Loading and Null-Safe Cache Key Typing

- Add Missing SingleEmailMessage Methods for Email Threading and Attachments

- Fix List Custom Setting Duplicate Name Validation

- Add PermissionSetLicenseAssign Object and Expand PermissionSetLicense Fields

- Add UserLogin Object to Default Schema

- Fix DmlException Metadata and ApexPages Error Summaries

- Fix Batch abortJob Handling for Current Async Jobs

- Add User Permission Fields to Default Schema

- Fix Pre-44 Queried Record Field Access After DML

- Fix Ternary Aggregate Query Result Conversion

- Fix Flow Conversion for User Fields, Loop Variables, and Choices

- Fix Queried Relationship Field Access After DML

- Allow List<SObjectType> Same-Type Instanceof Check

- Fix Reused Explicit Fields After Successful DML
