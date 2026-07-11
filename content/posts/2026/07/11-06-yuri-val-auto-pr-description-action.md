---
title: Auto-generate PR Description
date: 2026-07-11 06:06:01 +00:00
tags:
  - yuri-val
  - GitHub Actions
draft: false
repo: https://github.com/yuri-val/auto-pr-description-action
marketplace: https://github.com/marketplace/actions/auto-generate-pr-description
version: v1.6.0
dependentsNumber: "2"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/yuri-val/auto-pr-description-action** to version **v1.6.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/auto-generate-pr-description) to find the latest changes.

## What's Changed

Changes in this Release:
- feat: default to gpt-5.6-luna, tune prompt and token budget

- Switch the default model from gpt-5.4-mini to gpt-5.6-luna
- Rewrite the prompt per the GPT-5.6 prompting guide: lean system
  prompt with a clear output contract, diff moved to the user message
- Set reasoning_effort "low" for gpt-5.x models; keep temperature only
  for non-reasoning models (gpt-5.x rejects custom temperature)
- Raise max_completion_tokens 1024 -> 4096 (reasoning tokens headroom)
  and the diff cap 30k -> 100k chars (400k-token context window)
- Rebuild dist

Co-Authored-By: Claude Fable 5 <noreply@anthropic.com>

- 📝 Refactor request body construction for OpenAI API call in PR description generation

