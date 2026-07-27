---
title: lgtmaybe
date: 2026-07-27 23:16:06 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.8.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  lgtmaybe is a GitHub Action designed to review pull requests by analyzing code changes with an AI model. It provides inline comments and a summary, focusing on logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent, and lazy senior dev lens. The action reviews the PR diff and surrounding lines, grading each change from `info` to `critical`. It skips non-reviewable files and redacts secrets before sending the review to the AI model.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.8.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

lgtmaybe is a GitHub Action designed to review pull requests by analyzing code changes with an AI model. It provides inline comments and a summary, focusing on logic errors, security vulnerabilities, missing tests, outdated code, performance regressions, unnecessary complexity, intent, and lazy senior dev lens. The action reviews the PR diff and surrounding lines, grading each change from `info` to `critical`. It skips non-reviewable files and redacts secrets before sending the review to the AI model.

## What's Changed

## [1.8.1](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.8.0...lgtmaybe-v1.8.1) (2026-07-27)


### Bug Fixes

* bugs found driving the CLI end-to-end across 10 scenarios ([#291](https://github.com/MattJColes/lgtmaybe/issues/291)) ([1a9f0f0](https://github.com/MattJColes/lgtmaybe/commit/1a9f0f03d023c5e0a8e79515f088c57e6e6a6feb))
* **compress:** merge hunks whose context pads overlap ([#290](https://github.com/MattJColes/lgtmaybe/issues/290)) ([6fcb279](https://github.com/MattJColes/lgtmaybe/commit/6fcb279561229905ea6b9ef0b44943b58deb61ee))
* **context:** only pad to a definition that still contains the hunk ([#294](https://github.com/MattJColes/lgtmaybe/issues/294)) ([7cb9129](https://github.com/MattJColes/lgtmaybe/commit/7cb91294e502a7ad5cd0aed422dd2a5e78aec384))
* **identity:** stop asking for branded identity on an event that cannot mint it ([#296](https://github.com/MattJColes/lgtmaybe/issues/296)) ([f4c3bdd](https://github.com/MattJColes/lgtmaybe/commit/f4c3bdd279e6022c42a70328d94dd932fe16509d))
* **prompt:** stop asking lenses to flag our own redaction marker ([#293](https://github.com/MattJColes/lgtmaybe/issues/293)) ([054a4ce](https://github.com/MattJColes/lgtmaybe/commit/054a4ce1f363da2b85f167a673f9f9e5c0dbe7f0))


### Performance Improvements

* **context:** size the enclosing-definition reach against the fixed pad ([#295](https://github.com/MattJColes/lgtmaybe/issues/295)) ([eb586f1](https://github.com/MattJColes/lgtmaybe/commit/eb586f15752be418672ebef868c12d41b3bcb373))
