---
title: Run AER Tests
date: 2026-03-21 05:49:55 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.128
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.128**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action facilitates running Apex tests and executing Apex code in a lightweight, Salesforce-compatible runtime environment directly within GitHub Actions workflows. It eliminates the need to deploy Apex code to a Salesforce org for validation and testing, enabling faster, more reproducible test cycles. Its key capabilities include running test suites, executing individual code paths, and supporting interactive debugging for efficient development and troubleshooting.

## Release notes

Version v0.0.128

- Generate `sf`-Compatible OAuth Tokens

- Load Quantity Field in CartExtension.CartTestUtil.getCart

- Skip Classes With Unimplemented Interface Errors and Filter Dependent Test Classes When Using --skip-errors

- Fix Cumulative Query Limits And Namespaced Trigger Registration

- Delegate PricingCartCalculator.calculate to Mock Executor

- Implement User Role Formula Globals And Null Text Comparison Semantics

- Improve --skip-errors Output and Add Tip for Validation Errors

- Load CartValidationOutput Records in CartTestUtil.getCart

- Add Tip and Skip Count for Symbol Resolution Errors

- Fix Incremental Nested Type Reloads and Cache Builder Class Args
