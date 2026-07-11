---
title: Magic Review OPENAI Code Review Action
date: 2026-07-11 06:07:08 +00:00
tags:
  - yuri-val
  - GitHub Actions
draft: false
repo: https://github.com/yuri-val/ai-codereviewer
marketplace: https://github.com/marketplace/actions/magic-review-openai-code-review-action
version: v4
dependentsNumber: "4"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/yuri-val/ai-codereviewer** to version **v4**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/magic-review-openai-code-review-action) to find the latest changes.

## What's Changed

## What's new since v3

- **Default model is now `gpt-5.6-luna`** (was `gpt-4o`). Any model can still be set via the `OPENAI_API_MODEL` input.
- **Prompts overhauled for the GPT-5.6 family**: strict JSON output contract (`response_format: json_object`), severity levels (critical/major), line-number-anchored comments with GitHub `suggestion` blocks.
- **Hardened review pipeline**: concurrent per-file reviews, full-file context fetching, retry with exponential backoff on rate limits/5xx, adaptive completion-token budgets for reasoning models, comment batching with 422/403 fallback.
- **OpenAI SDK upgraded to 4.104**, Octokit to 21.x, action runtime on node20.

## Usage

```yaml
- uses: yuri-val/ai-codereviewer@v4
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    OPENAI_API_MODEL: "gpt-5.6-luna"
    exclude: "**/*.lock,dist/**,**/*.json,**/*.md"
```
