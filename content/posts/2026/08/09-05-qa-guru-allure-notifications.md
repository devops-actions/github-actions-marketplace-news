---
title: Allure Notifications
date: 2026-08-09 05:53:01 +00:00
tags:
  - qa-guru
  - GitHub Actions
draft: false
repo: https://github.com/qa-guru/allure-notifications
marketplace: https://github.com/marketplace/actions/allure-notifications
version: v6.0.14
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates sending test results to a Telegram channel using Allure reports. It supports various workflows, including one for integrating with the Marketplace, another for native npm CLI usage, and an alternative capability using an Allure plugin. The action can be run manually or as part of a release gate workflow.
---


Version updated for **https://github.com/qa-guru/allure-notifications** to version **v6.0.14**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/allure-notifications) to find the latest changes.

## Action Summary

This GitHub Action automates sending test results to a Telegram channel using Allure reports. It supports various workflows, including one for integrating with the Marketplace, another for native npm CLI usage, and an alternative capability using an Allure plugin. The action can be run manually or as part of a release gate workflow.

## What's Changed

## npm hard cut

- Public packages move to flat `@qa-guru/*` (parity with allure-report-kit).
- CLI: `@qa-guru/allure-notifications@6.0.14` (bin name `allure-notifications` unchanged).
- Libs: `@qa-guru/allure-notifications-{config,pyramid,core,plugin}@6.0.14`.
- Abandoned: bare `allure-notifications` and `@allure-notifications/*` (deprecated on npm).
- Publish org: `qa-guru` only — see `docs/npm-publish.md`.

## Consumer

```bash
npx @qa-guru/allure-notifications@6.0.14 send --config config.json --live
```

After local `npm i @qa-guru/allure-notifications`, `npx --no-install allure-notifications send …` still works via bin.

**Full Changelog**: https://github.com/qa-guru/allure-notifications/compare/v6.0.13...v6.0.14
