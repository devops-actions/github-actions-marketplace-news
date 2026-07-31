---
title: Run AER Tests
date: 2026-07-31 22:40:38 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v1.2.28
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The aer GitHub Action automates the execution of Apex tests locally without requiring an org or sandbox. It supports running unit tests with code coverage and provides an interactive debugger for debugging Apex code. The action is useful for developers to quickly test their Apex code in a local environment, reducing deployment cycles and improving feedback loops.
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v1.2.28**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The aer GitHub Action automates the execution of Apex tests locally without requiring an org or sandbox. It supports running unit tests with code coverage and provides an interactive debugger for debugging Apex code. The action is useful for developers to quickly test their Apex code in a local environment, reducing deployment cycles and improving feedback loops.

## What's Changed

Version v1.2.28

- Defer UserRecordAccess Rebuilds And Cache Prepared Statements

- Add TIMENOW, TIMEVALUE, And Time Component Support To Formula Backends

- Zero Only Blank Field References In BlankAsZero Formulas

- Support Apex Custom Adapters For External Data Sources

- Return Null From DATE() In Generated SQL When A Component Is Null

- Store Datetimes At Whole-Second Precision And Advance SystemModstamp On Update

- Type Blank Picklist Field Arguments As String In Overload Resolution

- Promote Null-Coalescing Operands To The Wider Numeric Type

- Grant The Default Admin Install Packages And Modify Metadata

- Skip No-Op Workspace Retry And Validate Declared Enum Constants

- Type SObject.Id And Reject Unconvertible Primitive Arguments

- Drop Metadata With Missing Dependencies Under --skip-errors

- Model Entity Feeds As Projections Of FeedItem

- Translate MOD To SQL And Return The Dividend For A Zero Divisor

- Translate TRUNC To SQL Using Exact Decimal Truncation

- Translate PI, SQRT, EXP, LN, And LOG To SQL

- Translate The Trigonometric Functions To SQL

- Translate INITCAP, LPAD, And RPAD To SQL

- Translate ASCII And CHR To SQL

- Translate DAYOFYEAR, ISOWEEK, And ISOYEAR To SQL

- Translate DATETIMEVALUE, UNIXTIMESTAMP, And FROMUNIXTIME To SQL

- Support DISTANCE Over A Location Field In Queries And At Runtime

- Translate PICKLISTCOUNT To SQL

- Return Null From DATE() For An Out-Of-Range Month Or Day

- Translate FORMATDURATION To SQL

- Implement CURRENCYRATE, GETSESSIONID, And IMAGE

- Declare PermissionSet Child Relationships And Render FieldPermissions.Field

- Report Loaded Packages And The Default Namespace As Licensed

- Convert Get Records Output Assignments And Fix Undeclared Flow Variables

- Skip The Relationship Container When User-Mode DML Checks Field Access

- Report Source And Package Permission Sets As Custom

- Mark Only Related Records As Relationship Fields In SObject.put
