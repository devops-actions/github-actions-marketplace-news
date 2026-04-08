---
title: Run AER Tests
date: 2026-04-08 22:08:31 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.146
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.146**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables automated validation and testing of Apex code within CI/CD pipelines by providing a lightweight Salesforce-compatible runtime. It solves the problem of slow and non-reproducible test cycles by allowing developers to execute tests and debug Apex code locally without deploying to a Salesforce org. Key capabilities include running comprehensive test suites, executing individual Apex methods, and supporting interactive debugging.

## What's Changed

Version v0.0.146

- Implement Database Namespace equals, hashCode, toString, clone, and UnitOfWork

- Implement System Namespace equals, hashCode, toString Methods

- Implement equals, hashCode, toString for Exception, XML, Savepoint, and ResetPasswordResult

- Add Unimplemented Method Reports for All Standard Namespaces

- Implement Compression Namespace ZipEntry Setters and Clone Methods

- Implement Approval Namespace equals, hashCode, toString and Missing Methods

- Fix ZipEntry Equality Semantics and ZipWriter Default Level

- Remove Compression.Helper from Public API and Drop ZipException Clone Test

- Implement Schema Namespace equals, hashCode, toString and Missing Methods

- Accept 2-Argument Form of Label.get

- Preserve Literal &, <, > in JSON.serialize Output

- Prefer Real SObject Field Over Synthetic .SObjectType in Resolver

- Preserve Milliseconds in DateTime JSON Deserialization

- Throw SObjectException When Field Token SObject Mismatches Target

- Deserialize JSON into System.Address as addressInstance

- Fix Missing Stack Frames in Field Initializer Exception Traces

- Preserve SObject Field Insertion Order in getPopulatedFieldsAsMap

- Include Id Field in Publisher SObject Schema

- Return False for isUpdateable on Non-Reparentable Master-Detail Fields

- Handle Method Calls on Stub Instances Retrieved via Index Expression

- Return Empty Record Type Info for SObjects Without RecordTypeId

- Preserve Stub Identity When Throwing and Catching Stub Exceptions

- Implement Cache Partition createFullyQualifiedPartition and createFullyQualifiedKey

- Apply WHERE Clause Filtering to Inline SOSL Literals

- Populate DescribeSObjectResult Extra Fields for All Describe Paths

- Add Missing Standard Permission Fields to PermissionSet Schema

- Resolve Fully-Qualified Builtin Enums When Local Enum Shadows Name
