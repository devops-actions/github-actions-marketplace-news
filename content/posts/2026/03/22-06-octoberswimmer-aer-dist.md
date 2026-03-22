---
title: Run AER Tests
date: 2026-03-22 06:04:20 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.129
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.129**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables users to validate and test Salesforce Apex code by running a lightweight, Salesforce-compatible runtime directly in their CI/CD pipelines. It automates tasks such as executing test suites, running specific code paths, and debugging, without requiring deployment to a Salesforce org. This action streamlines development and testing workflows by providing fast, reproducible test cycles and additional support for namespace handling and custom CLI flags.

## Release notes

Version v0.0.129

- Add triples Command For Generating RDF Triples From Project

- Support Interfaces and Enums in @IsTest testFor Validation

- Add LWC File Upload Support And Fix Transaction Management

- Load Product2Id in CartTestUtil.getCart and Fix Namespace Case Sensitivity

- Add VM Cleanup To Tests To Prevent Database Connection Leaks

- Add Default CartDeliveryGroup to CartTestUtil.createCart

- Fix Async Test Tooling Records, Bulk Query Pagination, and VM Map Access

- Add /dev/explorer Endpoint With Reactodia Visualization

- Fix Explorer: Use Proper Reactodia Hooks and Remove OWL Meta-types

- Add Apex Classes, Interfaces, Enums, And Triggers To Explorer Triples

- Add Shared internal/triples Package For RDF Triple Generation

- Enhance Explorer With Code Analysis, Styling, And Auto-link Fetching

- Persist Explorer Graph State And Relationship Filters In LocalStorage

- Add Source Viewer Modal With Line-based Navigation For Explorer

- Add Throws and Instantiates Relationships, And Exception Class Type

- Add Product2 Classification Fields and Type Checker Validation

- Add Commerce OMS Standard Objects to Schema

- Enhance Explorer With SObject Schema Lookup, DML tracking, And Field Access Relationships

- Load LeadConvertSettings Metadata And Canonical Lead Convert Mappings

- Add Async Job Relationship Tracking (enqueues, startsBatch, schedules) To Explorer

- Add callsFuture Relationship For Tracking @future Method Calls
