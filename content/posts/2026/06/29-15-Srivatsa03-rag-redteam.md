---
title: rag-redteam
date: 2026-06-29 15:10:20 +00:00
tags:
  - Srivatsa03
  - GitHub Actions
draft: false
repo: https://github.com/Srivatsa03/rag-redteam
marketplace: https://github.com/marketplace/actions/rag-redteam
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Srivatsa03/rag-redteam** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rag-redteam) to find the latest changes.

## What's Changed

Red-team your RAG pipeline for the attacks eval frameworks miss, as a CLI or a one-line GitHub Action.

Now on PyPI: `pip install rag-redteam`

## Probes (6)
- indirect_prompt_injection (high)
- context_leakage (high)
- cross_document_injection (high)
- tool_use_injection (high)
- system_prompt_extraction (medium)
- citation_integrity (medium)

## Features
- Exact and fuzzy (near-verbatim) detection (`--match exact|fuzzy`)
- Baseline / regression mode for CI (`--baseline`): fail only when a pipeline gets more exploitable
- Colored terminal report, plus Markdown and JSON output
- One-line GitHub Action: `uses: Srivatsa03/rag-redteam@v0.2.0`
- Adapters for LangChain, LlamaIndex, and Haystack, plus a provider-neutral one
- Threat model and references in `docs/THREAT-MODEL.md`
- Cross-model benchmark (gpt-4o-mini vs GPT-5.1) in `docs/BENCHMARK.md`

MIT licensed. Contributions welcome (see CONTRIBUTING.md).

