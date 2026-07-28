---
title: lgtmaybe
date: 2026-07-28 15:00:17 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.9.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a GitHub Action that reviews pull requests for security vulnerabilities, logic and correctness bugs, missing or weak tests, documentation issues, performance regressions, unnecessary complexity, intent, and ponytail (code not needed). It uses OpenAI models to analyze the changes in a PR and flags potential issues without running or checking out the code.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.9.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a GitHub Action that reviews pull requests for security vulnerabilities, logic and correctness bugs, missing or weak tests, documentation issues, performance regressions, unnecessary complexity, intent, and ponytail (code not needed). It uses OpenAI models to analyze the changes in a PR and flags potential issues without running or checking out the code.

## What's Changed

## [1.9.1](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.9.0...lgtmaybe-v1.9.1) (2026-07-28)


### Bug Fixes

* **parse:** keep the findings a truncated response finished emitting ([#306](https://github.com/MattJColes/lgtmaybe/issues/306)) ([b8d9193](https://github.com/MattJColes/lgtmaybe/commit/b8d9193b759cb4fd7b728f777dee3a34636f6680))
* **provider:** report a truncated response as truncated, and stop retrying it ([#305](https://github.com/MattJColes/lgtmaybe/issues/305)) ([cadca72](https://github.com/MattJColes/lgtmaybe/commit/cadca72631537c128024e79b072675790acadd13))
* **provider:** survive a rejected response_format on Bedrock and keep --json stdout parseable ([#303](https://github.com/MattJColes/lgtmaybe/issues/303)) ([a11860c](https://github.com/MattJColes/lgtmaybe/commit/a11860c9a1eb99725ba27f53db8bb3197d9d1376))
