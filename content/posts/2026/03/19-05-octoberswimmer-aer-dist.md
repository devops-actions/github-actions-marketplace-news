---
title: Run AER Tests
date: 2026-03-19 05:59:50 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.125
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.125**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables developers to validate, test, and debug Salesforce Apex code in a lightweight, Salesforce-compatible runtime environment without the need to deploy to a Salesforce org. It automates tasks such as running Apex tests, executing specific code paths, and providing an interactive debugging experience, helping streamline development workflows by enabling faster, reproducible test cycles. The action is particularly useful for integrating Apex test automation into CI/CD pipelines, with support for additional configurations such as test filtering and namespace customization.

## Release notes

Version v0.0.125

- Fix Queue-Owned Visibility In Sharing Enforcement

- Fix Debugger Variable Editing With Type Checking

- Fix Async Apex Visibility And Sharing Regressions

- Fix Owner:Queue Formula Resolution And Group Defaults

- Enforce RunAs Delete Sharing In Apex Tests

- Fix Package Mock Parsing And Interface Method Generation

- Fix Person Account SOQL Filtering By IsPersonAccount

- Fix Messaging EmailFileAttachment Getter Defaults

- Fix PersonAccounts Inference And Describe Field Local Names

- Fix ISNULL Lookup Formula Semantics In Validation And SOQL

- Fix REST Query Columns Metadata And Subquery Results

- Fix N_DAYS_AGO DateTime Boundary Drift Across DST

- Fix Workflow Formula Namespace Inference

- Fix ContentVersion Version Inserts On Existing Documents

- Fix Package Mock AutoNumber And Metadata FK Resolution

- Add CartExtension Executor Delegation And Typechecker Validations

- Implement CartTestUtil.getCart Related Record Loading And Change Builtins

- Fix Visualforce EmailTemplate Subject Precedence

- Fix Bootstrap Test User Selection During Metadata Load

- Fix Standard Value Set Mapping

- Exclude Share And History Objects From ContentDocumentLink Targets

- Implement DescribeSObjectResult.isDeprecatedAndHidden Method

- Remove findSingleExistingUserDefault To Always Create admin@aer.local

- Add InventoryCartCalculator Builtins And CartItem Sku Loading

- Add CartExtension.CartItemPriceAdjustment Builtins

- Resolve Custom Permission References With Default Namespace

- Bind Server To 0.0.0.0 When PORT Environment Variable Is Set

- Add AER_PASSWORD Environment Variable And Password Protection

- Implement WireMock Support And Metadata Query Fixes

- Fix Built-In Prefix Maps And Active Schema Table Creation

- Fix SOAP Login User Validation And OAuth Password Grant Fallback

- Add --skip-errors Flag To Test Command

- Fix Schema Field Local Names And Namespace Key Resolution

- Deploy Role Metadata In Reference Verification And Gate VM Code Reloads

- Fix Populated Field Iteration And Local Name Resolution
