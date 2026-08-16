---
title: Run AER Tests
date: 2026-08-16 22:13:35 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v1.2.34
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, `aer`, automates running Apex unit tests and executing anonymous Apex locally without needing an org. It supports various Salesforce features like SOQL, DML, triggers, flows, and testing, ensuring local execution behavior matches that in Salesforce. The action can be used for continuous integration to validate code changes before deployment.
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v1.2.34**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

This GitHub Action, `aer`, automates running Apex unit tests and executing anonymous Apex locally without needing an org. It supports various Salesforce features like SOQL, DML, triggers, flows, and testing, ensuring local execution behavior matches that in Salesforce. The action can be used for continuous integration to validate code changes before deployment.

## What's Changed

Version v1.2.34

- Make getGlobalDescribe Map Lookups Case-Insensitive For Any Key Casing

- Replace Hot-Path Linear Scans With Precomputed Schema Indexes

- Implement The CompanyName, Street, And City Matching Methods

- Persist Rollup Parent Updates As One Duplicate-Rule Save Call

- Cache Repeated Record Fetches And Lookup Keys On The DML Hot Path

- Keep A Successful Partial-Save Retry's Trigger Side Effects

- Fetch Rollup Children With Filtered Queries Instead Of Full Table Scans
