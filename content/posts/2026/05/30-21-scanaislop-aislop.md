---
title: aislop Quality Gate
date: 2026-05-30 21:45:19 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.10.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.10.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

**aislop** is a GitHub Action and CLI tool designed to identify and address low-quality code patterns often introduced by AI coding agents, such as unnecessary comments, unused code, and other common issues across multiple programming languages. It automates the detection and scoring of code quality issues, provides configurable rule-based diagnostics, and offers auto-fixing capabilities for mechanical problems. This tool helps maintain clean, maintainable codebases by catching issues that traditional tests and linters might overlook, ensuring higher code quality and consistency.

## What's Changed

This release sharpens accuracy on real-world code and adds a small quality-of-life feature.

## Complexity, measured honestly (Python)

The function detector only recognised single-line synchronous `def`, so `async def` and wrapped multi-line signatures were invisible to `function-too-long`, `too-many-params`, and `deep-nesting`. On a large library like python-telegram-bot that is about 58% of the codebase.

- `async def` and wrapped signatures are now detected.
- `function-too-long` measures a function by its logical body, not its docstrings, comments, or blank lines. A well-documented function is not a long one.
- `too-many-params` counts required parameters only, ignoring `self`/`cls`, `*args`/`**kwargs`, and arguments with defaults. An API wrapper's optional keyword surface is idiomatic, not a smell.

## Fewer false positives in TypeScript and JavaScript

Text-pattern rules no longer treat code inside JSDoc/TSDoc `@example` blocks as live source, the largest false-positive source on well-documented libraries.

- `duplicate-import` on type-fest: 143 findings down to 0.
- `hardcoded-secret` (error severity) on a password inside a Hono doc example: gone.
- Genuine findings are untouched, including zod's real `as any` usage.
- `duplicate-import` also stops suggesting you merge `import * as x` with a named import, which would not be valid TypeScript.

## Update notice

The CLI now tells you, in one quiet line, when a newer version is available. It is cache-backed so it never blocks a run, and stays silent in CI, in non-interactive output, and when you opt out with `AISLOP_NO_UPDATE_NOTIFIER`.

## Tests

Full suite at 953, including a regression net: a realistic Python corpus with golden per-rule assertions and a detection-invariant check that fails on the old detector.

Install or upgrade with `npx aislop@latest`.


## What's Changed
* feat(cli): update-available notifier by @heavykenny in https://github.com/scanaislop/aislop/pull/158
* fix(ai-slop): stop scanning code inside JSDoc/TSDoc comments by @heavykenny in https://github.com/scanaislop/aislop/pull/159
* chore: release 0.10.1 by @heavykenny in https://github.com/scanaislop/aislop/pull/157
* docs(changelog): fold notifier + comment-bleed into the 0.10.1 entry by @heavykenny in https://github.com/scanaislop/aislop/pull/161
* Release: develop → main by @heavykenny in https://github.com/scanaislop/aislop/pull/160


**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.10.0...v0.10.1
