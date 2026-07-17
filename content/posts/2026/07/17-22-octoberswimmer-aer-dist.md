---
title: Run AER Tests
date: 2026-07-17 22:35:06 +00:00
tags:
  - octoberswimmer
  - GitHub Actions
draft: false
repo: https://github.com/octoberswimmer/aer-dist
marketplace: https://github.com/marketplace/actions/run-aer-tests
version: v1.2.18
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates running Apex unit tests and executing anonymous Apex code locally without needing an org or sandbox environment. It provides local execution of SOQL, DML, and test data, supports triggers, validation rules, flows, governor limits, and the standard library, with a focus on behavior similar to Salesforce's Apex runtime. The action can be used in CI/CD pipelines for continuous testing and development.
---


Version updated for **https://github.com/octoberswimmer/aer-dist** to version **v1.2.18**.
- This publisher is shown as 'verified' by GitHub.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/run-aer-tests) to find the latest changes.

## Action Summary

This GitHub Action automates running Apex unit tests and executing anonymous Apex code locally without needing an org or sandbox environment. It provides local execution of SOQL, DML, and test data, supports triggers, validation rules, flows, governor limits, and the standard library, with a focus on behavior similar to Salesforce's Apex runtime. The action can be used in CI/CD pipelines for continuous testing and development.

## What's Changed

Version v1.2.18

- Resolve Bare Custom Names Only Via The Executing Namespace

- Fix Protected Custom Metadata Visibility Across Namespaces And Warm Caches

- Hard-delete Share Records Instead Of Soft-deleting Them

- Canonicalize Package SObject Names, Workflow Rules, And Flows At Load

- Run Record-Triggered Flows In exec And Load Full Sources In exec --debug

- Accept Uppercase Escape Letters In String Literals

- Run Packaged Flows In aer server And Register Them For Flow.Interview
