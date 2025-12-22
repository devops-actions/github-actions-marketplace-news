---
title: Run AER Tests
date: 2025-12-22 21:13:01 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.74
dependentsNumber: "?"
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.74**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables developers to validate and run Apex tests in a lightweight, Salesforce-compatible runtime environment directly on their local workstation or within CI pipelines. It eliminates the need to deploy code to a Salesforce org, enabling fast and reproducible test cycles. Key capabilities include executing Apex test suites, running individual code paths, and integrating with metadata and CI workflows to streamline development and testing processes for Salesforce projects.

## Release notes

Version v0.0.74

- Fix Formula Field Translation For Aggregate Functions In SQLite

- Fix GROUP BY ROLLUP Column Mismatch And ORDER BY Issues

- Fix HAVING Clause Evaluation For GROUP BY ROLLUP Subtotal Rows

- Fix Integer Field Type Preservation In SOQL Results And Property Getters

- Add FISCAL_YEAR SOQL Function With Organization Settings Join

- Fix Namespace Resolution For Relationship Field Normalization

- Allow Casting List<String> To List<Id> For Set<Id> Construction

- Mark Opportunity CloseDate As Required Field

- Add Standard Fields To Custom Metadata Types During Package Creation

- Merge Package RecordTypes Before LoadStandardMetadata

- Fix Master RecordType isMaster() Returning False

- Add FiscalYear, FiscalQuarter, Fiscal Computed Fields To Opportunity

- Fix SOQL Relationship Case Bug, User License Exceptions, and GROUP BY Field References

- Fix Custom Field FLS: Standard User Should Not Have Implicit Access

- Fix Enum Builtin Methods For Unregistered Enum Types

- Normalize ObjectPermissions.SobjectType To Canonical Namespaced Name

- Fix Constructor Matching For Empty Collections

- Add Missing Permission Fields To PermissionSet Schema

- Preserve EnableActivities When Loading Package Schemas

- Add NamespacePrefix To RecordType

- Fix Case-Insensitive Formula Field Lookup After SOQL Query

- Add $Label Support In Formula Fields

- Unwrap SOQL Query Results When Assigning To Single SObject Properties

- Add Database.LeadConvert.setSendNotificationEmail Method

- Add Database.LeadConvert.isDoNotCreateOpportunity Method

- Fix Case-Insensitive Lookup For QueriedFields In Relationship Access

- Add RecordTypeInfo.isDefaultRecordTypeMapping Method

- Create OpportunityContactRole During Lead Conversion

- Update Existing Contact Fields During Lead Conversion

- Prevent Unset And Queried Null Fields From Overwriting DB Values

- Parse SOSL Query String To Return Correct Number Of Buckets

- Support Field Assignment And Access On Stub Instances

- Preserve Null For Schema.SObjectType Static Properties

- Preserve Null For Static Boolean Properties

- Remove Auto-Instantiation Of Static Property Null Values

- Add CampaignMember SObject And SObjectField.Name Property

- Canonicalize Schema Property Names At Resolution Time

- Add LSP Hover Support For SObject Fields And Relationships

- Preserve ExplicitNullFields When Cloning SObjects In Security.stripInaccessible
