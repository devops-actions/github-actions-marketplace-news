---
title: Run AER Tests
date: 2025-12-26 21:07:17 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.76
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.76**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action provides a lightweight Salesforce-compatible runtime for validating Apex code, running tests, and debugging directly on your local machine or within CI pipelines. It eliminates the need to deploy code to a Salesforce org during development, enabling faster and more reproducible test cycles. Key capabilities include executing Apex test suites, running specific code paths, and supporting interactive debugging with tools like VS Code or IntelliJ.

## Release notes

Version v0.0.76

- Add TaskStatus Metadata Query Support And Task.IsReminderSet Field

- Add DescribeFieldResult isIdLookup And isDeprecatedAndHidden Methods

- Fix Task.IsClosed Based on TaskStatus

- Fix isUpdateable To Return False For Formula And Audit Fields

- Implement SetNull Delete Constraint For Activity Lookup Fields

- Fix SetNull To Skip Cascade-Deleted Records For Proper Undelete

- Add SObjectType.name Property To Return API Name

- Fix Nested Enum Resolution From Inner Classes

- Make Lookup Field Accessible When Parent Relationship Is Queried

- Handle Enum Field Types In JSON.deserialize

- Create Child Relationships When Merging Package Reference Fields

- Implement DescribeFieldResult.isUnique And isExternalId Methods

- Store MetadataRelationship Field Values As Ids Using INSERT Subquery

- Implement Namespace-Based Governor Limit Segregation

- Fix Boolean Custom Metadata Field Type Resolution With Namespace Prefix

- Cache Method Hierarchy Collection For Performance
