---
title: Okareo CI/CD
date: 2024-05-11 03:32:59 +00:00
tags:
  - okareo-ai
  - GitHub Actions
draft: false
repo: okareo-ai/okareo-action
marketplace: https://github.com/marketplace/actions/okareo-ci-cd
version: v2.4
dependentsNumber: "?"
---


Version updated for **okareo-ai/okareo-action** to version **v2.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/okareo-ci-cd) to find the latest changes.

## Release notes

## What's Changed
* Upgraded to CLI version v0.0.13

CLI Improvements include
* Modifed tsconfig.json for typescript projects to add "resolveJsonModule": true .  This enables typescript flows to import json directly.
* Added error handling on bad OKAREO_API_KEY exchanges on config flows
* Added error handling on bad MODEL_ID passed in on config flows
* Added error handling for TestRun responses that have errors on the server

## Contributors
* @guinaut
