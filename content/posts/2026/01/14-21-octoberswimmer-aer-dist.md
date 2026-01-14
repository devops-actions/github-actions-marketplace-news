---
title: Run AER Tests
date: 2026-01-14 21:26:09 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.83
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.83**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action provides a lightweight, Salesforce-compatible runtime for validating Apex code, running tests, and debugging without requiring deployment to a Salesforce org. It automates test execution and regression detection in CI/CD pipelines, enabling faster, reproducible development workflows by simulating Salesforce environments locally. Key capabilities include running Apex tests, interactive debugging, and integrating seamlessly with metadata and CI systems.

## Release notes

Version v0.0.83

- Fix Trigger Isolation: Modifications to Trigger.new Don't Affect Caller Variables

- Fix Database.undelete to Fire Triggers and Reject Before Undelete

- Implement Trigger System Mode and Sharing Enforcement for Delete

- Populate referenceTo Field in DescribeFieldResult for Direct Access

- Implement Limits.getHeapSize()

- Implement Bulk DML 3-Attempt Retry Mechanism

- Track Apex Heap Usage Instead of Go Runtime Heap

- Canonicalize Generic Type Parameters in Type.forName

- Implement COUNT() with LIMIT and Validate Aggregate Query Restrictions

- Track SetFields for Non-Trigger Records to Preserve Concurrent DML Updates

- Namespace SummaryFilterCriteria Field Names in Rollup Summary Fields

- Seed FieldPermissions for All Profiles for All Custom Fields

- Parse Validation Errors in Insert Path to Return Correct StatusCode

- Fix SetFields Tracking For put() and Constructor Assignments In Trigger Context

- Fix StandardController.save() and getId() Behavior

- Make Map.keySet() Return a Set Backed by the Map

- Fix Serialization When Queueing Batch Jobs

- Support Workflow Rules in Packages with Formula-Based Criteria

- Fix typedNull Handling for SObject Id Fields

- Allow Before Triggers to Override Explicit Null Field Assignments

- Execute Pending Async Jobs After `@TestSetup` Completes

- Implement SingleEmailMessage.setBccSender and getBccSender Methods

- Add FiscalYearSettings, Period, and AdvAccountForecastFact to Default Schema

- Skip Rollup Update Triggers on Deleted Records

- Deny Read Only and Standard User Profiles Access to Custom Objects

- Implement Lookup Filter Validation for Insert and Update Operations

- Implement DATE() Formula Function for Date Construction

- Fix Relationship Traversal in Nested Subqueries

- Implement DML Methods for System.EmailException

- Preserve Block-Scoped Variables for Dynamic SOQL Bind Resolution

- Implement Structured DML Exceptions for STRING_TOO_LONG and REQUIRED_FIELD_MISSING

- Improve RecordTypeId Handling and NOT IN NULL Semantics

- Fix ContentDocumentLinks on Custom Objects and Add SOQL FROM Validation

- Add COLLATE NOCASE to SOQL IN clauses for string-type fields

- Fix LastModifiedDate Updates During DML and Test.setCreatedDate Behavior

- Fix Timestamp Consistency For Bulk DML Insert Operations

- Add Multi-source Support And Package Dependencies For `package create`

- Fix Inner Type Resolution In Generic Parameters For Type Checking

- Improve Type Checker Performance With Caching And Cycle Detection

- Fix Type Checker For Package Enums And Same-Line Variable Scoping

- Fix Type Checker For Multi-line Initializer Self-references

- Fix DmlException Message Format For REQUIRED_FIELD_MISSING Errors

- Add Standard System Fields to Location SObject Definition

- Add EntityParticle Metadata Records For Field-Level Schema Queries

- Fix Database.update Permission Checks For Platform Event Triggers

- Fix All Database Methods Permission Checks For Platform Event Triggers

- Fix Type Checker And VM For Class Field Method Chains

- Fix Inner Enum Type Resolution With --as-namespace Flag

- Fix Merge And AllOrNone Rollbacks
