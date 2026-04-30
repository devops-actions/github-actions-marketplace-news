---
title: Run AER Tests
date: 2026-04-30 06:02:00 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.166
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.166**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` GitHub Action enables developers to validate, test, and debug Salesforce Apex code within CI/CD pipelines by running a lightweight Salesforce-compatible runtime locally, without deploying to a Salesforce org. It automates the execution of Apex tests, supports interactive debugging, and ensures reproducible and efficient test cycles. This action is particularly useful for maintaining fast iterations on Apex logic while simulating Salesforce-like behavior.

## What's Changed

Version v0.0.166

- Move Custom Permission Logic Into Its Own File

- Move Governor Limits And Counters Into Their Own File

- Fail Fast When Web Test And Debug Runs Collide

- Treat List<Date> As Instance Of List<Datetime>

- Fix Day Overflow In SOQL N_MONTHS Date Literals

- Cover Remaining commercestorepricing Methods With Tests

- Move Metadata-Driven Permission Inserts Into Their Own File

- Move Formula Field Resolvers Into Their Own File

- Add Native VM Handlers For commercestoretax User-Instantiable Classes

- Resolve Implicit Object Method Chains On Builtin Types

- Move SOQL Bind-Expression Machinery Into Its Own File

- Fix StepInTargets DAP Ranges And Filter Out Builtins

- Capture System.debug Per-VM Instead Of Redirecting Stdout

- Record vm.go File Splits And Next-Pass Candidates In Followups Doc

- Move Metadata-Relationship Virtual SObjects Into Their Own File

- Mark Unreachable commercestoretax Factory-Returned Classes Non-Global

- Move Contract Status Semantics Into Their Own File

- Register TerritoryMgmt.OpportunityTerritory2AssignmentFilter And Cover It With Tests

- Implement DataRetrieval Namespace Builtins And Fix Makefile Race

- Move Type-Compatibility Helpers Into Their Own File

- Move Builtin Enum Constants Into Their Own File

- Implement industries_docgen Namespace Builtins

- Implement industriesNlpSvc Namespace Builtins

- Move Async Job Execution Into Its Own File

- Implement InvoiceWriteOff Namespace Builtins

- Implement ise_bots_apex Namespace Builtins

- Move Trigger And Flow Dispatch Into Their Own File

- Update Followups Doc With All Eleven vm.go Splits So Far

- Move ApexClass Lookup And ApexTypeImplementor Into Their Own File

- Cover embeddedai Stdlib Classes And Record Default Object Method Coverage

- Implement KbManagement Namespace Builtins

- Move Nested JSON-To-SObject Conversion Into Its Own File

- Split DML Defaults And Value Conversion Helpers Into Their Own Files

- Implement pref_center Namespace Builtins

- Move Profile Record-Type Visibility Helpers Into Their Own File

- Move Record-Type Validation And Default Application Into Their Own File

- Fix LSP Completion Across Namespaces, Overloads, And Buffer Edits

- Implement LxScheduler Native VM Handlers And Cover Them With Tests

- Move Person Account Mirroring Helpers Into Their Own File

- Implement Process Namespace Builtins
