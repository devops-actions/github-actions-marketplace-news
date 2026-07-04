---
title: overllm
date: 2026-07-04 06:14:38 +00:00
tags:
  - theadamdanielsson
  - GitHub Actions
draft: false
repo: https://github.com/theadamdanielsson/overllm
marketplace: https://github.com/marketplace/actions/overllm
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/theadamdanielsson/overllm** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/overllm) to find the latest changes.

## What's Changed

Two deterministic model-hygiene rules.

- `deprecated-model`: flags a `model` id that's retired (the call 404s) or deprecated and scheduled for removal, and names the current model to switch to. Exact-match against a known list, so a live model or alias is never flagged.
- `unsupported-params`: flags `temperature`/`top_p`/`top_k` set on a model that rejects them — the OpenAI o-series and the newest Anthropic models, where the parameter is a no-op or a 400.

Both stay silent when the model isn't a plain string literal.
