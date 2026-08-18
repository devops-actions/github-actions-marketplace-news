---
title: verbatra
date: 2026-08-18 13:22:45 +00:00
tags:
  - verbatra
  - GitHub Actions
draft: false
repo: https://github.com/verbatra/action
marketplace: https://github.com/marketplace/actions/verbatra
version: v1.1.3
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The verbatra GitHub Action automates i18n translation tasks by reading locale files, detecting missing or drifted content, translating it using an AI or machine-translation service (OpenAI, Anthropic, Gemini, DeepL, or an openai-compatible local model), and providing GitHub annotations and a job summary. It supports CI integration and can be used as a pull request gate without spending on provider API keys.
---


Version updated for **https://github.com/verbatra/action** to version **v1.1.3**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verbatra) to find the latest changes.

## Action Summary

The verbatra GitHub Action automates i18n translation tasks by reading locale files, detecting missing or drifted content, translating it using an AI or machine-translation service (OpenAI, Anthropic, Gemini, DeepL, or an openai-compatible local model), and providing GitHub annotations and a job summary. It supports CI integration and can be used as a pull request gate without spending on provider API keys.

## What's Changed

## Fixes

v1.1.2 fixed the original npx-cache resolution bug but introduced a more severe one: `npm install --prefix "$install_dir"` still reads and parses the consumer's *existing* `package.json`, not just the packages named on the command line. Any pnpm (or Yarn) workspace-protocol dependency string there — `workspace:*`, pnpm's `catalog:` — crashed the install outright, regardless of `--no-save`. Caught in the very first real-world CI run against v1.1.2, against verbatra's own docs site, whose `apps/docs/package.json` uses exactly this.

- Installs into an isolated scratch directory (no `package.json` to conflict with), then merges the result into `working-directory` — the consumer's own dependency manifest is never read by npm at all.
- Fixes a `node_modules/.bin` symlink-dereferencing issue found while diagnosing the above (only matters for the merge step, not user-visible on its own).
- Adds a `pnpm-workspace-protocols` regression fixture reproducing the exact failure, plus bumps all self-test fixtures to `0.9.0` (previously `0.8.0`, stale).

No input or output changes; this is a drop-in upgrade.
