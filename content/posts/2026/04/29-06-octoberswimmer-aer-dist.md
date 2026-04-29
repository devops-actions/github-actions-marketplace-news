---
title: Run AER Tests
date: 2026-04-29 06:08:23 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v0.0.165
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v0.0.165**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

The `aer` (Apex Execution Runtime) GitHub Action enables validation, testing, and execution of Salesforce Apex code in a lightweight, local runtime environment, streamlining development and debugging without requiring deployment to a live Salesforce org. It automates the execution of Apex test suites within CI/CD pipelines and supports interactive debugging, making test cycles faster, reproducible, and easy to integrate into development workflows. The action also provides capabilities such as namespace configuration and customizable test execution through additional CLI arguments.

## What's Changed

Version v0.0.165

- Register System.AuraHandledException In Stdlib Symbol Graph

- Merge FeatureParameter Values In MergePackageSchema

- Render Percent CSFs By 100, Parse Joined Blocks, Translate Activity Filters

- Filter Unimplemented Method Reports To Actionable Items Only

- Drop Joined Multiblock Probe Test Fixture That Salesforce Rejects

- Make Test Runs Fit Within Wasm32 Address Space Limits

- Disable SetMemoryLimit On Wasm32 To Avoid Bad-Pointer Panic In GC

- Wait For Async Project Reload In Re-Add Workspace Folder Test

- Wait For VM Initialization In OAuth Authorize Code Flow Test

- Implement Auth.JWS Compact Serialization With Configurable Certificates

- Pool Builtin-Schema Test VMs To Cut Test-Suite Setup Cost

- Restore Schema From Pool Baseline Between Test Leases

- Clear Code Registry Between Pool Leases For Trigger Tests

- Cache Migrated SQLite Schema Image To Skip Re-Migration Per Server

- Extract Apex Coverage Tracking To internal/apexcoverage

- Add SObject And Static-Class Member Completion To LSP Server

- Extract Profiling Call Tracker To internal/profiler

- Remove Dead Stack-VM Scaffolding

- Cache Post-LoadStandardMetadata Database Image To Skip Per-Server Seeding

- Parallelize Root Server Tests Where Test-Local State Allows It

- Share The Feature-Management Source Server Across Its Four Tests

- Use Minimal Test Source In SOAP Enum Anonymous Apex Test

- Inherit From PromotionModel For PromotionInfo, PromotionTarget, And PromotionTargetLineItem

- Match Real Salesforce Signatures For Transactional Pricing Classes

- Cover Newly Reachable commercestorepricing Methods With Apex Tests

- Strip Unreachable Constructors And add From The Pricing Collections

- Cover Remaining AppLauncher Methods

- Add @lwc/state and Lightning State Manager Modules To LWC Preview

- Invoke excludeContextTypes In Canvas.Test.testCanvasLifecycle

- Update Test Performance Suggestion

- Cover Remaining CommerceBuyGrp Methods

- Remove Invalid commerce_inventory Request Constructors

- Add LSP Support For Custom Label References

- Serialize Shared FeatureManagement Test Fixture

- Skip SQLite Image Caches When They Would Corrupt Or Fail Hydration

- Remove Post-LoadStandardMetadata Image Cache

- Fix Schema-Cache Misses For Tests With Record Types And Flow Records

- Add Missing EmailMessage Fields And Correct Field Lengths

- Hoist decimalInstance To internal/apexvalues As The First Value Type

- Hoist idInstance To internal/apexvalues As Apexvalues.Id

- Hoist dateInstance To internal/apexvalues As Apexvalues.Date

- Hoist timeInstance To internal/apexvalues As Apexvalues.Time

- Hoist datetimeInstance To internal/apexvalues As Apexvalues.Datetime

- Hoist addressInstance To internal/apexvalues As Apexvalues.Address

- Migrate Inline Test VMs To Shared Builtin-Schema Pool
