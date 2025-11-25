---
title: GPT 5.x PR Reviewer
date: 2025-11-25 21:09:13 +00:00
tags:
  - micahstubbs
  - GitHub Actions
draft: false
repo: https://github.com/micahstubbs/ChatGPT-CodeReview
marketplace: https://github.com/marketplace/actions/gpt-5-x-pr-reviewer
version: v2.0.5
dependentsNumber: "?"
---


Version updated for **https://github.com/micahstubbs/ChatGPT-CodeReview** to version **v2.0.5**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gpt-5-x-pr-reviewer) to find the latest changes.

## Release notes

## Changes

- **Fix gpt-5.1-codex verbosity constraint** - The `gpt-5.1-codex` model only supports `verbosity: 'medium'`. This release enforces that constraint and logs a warning if users set a different value via `VERBOSITY` env var.
- **Add `getValidVerbosity()` helper** - Model-specific verbosity validation with proper TypeScript typing
- **Add debug logging** - Shows selected verbosity when `LOG_LEVEL=debug` is set
- **Comprehensive test coverage** - 9 new tests covering all verbosity scenarios
- **Safer default** - Changed default verbosity from `'low'` to `'medium'` to prevent API errors across all GPT-5.1 models

## Fixes

- Fixes #59

## Usage

```yaml
- uses: micahstubbs/ChatGPT-CodeReview@v2.0.5
  with:
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    MODEL: gpt-5.1-codex
```
