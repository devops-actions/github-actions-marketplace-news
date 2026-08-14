---
title: verbatra
date: 2026-08-14 22:16:23 +00:00
tags:
  - verbatra
  - GitHub Actions
draft: false
repo: https://github.com/verbatra/action
marketplace: https://github.com/marketplace/actions/verbatra
version: v1.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The verbatra GitHub Action automates the process of translating locale files using AI or machine translation providers. It reads and compares locale files to detect missing or drifted strings, fills gaps with translations, ensures placeholder and ICU integrity, and provides annotations and a job-summary table in CI or pull requests. The action supports various providers like OpenAI, Anthropic, Gemini, DeepL, or local models, allowing for flexible localization workflows.
---


Version updated for **https://github.com/verbatra/action** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verbatra) to find the latest changes.

## Action Summary

The verbatra GitHub Action automates the process of translating locale files using AI or machine translation providers. It reads and compares locale files to detect missing or drifted strings, fills gaps with translations, ensures placeholder and ICU integrity, and provides annotations and a job-summary table in CI or pull requests. The action supports various providers like OpenAI, Anthropic, Gemini, DeepL, or local models, allowing for flexible localization workflows.

## What's Changed

Metadata and documentation only. No change to the action's behavior, inputs, or outputs.

`action.yml` now describes what the action has done since v1.1.0: run translations in CI **or** gate a pull request on locale drift. The old description mentioned translation only, so the Marketplace listing hid the read-only `check` and `diff` gate that v1.1.0 shipped. The `command` input itself is unchanged.

Also refreshes the README, contributing guide, and security policy carried at the release tag, and folds the version bump into the release commit, so `package.json` and `package-lock.json` now read the version they ship at instead of the previous one.

`verbatra/action@v1` moves to this release.

