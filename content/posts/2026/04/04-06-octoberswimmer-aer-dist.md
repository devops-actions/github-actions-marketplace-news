---
title: Run AER Tests
date: 2026-04-04 06:09:54 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.140
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.140**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action facilitates the validation, testing, and execution of Apex code in a lightweight Salesforce-compatible runtime, enabling developers to iterate on Apex logic without the need to deploy to a Salesforce org. It automates the process of running Apex tests within a CI/CD pipeline, providing fast and reproducible test cycles. Key capabilities include executing test suites, running individual code paths, and supporting interactive debugging, making it a powerful tool for Salesforce developers.

## What's Changed

Version v0.0.140

- Fix Flow Loop Variable References After Loop Exit

- Add Type Checker Validation for Same-Named Private Methods in Nested Classes

- Fix Database Insert DmlException Message Behavior

- Add Multi-Currency Support With Aggregate Conversion

- Fix Trigger Exception Types In DML Messages

- Fix Formula Field Metadata Normalization And Validation Refresh

- Fix Typed Map Value Checks In The VM

- Propagate Exceptions From compareTo During List Sort

- Allow Implicit Id Field Access On Queried Relationship Objects

- Fix Metadata Shadowing And External Id Batch Updates

- Support Single-Argument substringBetween Method

- Unescape HTML Entities In Field InlineHelpText

- Treat Unset Messaging Bodies As Null

- Fix Null String Compound Assignment In VM

- Clear Stale Trigger Errors Before Retry Update

- Canonicalize Constructor Names During AST Normalization

- Fix DmlException Field Metadata For Validation Rules

- Clear Stale Database.update Errors Before Retry

- Support Top-Level Set JSON Deserialization

- Preserve Number Field Scale In VM Outputs

- Default Missing Checkbox Formula Values In Trigger Context

- Implement IsvPartners AppAnalytics Builtin

- Support Legacy Named Credential Callout Metadata

- Normalize Blank Text DML Fields Before Trigger Evaluation

- Fix SUM Rollup Type Consistency And Array Instanceof Checks

- Treat Equivalent Numeric Values As Unchanged In ISCHANGED

- Wrap Trigger DML Errors With Execution Phase Context

- Clear Stale Insert Trigger Errors Before Later DML

- Fix DescribeFieldResult SoapType Property Access

- Format DML Exception Messages With Operation Prefix

- Fix Namespaced Generic Type Canonicalization

- Fix Namespaced Nested Generic Type Canonicalization

- Use Metadata For Relationship Type Pseudo-Fields
