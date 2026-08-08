---
title: Advanced Jules PR Reviewer
date: 2026-08-08 06:02:12 +00:00
tags:
  - thalesraymond
  - GitHub Actions
draft: false
repo: https://github.com/thalesraymond/jules-pr-reviewer
marketplace: https://github.com/marketplace/actions/advanced-jules-pr-reviewer
version: v1.5.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
actionSummary: |
  A GitHub Action that uses Jules, a Gemini-powered cloud coding agent, to review pull requests and post comments on specific lines of code. It helps catch security flaws and provides inline comments, which can be resolved automatically if fixed. The action also allows for customization through inline rules or a rules file in the repository, enabling project-level or shared rule management.
---


Version updated for **https://github.com/thalesraymond/jules-pr-reviewer** to version **v1.5.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/advanced-jules-pr-reviewer) to find the latest changes.

## Action Summary

A GitHub Action that uses Jules, a Gemini-powered cloud coding agent, to review pull requests and post comments on specific lines of code. It helps catch security flaws and provides inline comments, which can be resolved automatically if fixed. The action also allows for customization through inline rules or a rules file in the repository, enabling project-level or shared rule management.

## What's Changed

## [1.5.0](https://github.com/thalesraymond/jules-pr-reviewer/compare/v1.4.0...v1.5.0) (2026-08-07)


### Features

* **agent:** add agentic mode ([d7197be](https://github.com/thalesraymond/jules-pr-reviewer/commit/d7197be6ac8283b59a0040ce2b30117dfa6761f7)), closes [#103](https://github.com/thalesraymond/jules-pr-reviewer/issues/103)
* improve jules context ([35aa78c](https://github.com/thalesraymond/jules-pr-reviewer/commit/35aa78c765857cee34c5433dd45e31af8eec63bb))


### Bug Fixes

* **agentic mode:** fix rule for retry/fallback ([610befe](https://github.com/thalesraymond/jules-pr-reviewer/commit/610befe96ae8edddbc46dab3ba763e3f34e43808))
* **agentic mode:** small fixes ([bdd2769](https://github.com/thalesraymond/jules-pr-reviewer/commit/bdd27691509305fa3a51702ef1bc118226f6c028))
* **archive:** make sure fallback sessions are also archived ([71ea5b2](https://github.com/thalesraymond/jules-pr-reviewer/commit/71ea5b2bc8c5331bb36e80e8c6697b8adbe07169))
* fixes agentic changes ([759813a](https://github.com/thalesraymond/jules-pr-reviewer/commit/759813a60ed01e71ff57ac1118ec44cdca8eb091))
