---
title: lgtmaybe
date: 2026-07-28 06:40:51 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.9.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a GitHub Action that automates code review by analyzing pull request diffs using an AI model. It provides inline comments and a summary, focusing on logic errors, security vulnerabilities, missing tests, documentation issues, performance regressions, complexity, intent, and ponytail (unused code) in the PR. The action runs on different providers like GitHub, GitLab, Bitbucket, and supports local Ollama models or any OpenAI-compatible endpoint.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a GitHub Action that automates code review by analyzing pull request diffs using an AI model. It provides inline comments and a summary, focusing on logic errors, security vulnerabilities, missing tests, documentation issues, performance regressions, complexity, intent, and ponytail (unused code) in the PR. The action runs on different providers like GitHub, GitLab, Bitbucket, and supports local Ollama models or any OpenAI-compatible endpoint.

## What's Changed

## [1.9.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.8.1...lgtmaybe-v1.9.0) (2026-07-27)


### Features

* **cli:** report what a local review spent ([#299](https://github.com/MattJColes/lgtmaybe/issues/299)) ([78af30b](https://github.com/MattJColes/lgtmaybe/commit/78af30b3754915e0a7e18604170fd5898235253e))
* **engine:** cap a review's spend with max_review_tokens ([#297](https://github.com/MattJColes/lgtmaybe/issues/297)) ([78987a6](https://github.com/MattJColes/lgtmaybe/commit/78987a60d66afe7b77dda7252306ab8d83717dba))
