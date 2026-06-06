---
title: PromptEval Prompt Gate
date: 2026-06-06 22:46:22 +00:00
tags:
  - FranciscoFerreiraff
  - GitHub Actions
draft: false
repo: https://github.com/FranciscoFerreiraff/prompteval-action
marketplace: https://github.com/marketplace/actions/prompteval-prompt-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/FranciscoFerreiraff/prompteval-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prompteval-prompt-gate) to find the latest changes.

## What's Changed

Gate your prompts in CI the same way you gate code.

## What it does
Sends a prompt to the PromptEval API and **fails the build** when quality drops — by score, by conflicting instructions, or by regression against the version you have in production.

## Features
- **Score gate** — fail under `min_score` (or your account's production threshold).
- **Conflict gate** — `fail_on_conflict` fails on contradicting instructions.
- **Regression gate** — `baseline_slug` compares against that prompt's current production version; `max_drop` sets how much slippage is allowed.
- **Job summary** — score, dimensions and conflicts rendered in the GitHub Actions UI.
- **BYOK** — pass an Anthropic key (`provider_key`) to run on your own key: no quota, unlocks `full` mode on any plan.

## Usage
```yaml
- uses: FranciscoFerreiraff/prompteval-action@v1
  with:
    api_key: ${{ secrets.PROMPTEVAL_API_KEY }}
    prompt_file: prompts/support-agent.md
    min_score: 75
    fail_on_conflict: true
    baseline_slug: support-agent
```
Get an API key at https://prompt-eval.com/ — works on every plan (free included).
