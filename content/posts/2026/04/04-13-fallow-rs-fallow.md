---
title: Fallow - Codebase Health
date: 2026-04-04 13:40:38 +00:00
tags:
  - fallow-rs
  - GitHub Actions
draft: false
repo: https://github.com/fallow-rs/fallow
marketplace: https://github.com/marketplace/actions/fallow-codebase-health
version: v2.12.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/fallow-rs/fallow** to version **v2.12.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fallow-codebase-health) to find the latest changes.

## Action Summary

This GitHub Action, "Fallow," is a codebase analyzer designed for TypeScript and JavaScript projects. It automates the detection of unused code, duplicated code, overly complex functions, and architectural issues with sub-second performance, requiring no configuration. By identifying inefficiencies and potential problems in your codebase, it simplifies code cleanup, reduces technical debt, and enhances overall code quality.

## What's Changed

### Bug fixes

- **Tab indentation preserved in export auto-fix** — `fallow fix` no longer silently converts tab indentation to spaces when removing the `export` keyword. The original whitespace prefix is now preserved exactly. ([#36](https://github.com/fallow-rs/fallow/issues/36), [#37](https://github.com/fallow-rs/fallow/pull/37) by [@swalha1999](https://github.com/swalha1999))

**Full Changelog**: https://github.com/fallow-rs/fallow/compare/v2.12.0...v2.12.1
