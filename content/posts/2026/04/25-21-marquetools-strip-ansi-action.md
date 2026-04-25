---
title: Strip ANSI & Unicode Threats
date: 2026-04-25 21:28:50 +00:00
tags:
  - marquetools
  - GitHub Actions
draft: false
repo: https://github.com/marquetools/strip-ansi-action
marketplace: https://github.com/marketplace/actions/strip-ansi-unicode-threats
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/marquetools/strip-ansi-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/strip-ansi-unicode-threats) to find the latest changes.

## Action Summary

The **strip-ansi-action** is a GitHub Action designed to automatically clean ANSI escape sequences and Unicode homograph threats from pull request files and GitHub comments, ensuring readability and enhancing security. It addresses issues such as removing clutter caused by raw terminal output pasted by LLMs and detecting echoback attack vectors that could compromise developer environments. Key capabilities include scanning and optionally rewriting changed files, PR comments, and issue comments to maintain clean and secure workflows.

## What's Changed

## What's Changed

### Initial Release

* feat: optionally scan and strip ANSI/Unicode threats from PR and Issue comments by @Copilot in https://github.com/marquetools/strip-ansi-action/pull/1
* docs: reflect PR/issue comment scanning in README with full copy-paste workflow by @Copilot in https://github.com/marquetools/strip-ansi-action/pull/2
* docs: prominently surface LLM comment-cleaning as a first-class use case by @Copilot in https://github.com/marquetools/strip-ansi-action/pull/3
* fix: align implementation with distill-strip-ansi API and fix CI failures by @Copilot in https://github.com/marquetools/strip-ansi-action/pull/4

## New Contributors
* @Copilot made their first contribution in https://github.com/marquetools/strip-ansi-action/pull/1

**Full Changelog**: https://github.com/marquetools/strip-ansi-action/commits/v1.0.0
