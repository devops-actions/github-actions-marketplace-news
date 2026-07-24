---
title: lgtmaybe
date: 2026-07-24 19:11:47 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a GitHub Action that reviews pull requests by analyzing code changes and security vulnerabilities, providing inline comments and summaries on GitHub. It uses an OpenAI-compatible model to generate feedback without checking out or running the code, focusing on logic errors, security risks, tests, documentation updates, performance issues, complexity, intent, and unnecessary complexity. The action can run in different presets for varying levels of thoroughness, including default fast mode and full audit mode for release branches.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a GitHub Action that reviews pull requests by analyzing code changes and security vulnerabilities, providing inline comments and summaries on GitHub. It uses an OpenAI-compatible model to generate feedback without checking out or running the code, focusing on logic errors, security risks, tests, documentation updates, performance issues, complexity, intent, and unnecessary complexity. The action can run in different presets for varying levels of thoroughness, including default fast mode and full audit mode for release branches.

## What's Changed

## [1.1.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.0.0...lgtmaybe-v1.1.0) (2026-07-24)


### Features

* **diff:** skip generated llms.txt/llms-full.txt files in review ([#202](https://github.com/MattJColes/lgtmaybe/issues/202)) ([b06086c](https://github.com/MattJColes/lgtmaybe/commit/b06086c23279bfd256b9e7de1ab3500f11c45474))
* enable diagrams in starter workflows ([#204](https://github.com/MattJColes/lgtmaybe/issues/204)) ([157c47d](https://github.com/MattJColes/lgtmaybe/commit/157c47dfdca040529b08bc48591be7fbdfe00ff5))


### Bug Fixes

* align action with v1 release ([#209](https://github.com/MattJColes/lgtmaybe/issues/209)) ([46e94b5](https://github.com/MattJColes/lgtmaybe/commit/46e94b518d46a31c969ba5e0623c84e32bb593d1))
* bound default review runtime ([#208](https://github.com/MattJColes/lgtmaybe/issues/208)) ([d21e4e8](https://github.com/MattJColes/lgtmaybe/commit/d21e4e8f262b809fbf75bbd4469178aaa8312519))


### Documentation

* add Google Search Console verification file ([#201](https://github.com/MattJColes/lgtmaybe/issues/201)) ([d20b6d3](https://github.com/MattJColes/lgtmaybe/commit/d20b6d31b308dd924e8b2f117e826f2f0ed94d46))
* clarify Marketplace provider setup ([#206](https://github.com/MattJColes/lgtmaybe/issues/206)) ([089e74f](https://github.com/MattJColes/lgtmaybe/commit/089e74ff209e4043f1b7c394b191eccbb190dcdf))
* improve homepage feature showcase ([#207](https://github.com/MattJColes/lgtmaybe/issues/207)) ([ab9984f](https://github.com/MattJColes/lgtmaybe/commit/ab9984f9ae3f4651425f9d769f3717f8e6716cb4))
* show change diagram on homepage ([#205](https://github.com/MattJColes/lgtmaybe/issues/205)) ([64f58f7](https://github.com/MattJColes/lgtmaybe/commit/64f58f7d5fdebdf2ff7b9e6ab8096d38128a7064))
