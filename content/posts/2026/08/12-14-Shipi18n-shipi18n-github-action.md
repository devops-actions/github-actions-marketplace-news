---
title: Shipi18n Auto Translate
date: 2026-08-12 14:49:04 +00:00
tags:
  - Shipi18n
  - GitHub Actions
draft: false
repo: https://github.com/Shipi18n/shipi18n-github-action
marketplace: https://github.com/marketplace/actions/shipi18n-auto-translate
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  The Shipi18n GitHub Action automatically translates i18n locale files using your own LLM, providing an open-source solution for translating without a Shipi18n account or hosted API. It supports incremental mode and allows you to skip keys or paths during translation, while also verifying placeholder preservation and key consistency. The action can output translated files, verification errors, warnings, and skipped keys count.
---


Version updated for **https://github.com/Shipi18n/shipi18n-github-action** to version **v2.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shipi18n-auto-translate) to find the latest changes.

## Action Summary

The Shipi18n GitHub Action automatically translates i18n locale files using your own LLM, providing an open-source solution for translating without a Shipi18n account or hosted API. It supports incremental mode and allows you to skip keys or paths during translation, while also verifying placeholder preservation and key consistency. The action can output translated files, verification errors, warnings, and skipped keys count.

## What's Changed

v2 drops the hosted Shipi18n API. The action now calls **your own** OpenAI or Anthropic key directly — no Shipi18n account, no API key, no per-word fees.

```yaml
- uses: Shipi18n/shipi18n-github-action@v2
  with:
    source-file: locales/en.json
    target-languages: es,fr,de
    provider: anthropic          # or openai
    api-key: ${{ secrets.ANTHROPIC_API_KEY }}
```

## Breaking changes

- The Shipi18n `api-key` / `api-url` inputs are gone. Pass `provider` plus your own LLM key (or set `ANTHROPIC_API_KEY` / `OPENAI_API_KEY` in the job env).
- Hosted LLM verification, self-correction and dashboard sync are removed. **Local** verification (placeholder, key and length checks) is kept.
- The YAML locale-file input is removed; JSON only.

## Added

- `provider`, `model` inputs — Anthropic (default) or OpenAI, with an optional model override.
- Local `skip-keys` / `skip-paths` glob matching.
- Built on the new open-source [`@shipi18n/core`](https://www.npmjs.com/package/@shipi18n/core) engine, which is now bundled into `dist/` along with the provider SDKs.

Source for v2 lives in the [Shipi18n/shipi18n](https://github.com/Shipi18n/shipi18n) monorepo; this repo remains the release mirror, so `@v2` keeps working with no path change.
