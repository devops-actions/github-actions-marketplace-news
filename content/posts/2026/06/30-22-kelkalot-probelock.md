---
title: probelock gate
date: 2026-06-30 22:55:07 +00:00
tags:
  - kelkalot
  - GitHub Actions
draft: false
repo: https://github.com/kelkalot/probelock
marketplace: https://github.com/marketplace/actions/probelock-gate
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/kelkalot/probelock** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/probelock-gate) to find the latest changes.

## What's Changed

A capability lockfile for local models: derive deterministic probes from your tool
schemas, score them with no LLM judge, and gate CI on within-model regression.

## Capabilities (11)
`tool_selection`, `tool_discrimination`, `needle_in_tools`, `arity_robustness`,
`arg_validity`, `required_args`, `structured_output`, `format_adherence`, and three
negative/safety probes — `tool_restraint`, `tool_permission`, `no_hallucinated_tool`.

## Backends
- Any OpenAI-compatible endpoint via `--endpoint` (Ollama, vLLM, llama.cpp,
  LM Studio, HF TGI, OpenAI, OpenRouter, …)
- Anthropic / Gemini / Mistral / etc. via `--via anyllm` or `--via litellm`
  (optional extras: `probelock[anyllm]`, `probelock[litellm]`)

## Also in this release
- `--samples N` with a statistically-aware gate (`--confidence`, one-sided
  two-proportion test; sub-significant drops are flagged "noisy", not failed)
- `diff --format table | markdown | json | html`
- `probelock init` scaffolding and a composite GitHub Action (`action.yml`)

## Install
Requires Python 3.10+ (the `anyllm` extra needs 3.11+).

```bash
uvx probelock --help
pip install probelock
```

