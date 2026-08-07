---
title: Advanced Jules PR Reviewer
date: 2026-08-07 07:17:29 +00:00
tags:
  - thalesraymond
  - GitHub Actions
draft: false
repo: https://github.com/thalesraymond/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/advanced-jules-pr-reviewer
version: v1.4.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action uses Google Jules, a Gemini-powered cloud coding agent, to review pull requests and post inline comments with severity levels. It helps identify security flaws in code by analyzing the changes made in a PR, providing line-level feedback and automatically resolving threads if issues are fixed. The action can be configured with custom rules either directly in the workflow or through a file in the repository, enhancing its flexibility and usability.
---


Version updated for **https://github.com/thalesraymond/jules-pr-reviewer** to version **v1.4.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advanced-jules-pr-reviewer) to find the latest changes.

## Action Summary

This GitHub Action uses Google Jules, a Gemini-powered cloud coding agent, to review pull requests and post inline comments with severity levels. It helps identify security flaws in code by analyzing the changes made in a PR, providing line-level feedback and automatically resolving threads if issues are fixed. The action can be configured with custom rules either directly in the workflow or through a file in the repository, enhancing its flexibility and usability.

## What's Changed

## [1.4.0](https://github.com/thalesraymond/jules-pr-reviewer/compare/v1.3.0...v1.4.0) (2026-08-06)


### Features

* add and integrate strict runtime validation for LLM JSON responses ([a348505](https://github.com/thalesraymond/jules-pr-reviewer/commit/a3485055076ea4bd055dc70f87ea41ec29cbf397))
* add resilient Jules JSON payload extraction ([e36e44b](https://github.com/thalesraymond/jules-pr-reviewer/commit/e36e44be19c61661d29e60a33f2e708df189764a))
* better logs ([25d3b60](https://github.com/thalesraymond/jules-pr-reviewer/commit/25d3b604e9fc59d47fa656f2be02052ffa1e1279))
* **code-review:** added suggested changes to jules response ([d1849db](https://github.com/thalesraymond/jules-pr-reviewer/commit/d1849dbdf7d4fa97aa99013fcfc87a3e56a5d816))
* fix formatting issues in src/utils.ts and tests/jules.test.ts ([a01245e](https://github.com/thalesraymond/jules-pr-reviewer/commit/a01245e8b3043bab317fc551efa75a94eee8bf5c))
* github code suggestion ([d617fe3](https://github.com/thalesraymond/jules-pr-reviewer/commit/d617fe3ece873376d6c1cae67b40fd6384640087))
* **json-validation:** enable json validation and fallback ([e0331d5](https://github.com/thalesraymond/jules-pr-reviewer/commit/e0331d563cd5ff78412e3546e759cf9f6194ecff))
* **jules:** retry logic ([58f5081](https://github.com/thalesraymond/jules-pr-reviewer/commit/58f50818f2b3307704b4a934dcf05281358a3f22))
* **logs:** improve logs ([ffcb246](https://github.com/thalesraymond/jules-pr-reviewer/commit/ffcb246e7e1fc2a4faacbdad414a28423fba5b18))
* **utils:** add getErrorMessage utility and integrate it across files ([3ce857a](https://github.com/thalesraymond/jules-pr-reviewer/commit/3ce857a5ea7b800235c22d50a4bec47b07facfbc))


### Bug Fixes

* **code-review:** fix action beign unable to parse on multilayer code blocks ([d2e6187](https://github.com/thalesraymond/jules-pr-reviewer/commit/d2e61874346070fbfbae8497609b27691bf44f94))
* pass title property to session create payload to satisfy preconditions ([df96c9b](https://github.com/thalesraymond/jules-pr-reviewer/commit/df96c9b60481d425935cbbf074c0abc0c019214a))
* **sec:** match tag with space ([5792f97](https://github.com/thalesraymond/jules-pr-reviewer/commit/5792f9781e30fcf9a8f2026c16503b62665c734e))
* **security:** sanitize promptForAgents to prevent HTML injection ([a20dfc6](https://github.com/thalesraymond/jules-pr-reviewer/commit/a20dfc674c6006ea40a1cffce4c26ec5dc1db765))
