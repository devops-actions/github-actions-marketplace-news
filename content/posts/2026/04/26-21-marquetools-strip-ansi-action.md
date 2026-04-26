---
title: Strip ANSI & Unicode Threats
date: 2026-04-26 21:21:52 +00:00
tags:
  - marquetools
  - GitHub Actions
draft: false
repo: https://github.com/marquetools/strip-ansi-action
marketplace: https://github.com/marketplace/actions/strip-ansi-unicode-threats
version: v1.0.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/marquetools/strip-ansi-action** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/strip-ansi-unicode-threats) to find the latest changes.

## Action Summary

The **strip-ansi-action** is a GitHub Action designed to automatically remove ANSI escape sequences and Unicode homograph threats from pull request files and comments, ensuring clean and readable content. It addresses issues such as "LLM-polluted" comments containing raw terminal output and mitigates security risks by detecting and blocking echoback attack vectors that could exploit terminal vulnerabilities. Key capabilities include scanning and cleaning PR files, PR comments, and issue comments, with options to rewrite or flag problematic content based on detected threats.

## What's Changed

## What's Changed
* fix: make Create GitHub Release step idempotent by @Copilot in https://github.com/marquetools/strip-ansi-action/pull/6


**Full Changelog**: https://github.com/marquetools/strip-ansi-action/compare/v1.0.2...v1.0.3
