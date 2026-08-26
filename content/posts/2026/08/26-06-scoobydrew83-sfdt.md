---
title: SFDT for Salesforce
date: 2026-08-26 06:29:02 +00:00
tags:
  - scoobydrew83
  - GitHub Actions
draft: false
repo: https://github.com/scoobydrew83/sfdt
marketplace: https://github.com/marketplace/actions/sfdt-for-salesforce
version: v0.23.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The SFDT Action automates Salesforce DevTools, a production-grade CLI suite for deployment, testing, quality analysis, and release management. It pairs with the SFDT Chrome extension and VS Code extension to provide an interactive workflow for deploying changes to Salesforce Orgs, parallel Apex test execution, AI-powered error interpretation, PR descriptions, and notifications. The action supports multi-package projects, a smart package.xml generator, and CI/CD templates through GitHub Actions and workflows.
---


Version updated for **https://github.com/scoobydrew83/sfdt** to version **v0.23.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sfdt-for-salesforce) to find the latest changes.

## Action Summary

The SFDT Action automates Salesforce DevTools, a production-grade CLI suite for deployment, testing, quality analysis, and release management. It pairs with the SFDT Chrome extension and VS Code extension to provide an interactive workflow for deploying changes to Salesforce Orgs, parallel Apex test execution, AI-powered error interpretation, PR descriptions, and notifications. The action supports multi-package projects, a smart package.xml generator, and CI/CD templates through GitHub Actions and workflows.

## What's Changed

## What's Changed
* fix(extension): renderSfError() — one path for a Salesforce error, plus the sweep that keeps it one (C-FIX-4) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/325
* feat(extension): guarded bulk delete from the SOQL runner (C-P4-2) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/326
* feat(extension): NL→SOQL generation in the SOQL runner (C-P4-5) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/328
* fix(extension): the C-FIX-4 sweep does not actually bite — follow-up to #325 (B1/B2) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/327
* fix(extension): the C-FIX-4 sweep can be blinded by one backtick, and cannot see `.catch((e) => …)` by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/329
* fix(extension): the guard could not see a settled rejection, and the masker failed open by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/330
* fix(extension): a green tick after Cancel, and a sweep that catches the next caller (C-FIX-5) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/332
* fix(extension): the sweep could not see the name a for-of head binds by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/331
* fix(extension): tier 1 fired on a split that was not the outermost operation (C-FIX-7) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/333
* chore(deps): bump the production-dependencies group with 4 updates by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/334
* chore(deps): bump the development-dependencies group with 8 updates by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/335
* chore: release CLI v0.23.1 + extension v0.15.0 by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/341


**Full Changelog**: https://github.com/scoobydrew83/sfdt/compare/v0.23.0...v0.23.1
