---
title: verbatra
date: 2026-08-14 05:56:53 +00:00
tags:
  - verbatra
  - GitHub Actions
draft: false
repo: https://github.com/verbatra/action
marketplace: https://github.com/marketplace/actions/verbatra
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  verbatra is a GitHub Action that automates i18n translation tasks using OpenAI, Anthropic, Gemini, DeepL, or local/ self-hosted models. It reads locale files, detects missing or drifted translations, and fills gaps through AI translation. The action provides CI gate functionality for pull requests by checking if locales have drifted from the source.
---


Version updated for **https://github.com/verbatra/action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verbatra) to find the latest changes.

## Action Summary

verbatra is a GitHub Action that automates i18n translation tasks using OpenAI, Anthropic, Gemini, DeepL, or local/ self-hosted models. It reads locale files, detects missing or drifted translations, and fills gaps through AI translation. The action provides CI gate functionality for pull requests by checking if locales have drifted from the source.

## What's Changed

Adds a `command` input so the action can run the CLI's read-only commands, not only `translate`.

`command: check` fails the job when a locale is missing or stale. `command: diff` fails it when there are pending changes, and lists the keys. Both are read-only: no provider call, no API key, no quota, so they work on pull requests from forks.

`command` defaults to `translate`, so existing workflows are unaffected. `dry-run` applies to `translate` only and is rejected with the other commands rather than ignored.

