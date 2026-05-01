---
title: Run AER Tests
date: 2026-05-01 06:16:19 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.167
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.167**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action facilitates the validation, testing, and debugging of Salesforce Apex code by providing a lightweight, Salesforce-compatible runtime environment directly on a workstation. It automates tasks such as running test suites, executing specific code paths, and enabling interactive debugging, all without requiring deployment to a Salesforce org. This action helps streamline development workflows, making test cycles faster, reproducible, and more efficient for Apex developers.

## What's Changed

Version v0.0.167

- Move Per-VM Method Coverage Tracking Into Its Own File

- Split SOQL Aggregate Inference And Rollback Helpers Into Their Own Files

- Move Builtin Method And Class Lookup Helpers Into Their Own File

- Move Hierarchical Custom Setting And Custom Metadata Helpers Into Their Own File

- Move Static Field And Property Lookup Pipeline Into Its Own File

- Implement RevSalesTrxn Namespace Builtins

- Move Namespace Resolution Helpers Into Their Own File

- Move Apex Exception And Stack-Trace Machinery Into Its Own File

- Move Interface-Method Collection Helpers Into Their Own File

- Move SOQL Relationship-Target Resolution Into Its Own File

- Move Variable Scope And Name Resolution Pipeline Into Its Own File

- Create Entity-Feed Objects For enableFeeds Custom Objects

- Move Object Instance Cloning Helpers Into Their Own File

- Move Declared-Type Resolution Helpers Into Their Own File

- Move Variable Assignment Pipeline Into Its Own File

- Move Exception Formatting And Class Display Helpers Out Of vm.go

- Move Canonical Field-Map Conversion Helpers Into Their Own File

- Move TypedNull And Null-Sentinel Helpers Into Their Own File

- Move ObjectInstance Type And Core Field Machinery Into Its Own File

- Split String Conversion And Escape-Sequence Helpers Into Their Own Files

- Move SObject Instance Type And Methods Into Their Own File

- Move Runtime Wrapper Instance Types Into Their Own File

- Move Custom-Settings Builtin Dispatcher Into custom_settings.go

- Move Custom Metadata Builtin Dispatcher Into Its Own File

- Move Exception Type-Check And Builtin Dispatch Into exceptions.go

- Preserve Workflow Rules Across ResetInMemoryState

- Move Test.createStub Dispatch Pipeline Into Its Own File

- Move Enum Type Method And SQL Parameter Prep To Their Topic Files

- Move Default Object Method Dispatcher Into Its Own File
