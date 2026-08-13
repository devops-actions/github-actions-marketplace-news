---
title: lgtmaybe
date: 2026-08-13 14:19:49 +00:00
tags:
  - MattJColes
  - GitHub Actions
draft: false
repo: https://github.com/MattJColes/lgtmaybe
marketplace: https://github.com/marketplace/actions/lgtmaybe
version: lgtmaybe-v1.14.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action, lgtmaybe, automates code reviews by analyzing pull request diffs using an OpenAI-compatible model. It identifies logic and correctness bugs, security vulnerabilities, missing tests, outdated or incorrect code, performance regressions, unnecessary complexity, intent misalignment, and potential "ponytail" code. The tool does not run the code but relies on context from surrounding lines in files to provide detailed reviews, reducing false positives.
---


Version updated for **https://github.com/MattJColes/lgtmaybe** to version **lgtmaybe-v1.14.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lgtmaybe) to find the latest changes.

## Action Summary

This GitHub Action, lgtmaybe, automates code reviews by analyzing pull request diffs using an OpenAI-compatible model. It identifies logic and correctness bugs, security vulnerabilities, missing tests, outdated or incorrect code, performance regressions, unnecessary complexity, intent misalignment, and potential "ponytail" code. The tool does not run the code but relies on context from surrounding lines in files to provide detailed reviews, reducing false positives.

## What's Changed

## [1.14.0](https://github.com/MattJColes/lgtmaybe/compare/lgtmaybe-v1.13.1...lgtmaybe-v1.14.0) (2026-08-13)


### Features

* **engine:** add a spec lens that checks the PR against its committed spec ([#376](https://github.com/MattJColes/lgtmaybe/issues/376)) ([d55e35e](https://github.com/MattJColes/lgtmaybe/commit/d55e35e7ceb7e7681bd8d463e70937b5e76e2c17))


### Bug Fixes

* stop one flaky provider call voiding a whole review round ([#378](https://github.com/MattJColes/lgtmaybe/issues/378)) ([6c59f86](https://github.com/MattJColes/lgtmaybe/commit/6c59f861e87b6e465a25275ed553c25335fb591f))


### Dependencies

* bump the python-dependencies group and unblock pip-audit on aiohttp ([#379](https://github.com/MattJColes/lgtmaybe/issues/379)) ([d296f25](https://github.com/MattJColes/lgtmaybe/commit/d296f252573109fa23a3682c9ef8018cba4a8e0d))
