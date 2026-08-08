---
title: Allure Notifications
date: 2026-08-08 06:09:29 +00:00
tags:
  - qa-guru
  - GitHub Actions
draft: false
repo: https://github.com/qa-guru/allure-notifications
marketplace: https://github.com/marketplace/actions/allure-notifications
version: v6.0.13
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automatically generates Allure reports and sends them to a Telegram channel using a shared configuration. It provides three variants: a Marketplace Action, a Native npm CLI, and an Allure plugin capability. The action supports both dry-run and live modes, where live mode requires specific environment variables for authentication.
---


Version updated for **https://github.com/qa-guru/allure-notifications** to version **v6.0.13**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/allure-notifications) to find the latest changes.

## Action Summary

This GitHub Action automatically generates Allure reports and sends them to a Telegram channel using a shared configuration. It provides three variants: a Marketplace Action, a Native npm CLI, and an Allure plugin capability. The action supports both dry-run and live modes, where live mode requires specific environment variables for authentication.

## What's Changed

## GitHub Marketplace Action

- Adds the root `qa-guru/allure-notifications@v6` composite Action for sending from an existing Allure report.
- Adds in-memory CLI overrides for report/results paths, project, and report/dashboard/TestOps/build links.
- Resolves override paths from the consumer workspace or `working-directory`; static config paths keep config-relative semantics.
- Removes consumer runtime JSON rendering and the legacy double-generate runnable workflow from the primary path.

## Verified

- Action E2E: https://github.com/qa-guru/allure-notifications/actions/runs/31217764924
- TypeScript CI: https://github.com/qa-guru/allure-notifications/actions/runs/31217766066
- npm: `allure-notifications@6.0.13` and coordinated `@allure-notifications/{config,pyramid,core,plugin}@6.0.13`
- Pipeline contract: tests → allure-results → one `allure generate` → Action send

**Full Changelog**: https://github.com/qa-guru/allure-notifications/compare/v6.0.12...v6.0.13
