---
title: overllm
date: 2026-07-05 06:19:39 +00:00
tags:
  - theadamdanielsson
  - GitHub Actions
draft: false
repo: https://github.com/theadamdanielsson/overllm
marketplace: https://github.com/marketplace/actions/overllm
version: v0.7.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/theadamdanielsson/overllm** to version **v0.7.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/overllm) to find the latest changes.

## What's Changed

Recall improvements + one new rule, each validated on ~14k files of real code (framework-heavy and amateur) with no new false positives.

- **Matured call detection — follow a model through composition.** LangChain `chain.invoke(...)` and bound-model `.invoke(...)` are now detected (an LCEL `|` pipe, `.with_structured_output()`, or an alias that composes a *known model*). A `prompt | parser` chain (no model) or a `dict | dict` merge is not tracked — precise. langchain detection 385→492.
- **kwargs-splat** — `create(**params)` on the unambiguous chains.
- **Embeddings** — `embeddings.create` in a per-item loop → `llm-in-loop`.
- **Module-constant prompts** — a prompt/model held in a top-level constant used inside a function is resolved.
- **New rule `json-mode-missing-json`** — `response_format=json_object` with a static prompt lacking "json" is a provable OpenAI 400 (fires only when the absence is provable).

155 tests. Precision held: amateur-corpus findings byte-identical to 0.6.2.
