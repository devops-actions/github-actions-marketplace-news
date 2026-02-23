---
title: Run AER Tests
date: 2026-02-23 21:45:21 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.113
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.113**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate Apex code, execute tests, and simulate a lightweight Salesforce-compatible runtime locally or within CI/CD pipelines. It automates the process of running Apex tests without requiring deployment to a Salesforce org, significantly speeding up testing cycles and ensuring reproducibility. Key capabilities include running test suites, debugging code, and simulating Salesforce behavior using local SObject metadata.

## Release notes

Version v0.0.113

- Replace Schema Lowercase Maps With Canonical Name Types

- Add Canonical Name Types And Reduce Runtime Case-Folding

- Refine Resolver Name Typing And Canonical Relationship Resolution

- Fix NULLVALUE/BLANKVALUE Formula Semantics For Text Fields

- Synthesize Canonical Name Fields For Related Person Records

- Fix BlankAsZero Text Formula Regression

- Add Additional Formula Functions

- Fix JSON Deserialize Update Field Tracking

- Adopt Canonical VM Name Types And Fix Relationship Hydration Regressions

- Canonicalize SObject SetFields Keys And Preserve JSON Deserialize Updates

- Align Relationship Hydration With Query Origin

- Clear Caller Insert IDs After Trigger Rollback

- Normalize Lookup Resolution And LEN Null Semantics

- Add Pull Diagnostics And Folding Ranges To LSP

- Add Workspace Folders Support To LSP

- Canonicalize JSON Deserialize Type Resolution And Relationship Names

- Fix Decimal Precision Bugs

- Canonicalize Formula Dependency Caching; Fix Async Timeout Scopes

- Add TabDefinition, RecentlyViewed, and Related Schema Objects

- Implement FOR VIEW Clause To Populate RecentlyViewed

- Implement SOSL WHERE Clause Filtering For Search.query

- Stabilize Formula Resolver Caching And DML Exception Accessors

- Canonicalize Namespace Handling Across Resolver, SOQL, And VM

- Add DescribeFieldResult Property Access Support

- Add ContentVersion Default Fields And SOSL ORDER BY Validation

- Implement SOQL USING SCOPE Clause And Queue Owner Validation

- Precompute Canonical Schema Lookup Indexes And Remove VM Case Folding

- Add Standard User Object-Specific Delete Permissions And Canonical Type Usage

- Fix API Version Threshold For Test Methods In Non-Test Classes

- Add Date, DateTime, And Time Static Method Return Types To Type Checker

- Recognize Label.site As Standard Salesforce Label Namespace

- Enforce Public-Only License Restrictions And Update License Show Display

- Allow Casts Between Interface Types And Implementing Classes

- Canonicalize Relationship Path Element Typing And Harden Relationship Hydration

- Replace Shared Database FK Constraints To Non-Shared Tables With CHECK NULL

- Enforce Content ObjectPermissions Restrictions And Align Delete Semantics

- Add Per-Class VM Pool With Estimation-Based Expansion
