---
title: Run AER Tests
date: 2026-05-16 13:58:17 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v1.0.0-beta.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v1.0.0-beta.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action facilitates the validation of Apex code, execution of tests, and simulation of a lightweight Salesforce-compatible runtime, enabling developers to iterate on Apex logic without deploying to a Salesforce org. It automates tasks such as running tests and debugging code during CI/CD workflows, offering fast and reproducible test cycles. Key capabilities include executing test suites, running specific code paths, and interactive debugging in environments like VS Code or IntelliJ.

## What's Changed

Version v1.0.0-beta.3

- Recognize IsStandard = true As Pricebook2 Visibility Bypass

- Backfill CreatedById And LastModifiedById On Default Profile

- Fix Feature-Dependenct Schema Reference Checks And Report Bootstrap Copy Failures Precisely

- Wrap Flow Filter String Literals In Object Cast To Suppress Id Validation

- Resolve $Source.RecordTypeId Names To IDs In Lookup Filter Evaluation

- Fix Order Required Fields

- Register External Service Classes In All LSP Symbol Graph Rebuilds

- Derive Quote.AccountId From Linked Opportunity On Insert

- Fix Missing Standard Picklist Values

- Return Empty Plain Text Body For HTML-Only Visualforce Email Templates

- Gate MiddleName And Suffix On Lead, Contact, And Account By NameSettings

- Fix EmailTemplate Named Entity Handling and stripHtmlTags Whitespace

- Populate OpportunityLineItem.Product2Id Before Triggers And Maintain Quote.IsSyncing

- Sync OpportunityLineItem To Quote And Enforce Active Pricebook On SyncedQuoteId

- Resolve ContentDocumentLink.LinkedEntity.Type Polymorphically And Enforce LinkedEntityId Filter Restriction

- Auto-Create OpportunityLineItems For Unlinked QuoteLineItems On Sync Switch

- Read Builtin Field Defaults Without Cloning The Entire Schema

- Map Runtime Insufficient-Access DML Failures To ApexPages Message

- Sync OpportunityLineItem Standard Fields To Linked QuoteLineItem On Update

- Resolve Builtin Class Lookups Through A Lowercase Index

- Batch Contact Inserts In Subquery Multiple-Fields Test

- Render Numeric Merge Fields With Java Double-Style Trailing Decimals

- Resolve Default RecordType Lookup Deterministically Across Runs

- Translate $Api Flow References To Apex In Generated Triggers And Handlers

- Resolve Page.X References Through Generated Symbol Graph Entries

- Coerce Id Operands To String For Flow StartsWith/EndsWith/Contains

- Auto-Create NetworkMember Rows From Network Member Group Profile Lists

- Auto-Create And Cascade-Delete Quote Sync Across QuoteLineItem And OpportunityLineItem

- Sync QuoteLineItem Standard Fields To Linked OpportunityLineItem On Update

- Include Global Value Sets In Mock Packages

- Detect PersonAccounts References Via AST Instead Of Regex

- Mirror PricebookEntry Name and ProductCode From Linked Product2

- Stop Synthesizing Cross-Package Field Aliases From Object Namespace

- Apply Source Profile Custom Permissions To Existing Builtin Profiles

- Preserve Source Line Across SOQL Bind Expression Evaluation

- Resolve UserRole ParentRoleId Across Topo-Sorted Metadata Batch

- Backfill Standard Picklist Values Across Builtin Schema
