---
title: anti-slop
date: 2026-02-27 05:53:05 +00:00
tags:
  - peakoss
  - GitHub Actions
draft: false
repo: https://github.com/peakoss/anti-slop
marketplace: https://github.com/marketplace/actions/anti-slop
version: v0.2.1
dependentsNumber: "29"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/peakoss/anti-slop** to version **v0.2.1**.
- This action is used across all versions by **29** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/anti-slop) to find the latest changes.

## Action Summary

The "Anti Slop" GitHub Action helps maintainers automatically detect and close low-quality or AI-generated pull requests (PRs) using 31 pre-configured checks. It addresses the challenge of managing spammy or unhelpful contributions in open-source projects, saving time and preserving the quality of contributions without penalizing legitimate or AI-assisted efforts. This action is highly configurable, fast, language-agnostic, and features sensible defaults, making it a valuable automation tool for improving PR review workflows.

## Release notes

## Fixed

- Inherited files from the default branch incorrectly included in file checks. When the PR targets a branch other than the default (e.g. `next`), files the target branch hasn't caught up to yet were incorrectly also evaluated, causing false positives on file checks.
- Multiline comments counted as individual comments
- [Shortcode emojis](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#using-emojis) not counted by the emoji check
- Checkboxes inside blockquotes not detected by the PR template check, which could cause checkbox-based checks to pass when they should not
- Missing strict sections passes the `strictPrTemplateSections` check
- Duplicated "Missing section" prefix in the template check info message

## Refactored

- Extract inherited data detection out of the commit checks so both commit and file checks share a single comparison call
