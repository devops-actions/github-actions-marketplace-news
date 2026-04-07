---
title: Fallow - Codebase Health
date: 2026-04-07 13:57:20 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.17.1
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.17.1**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, **Fallow**, is a Rust-native codebase analyzer for TypeScript and JavaScript that identifies unused code, code duplication, complexity issues, and architectural problems in sub-second execution times. It automates tasks such as detecting dead code, finding duplicated code, analyzing complexity, and auditing file changes, helping developers maintain cleaner and more efficient codebases. Its key features include zero configuration, automatic entry point detection, framework/plugin support, and optional auto-removal of unused code elements.

## What's Changed

## Features

- **GitHub Action `score` input** -- new `score: true` input enables the `--score` flag on the health command, adding a health delta header to PR summaries showing grade, score change, dead export drift, and complexity trends.
- **Health delta header in CI summaries** -- when `--score` is used, both GitHub Action and GitLab CI summaries display a one-line health score comparison against the previous snapshot.

## Bug Fixes

- **Summary section links** -- all section headers (Code issues, Duplication, Complexity, Codebase health) and table metrics now link to their respective docs pages. Previously, the Duplication link rendered as raw markdown inside a `<summary>` tag, and Code issues/Complexity/Codebase health headers had no links at all.

## Install

```sh
npm install -g fallow@2.17.1
```

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.17.0...v2.17.1
