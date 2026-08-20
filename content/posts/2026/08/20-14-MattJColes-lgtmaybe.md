---
title: lgtmaybe
date: 2026-08-20 14:18:58 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v2.5.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The lgtmaybe GitHub Action is a tool designed to review pull requests or merge requests across multiple version control platforms (GitHub, GitLab, and Gitea) using AI-based models. It generates inline comments on changes, focusing on logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent alignment, and unnecessary code, all without executing the code. The tool is designed to be secure by not running any of the PR's code and redacting sensitive information before submission to the model.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v2.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

The lgtmaybe GitHub Action is a tool designed to review pull requests or merge requests across multiple version control platforms (GitHub, GitLab, and Gitea) using AI-based models. It generates inline comments on changes, focusing on logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent alignment, and unnecessary code, all without executing the code. The tool is designed to be secure by not running any of the PR's code and redacting sensitive information before submission to the model.

## What's Changed

## [2.5.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v2.4.0...lgtmaybe-v2.5.0) (2026-08-20)


### Features

* hold the advisory lenses to the severity their prompt asks for ([#529](https://github.com/MattJColes/lgtmaybe/issues/529)) ([c9aab3c](https://github.com/MattJColes/lgtmaybe/commit/c9aab3cee44d673d73d4e48ece81f07d073a2d2b))


### Bug Fixes

* count tokens in the model's own tokenizer and reserve prompt overhead ([#528](https://github.com/MattJColes/lgtmaybe/issues/528)) ([d41dab9](https://github.com/MattJColes/lgtmaybe/commit/d41dab9418985564ebed397e132a93ccf3932c5f)), closes [#509](https://github.com/MattJColes/lgtmaybe/issues/509)
* escape the file path when fetching file contents ([#522](https://github.com/MattJColes/lgtmaybe/issues/522)) ([c244bf7](https://github.com/MattJColes/lgtmaybe/commit/c244bf75b3b645fdb4a0d9f7e82b21265608fc89)), closes [#508](https://github.com/MattJColes/lgtmaybe/issues/508)
* honour resolve_fixed on GitLab ([#525](https://github.com/MattJColes/lgtmaybe/issues/525)) ([6f5efe5](https://github.com/MattJColes/lgtmaybe/commit/6f5efe5193907425c5ee1ed9037b12e77bda94e4)), closes [#502](https://github.com/MattJColes/lgtmaybe/issues/502)
* read a fenced reply in /ask and follow-up validation ([#523](https://github.com/MattJColes/lgtmaybe/issues/523)) ([ae4e650](https://github.com/MattJColes/lgtmaybe/commit/ae4e650f6a2034214a8e321b7be089cff777cba3)), closes [#510](https://github.com/MattJColes/lgtmaybe/issues/510) [#511](https://github.com/MattJColes/lgtmaybe/issues/511)
* read a self-hosted server's tool-call rejection wording ([#526](https://github.com/MattJColes/lgtmaybe/issues/526)) ([3e3a200](https://github.com/MattJColes/lgtmaybe/commit/3e3a20007a5d94b0d6cdb610596ff6e73f1ef820)), closes [#499](https://github.com/MattJColes/lgtmaybe/issues/499)


### Performance Improvements

* overlap the per-file boundary scans and guard the flood counter ([#524](https://github.com/MattJColes/lgtmaybe/issues/524)) ([70b87e5](https://github.com/MattJColes/lgtmaybe/commit/70b87e554002ebe25be0ab4e5b824e56c6b28782)), closes [#505](https://github.com/MattJColes/lgtmaybe/issues/505) [#506](https://github.com/MattJColes/lgtmaybe/issues/506)


### Documentation

* correct the gitea token scopes and drop a flag that does not exist ([#527](https://github.com/MattJColes/lgtmaybe/issues/527)) ([fd36563](https://github.com/MattJColes/lgtmaybe/commit/fd36563a21daa68c8899863f54ec411f8a963508)), closes [#500](https://github.com/MattJColes/lgtmaybe/issues/500) [#501](https://github.com/MattJColes/lgtmaybe/issues/501)
* rescore the model-choice tables and correct three recommendations ([#512](https://github.com/MattJColes/lgtmaybe/issues/512)) ([d9953cc](https://github.com/MattJColes/lgtmaybe/commit/d9953ccdbd568e022d345aabf7656f83e93d74a0))
