---
title: Run AER Tests
date: 2026-01-10 05:30:59 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.82
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.82**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate, test, and debug Salesforce Apex code in a lightweight, Salesforce-compatible runtime without requiring deployment to a Salesforce org. It automates the execution of Apex tests and supports continuous integration workflows by running tests directly in GitHub Actions, making development cycles faster, more reproducible, and efficient. Key capabilities include metadata imports, namespace testing, interactive debugging, and seamless integration with CI pipelines to catch regressions early.

## Release notes

Version v0.0.82

- Add SharingModel to User Object

- Filter Rollup Summary Fields from User DML Updates

- Require Name Field on List Custom Settings Insert

- Add `package show field` Command

- Fix Child Relationship List Access From Map And Canonicalize Primitive Types

- Isolate Async Job Sharing Context From Caller

- Track Explicitly Set Fields For Update DML Merge

- Apply Opportunity Stage Defaults After Before Triggers

- Validate RecordTypeId Before Triggers Run During Insert

- Pass UninstallContext to Test.testUninstall Handler

- Return Error In DeleteResult For Nonexistent Records

- Set Default InstanceName on Organization Singleton

- Canonicalize Inner Class Names With Namespace Prefix in Type.forName

- Do Not Apply Schema Defaults For Empty Custom Setting Records

- Reset FeatureManagement Values Between Test Methods

- Add Missing Account Child Relationships

- Fix Formula Evaluation Returning Wrong Results

- Convert Formula Results to VM Types for Proper Casting

- Fix Decimal Comparison Between Formula Results and Literals

- Implement TIMEVALUE Formula Function

- Fix JSON Serialization Order and Formula Evaluation with User Classes
