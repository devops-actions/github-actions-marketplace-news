---
title: Run AER Tests
date: 2026-08-16 06:02:11 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v1.2.33
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The aer GitHub Action runs Apex and Apex unit tests locally on the user's machine. It provides a local environment to execute code with SOQL, DML, and test data, similar to an org but without the need for an organization or deployment process. The action supports various features of Salesforce Apex such as SObjects, triggers, validation rules, and testing frameworks, and can be used from the CLI, CI/CD pipelines, and integrated with development environments like VS Code.
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v1.2.33**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The aer GitHub Action runs Apex and Apex unit tests locally on the user's machine. It provides a local environment to execute code with SOQL, DML, and test data, similar to an org but without the need for an organization or deployment process. The action supports various features of Salesforce Apex such as SObjects, triggers, validation rules, and testing frameworks, and can be used from the CLI, CI/CD pipelines, and integrated with development environments like VS Code.

## What's Changed

Version v1.2.33

- Strip Relationship Data From Record-Triggered Flow Records

- Evaluate Unique Field Constraints Against The Whole DML Batch

- Resolve Flow Constant References In The Interview Runtime

- Publish The Startup Heartbeat Phase And Counters As One Value

- Format Decimal Values Per Locale And Condense Runaway Error Messages

- Convert Flow Datetime Literals To Parseable Apex Expressions

- Read Auto-Stored Subflow Outputs Through The Subflow Interview

- Implement Fuzzy Name Matching And Field Diffs For Duplicate Rules

- Reject Invalid Custom Share Access Levels And Unset Ids On Failed Insert

- Never Infer An Ownership Or Audit Reference As A Sharing Parent

- Apply The Sharing Write Check To List Updates

- Unpack Dec128 Rollup Summary Columns In Aggregate Functions

- Reset Sharing Mode At The Top-Level Trigger Boundary
