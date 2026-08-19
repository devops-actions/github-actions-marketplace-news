---
title: lgtmaybe
date: 2026-08-19 06:36:22 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v2.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a provider-agnostic PR reviewer designed to automatically review and assess changes in pull requests. It fetches the diff from GitHub using the API and reviews each line, considering context by reading surrounding lines. The action surfaces issues such as logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, complexity, intent, and unnecessary complexity. lgtmaybe uses OpenAI models to generate inline comments and a summary of the review. It is designed to be provider-agnostic and supports local Ollama as well as any OpenAI-compatible endpoint without requiring static keys for cloud providers.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v2.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a provider-agnostic PR reviewer designed to automatically review and assess changes in pull requests. It fetches the diff from GitHub using the API and reviews each line, considering context by reading surrounding lines. The action surfaces issues such as logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, complexity, intent, and unnecessary complexity. lgtmaybe uses OpenAI models to generate inline comments and a summary of the review. It is designed to be provider-agnostic and supports local Ollama as well as any OpenAI-compatible endpoint without requiring static keys for cloud providers.

## What's Changed

## [2.3.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v2.2.0...lgtmaybe-v2.3.0) (2026-08-18)


### Features

* **provider:** keep structured output on routes that reject response_format ([#470](https://github.com/MattJColes/lgtmaybe/issues/470)) ([28830c2](https://github.com/MattJColes/lgtmaybe/commit/28830c23e19dfbd895a1d357a094fb8a78e0eba5))
