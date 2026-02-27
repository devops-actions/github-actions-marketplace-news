---
title: Run AER Tests
date: 2026-02-27 21:26:21 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.116
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.116**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action provides a lightweight runtime for validating Apex code and executing Salesforce tests locally or within a CI/CD pipeline without the need to deploy to a Salesforce org. It automates the testing process, supports rapid iteration, and ensures reproducible test cycles by simulating Salesforce-compatible behavior. Key capabilities include running Apex tests, executing specific code paths, and enabling interactive debugging for streamlined development and troubleshooting.

## Release notes

Version v0.0.116

- Reset Email Template Controller Between Render Calls

- Filter Auto-Generated Object Types In Package Mock

- Add getOrgWideEmailAddressId To SingleEmailMessage

- Cache staticFieldClassCandidates And Add Timeout Timing

- Fix Flow Converter Duplicate Variable And IsBlank Operator

- Add Person Account Support With --feature PersonAccounts Flag

- Fix JSON SObject Duplicate Column Detection

- Allow Cast Of AggregateResult.get() Return Value To Integer

- Add getTemplateName Method To Messaging.SingleEmailMessage

- Add Numeric Widening For Method Overload Resolution

- Support $User ValueField In Lookup Filters

- Add Site And SiteDetail Standard Objects To Schema

- Fix Explicit Package Type Resolution In Subscriber Code

- Allow Protected Field Access Between Sibling Inner Classes

- Support Conditional Audit Field Writeability Via Security Settings

- Resolve Child Relationship Field Type For Overload Resolution

- Serialize Getter-Backed Properties In JSON Output

- Error On Circular MetadataRelationship Dependencies

- Fix Child Relationship Names And Interface Stub Generation In `package mock`

- Support PersonAccount Record Types From Source Metadata

- Upgrade sformula To v0.10.0

- Fix Schema-qualified SObject resolution in SOQL and Type.forName

- Add DAP Restart Support With Immediate Execution Abort

- Add Missing Id Field to ContactPointAddress and ContactPointPhone

- Add NoteAndAttachment Object To Default Schema

- Add Domain SObject To Default Schema

- Add OauthToken SObject To Default Schema

- Add UserPackageLicense SObject To Default Schema

- Add AccountContactRelation SObject To Default Schema

- Revert "Upgrade sformula To v0.10.0"

- Support PersonAccountDefault for Business Account Record Types

- Group tests under "aer" root in VS Code test explorer

- Support OpportunityFieldHistory as Canonical History Type for Opportunity

- Fix Concurrent Map Access In Label Resolution

- Allow Inner Type Access When Private Field Has Same Name

- DateTime.valueOf and valueOfGmt Ignore Trailing Data

- Track Apex Cursor Rows and Fetch Calls in Governor Limits

- Propagate Property Getter Errors and Add PersonAccount __pc Fields

- Track SOSL Queries in Governor Limits

- Implement Value-Based Equality for SelectOption

- Implement CASE Formula Case Sensitivity

- Use Canonical Types for SObjectField and Fix Map Key Uniqueness

- Fix Package Mock to Capture Standard Object Fields and Picklist Defaults

- Handle Visualforce Attribute Names That Conflict with Formula Keywords

- Implement SOQL Subquery LIMIT Clause

- Add ContactPointPhone Key Prefix

- Fix DmlException Message Format for Update Validation Rules

- Fix FLS Permission Model for Custom Objects and Fields

- Fix Database.getCursor to Return Cursor with Zero Records for Empty Results

- Fix HAVING Clause Bind Variable Evaluation in Database.queryWithBinds

- Fix Test Runner Hang When @TestSetup Fails

- Handle Custom Metadata Type Field Access Permissions

- Fix Subquery LIMIT with Complex Field Expressions
