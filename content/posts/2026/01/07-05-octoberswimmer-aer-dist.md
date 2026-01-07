---
title: Run AER Tests
date: 2026-01-07 05:39:03 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.79
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.79**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables users to validate and test Apex code in a lightweight, Salesforce-compatible runtime without deploying to a Salesforce org. It automates testing workflows, accelerates development cycles, and ensures fast, reproducible results by running tests locally or in CI pipelines. Key capabilities include executing Apex tests, running individual code paths, and supporting interactive debugging with tools like VS Code or IntelliJ.

## Release notes

Version v0.0.79

- Prevent Internal CampaignMemberStatus Queries From Counting Toward Governor Limit

- Apply Namespace Prefix To SObject Field Names During Resolution

- Fix SOQL Relationship Query Tracking And Template Activities

- Improve DmlException Message Parsing

- Fix Date To Datetime Conversion And Datetime.addYears Mutation Bug

- Sync PricebookEntry Fields To After-Insert Triggers

- Avoid Counting Internal Validation Queries

- Throw JSONException When Deserializing Invalid Types To Class Objects

- Compute Trigger.old Formula Fields During Update

- Handle NULLVALUE In SQL Formula Translation

- Guard Native Dispatch Against User Overrides

- Handle Invalid Id Binds In SOQL Comparisons

- Enforce Id Validation In VM Assignments

- Restrict Cascade Undelete To CascadeDelete Relationships

- Track Constructor Null Assignments

- Align SObject Set Equality With Queried Fields

- Handle ToLabel Relationship Aliases in SOQL

- Preserve Implicit Defaults In DML Updates

- Normalize AddError Storage And Relationship Resolution

- Map Standard Profile Metadata to Standard User

- Add CustomNotificationType To Default Schema

- Fix Local Variable Definition Scoping In LSP

- Prevent Upsert Defaults On Updates

- Scope DescribeSObjectResult Cache By Namespace

- Handle Object-Prefix Relationship Paths In SOQL

- Fix Decimal Rounding And Long Arithmetic

- Add Missing Standard SObject Fields To Default Schema

- Improve Delete Handling And Add Cascade Delete Testdata

- Support Profile UserLicense Relationship And Fix OpportunityLineItem Name

- Fix SOQL List-To-Single Conversion For SObject Constructor Parameters

- Route Upsert Through Trigger-Aware DML Path

- Avoid Duplicate FieldDefinition For Namespaced Aliases

- Normalize Metadata Definition Id Handling

- Implement Id Relational Comparisons

- Handle getSObjects For Non-Query Records

- ndle Standard Value Sets In Metadata Format And Lead Status Validation

- Fix Double SOQL Evaluation When Passing Query To Constructor

- Fix SObject.isSet() To Respect QueriedFields For SOQL Records

- Normalize Namespaced Relationships And Coerce Date Fields

- Fix System.runAs Profile Resolution And stripInaccessible Error Messages

- Fix JSON Child Relationship Deserialization

- Normalize Set Copy Coercion And Datetime Equality

- Handle Namespaced FieldSet Access

- Reset Current Page Reference During Test Isolation

- Implement Sharing Enforcement In SOQL Queries

- Implement Leap-Day Capping in Date.addYears

- Enforce MasterDetail Required Fields In Schema Import

- Implement AccessLevel Support for Database.queryWithBinds

- Reject AggregateResult in Security.stripInaccessible

- Implement SOQL FORMAT Function

- Capture Sharing Context in QueryLocator for Deferred Execution

- Handle Array Type Identifiers In Symbol Resolution

- Implement Blob JSON Serialization and String-to-Blob Assignment

- Implement DescribeFieldResult.isCaseSensitive Method

- Reject Seconds in Datetime.parse Input Format

- Normalize Id Assignments And Email Relation Dedup

- Defer UserRecordAccess Updates for Insert/Update/Delete Operations

- Fix Date Function Ordering And Aggregate Type Coercion

- Support System.enqueueJob Overloads And Duplicate Signature Detection

- Add FormulaEval.FormulaGlobal Enum Constants

- Fix Type Checker To Handle References To The Same SObject With And Without Namespace

- Add Organization.SignupCountryIsoCode

- Preserve Integer SObject Field Semantics
