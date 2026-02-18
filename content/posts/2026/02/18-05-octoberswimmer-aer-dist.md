---
title: Run AER Tests
date: 2026-02-18 05:46:07 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.111
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.111**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action facilitates the validation and testing of Salesforce Apex code by providing a lightweight, Salesforce-compatible runtime that can be used locally or in CI workflows. It enables developers to quickly execute Apex tests, debug code, and iterate without deploying to a Salesforce org, significantly improving development speed and reproducibility. Key features include running test suites, executing specific code paths, and supporting interactive debugging for streamlined troubleshooting.

## Release notes

Version v0.0.111

- Snapshot Canonical Name Bindings For VM Runtime Lookup

- Support Double Namespace Prefix In Field Set Map Lookups

- Add Apex Semantic Token Coloring To LSP, VS Code Extension, and lspc

- Add Changelog to VS Code Extension

- Enforce Resolution-Time Canonical Bindings

- Fix Canonical Builtin Dispatch And Runtime Resolution Regressions

- Cache Overload Resolution And Parameter Canonicalization In VM Dispatch

- Preserve Schema Metadata Flag When Populated At Pool Creation

- Reduce Runtime Case Folding In VM Dispatch

- Reduce LookupLower Case Folding In VM Hot Paths

- Migrate Numeric Storage From Float64 to Dec128

- Fix JSON Decimal Deserialization Precision And Numeric IN Clause Queries

- Convert String Values To Decimal For Numeric Fields In Subquery Results

- Disambiguate Overloaded Method Definitions In LSP And SCIP

- Fix Map With Custom HashCode Keys And Add Global Property Validation

- Initialize Rollup Summary Fields Before Insert Triggers

- Fix Lazy Formula Hydration For Non-Query SObjects

- Sort Debugger Variables Alphabetically For Consistent UI Display

- Stop Eagerly Loading Unqueried Fields From Storage After SOQL

- Fix Query Formula Recalculation Context And Subquery Default Ordering

- Fix Case-Insensitive Field Lookup For Numeric BLOB Values

- Add Shared Database For Read-Only Metadata And Fix CustomPermission FK Constraints

- Fix Query Formula Recalculation And Value Normalization

- Fix Duplicate CustomPermission Detection When Namespace Is Applied

- Add API Version Tracking For Classes And Triggers

- Fix Shared Permission Seeding Transaction Boundaries

- Fix Formula Recalculation For Relationship Dependencies Using Date Functions

- Fix Deterministic Subquery Fallback Ordering And Audit Timestamp Precision

- Fix Null SObject Field Access For Auto-Implemented Properties

- Use API Version To Allow Deprecated Limits.getChildRelationshipsDescribes

- Use API Version To Allow Deprecated SObject.recalculateFormulas

- Fix Formula Field Handling In WHERE Clauses And Case-Insensitive Bind Expressions

- Use API Version To Allow @IsTest Methods In Non-@IsTest Classes

- Version Private Method Override Semantics By API Level

- Enforce Resolution-Time Canonical Naming And Remove VM Runtime Folding

- Fix Numeric Assignment Semantics And Formula BR Handling

- Replace Site.getPrefix Deprecated Flag With API Version Check

- Replace Remaining Site Deprecated Flags With API Version Checks

- Fix Nested JSON Array Field Type Resolution

- Cache External User Resolution Status For User IDs

- Fix JSON Child Relationship Deserialization For Typed SObjects

- Reduce Parent Class Lookup Canonicalization Overhead

- Remove --allow-deprecated Flag And Quoted Bind Variable Override

- Stabilize Decimal Multiplication And Cross-Type Equality Semantics

- Add Web Extension WASM Support For aer-dap-client

- Update Dependencies To Remove Deprecated gojs Dependency

- Copy SetupEntityAccess To Local Database For Test Deletion

- Add Web Extension Debugging Support For Apex Test Runs

- Fix Metadata Relationship Subquery Hydration And Instanceof Diagnostics

- Fix Inner Class Property Resolution To Prioritize Fields Over Nested Types
