---
title: Run AER Tests
date: 2026-03-31 06:13:36 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.136
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.136**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables users to validate and test Apex code by running a lightweight Salesforce-compatible runtime directly in their CI/CD pipelines. It automates the execution of Apex tests, allowing for fast, reproducible test cycles without needing to deploy code to a Salesforce org. Key capabilities include running test suites, debugging code, and simulating Salesforce-like environments with SObject metadata integration.

## What's Changed

Version v0.0.136

- Handle Empty SOQL Results with Null-Coalescing Operator

- Implement ISNUMBER Function in Formula-to-SQL Translation

- Apply Field Permissions from Source Profiles to Builtin Profiles

- Optimize Schema Initialization and Metadata Seeding

- Resolve External ID Relationships Before Triggers Run

- Fix String.isNumeric to Check for Digits Only

- Throw NullPointerException for Arithmetic on Both-Null Operands

- Parallelize Type Checking and Prepare Schema Before Validation

- Fix Static Property Nested Getter and Batch Update Timestamps

- Throw ListException for Out-of-Bounds Array Index Read

- Extract Numeric Value from AggregateResult for SObject Field Assignment

- Build VM Templates from Merged Schemas and Log Fresh DDL Phases

- Fix DescribeFieldResult.getSObjectType And List<String> To Id[] Conversion

- Normalize Array Syntax to List Syntax at Canonicalization Time

- Query List Custom Settings by Name in getInstance

- Use Case-Insensitive Lookup for referenceTo Validation

- Fix Postfix Operator Precedence with Cast Expressions

- Resolve External ID Relationships Before Formula Field Calculation

- Recognize Exception Subclasses as Implementing Inherited Interface Methods

- Add Allow-Callouts Support for Named and External Credential Callouts

- Add Missing Organization Schema Fields

- Fix Date Comparison in ISCHANGED Validation Rule Evaluation

- Pre-compute Formula Dependencies at Schema Load Time

- Prefer More Specific Method Overloads and Fix Bootstrap Connection Pooling

- Cache Relationship Path Canonicalization Results

- Add Missing Schema Describe Methods

- Add MailmergeTemplate to Default Schema

- Add MobileApplicationDetail to Default Schema

- Allow Underscores in Namespace Names

- Add Invocable.Action Instance Methods

- Support Contravariant Parameter Types in Interface Implementations

- Add Missing Fields to Note Schema
