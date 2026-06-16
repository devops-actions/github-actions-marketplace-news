---
title: DocPilot Self-Healing Docs
date: 2026-06-16 23:19:49 +00:00
tags:
  - wyattstanson
  - GitHub Actions
draft: false
repo: https://github.com/wyattstanson/docpilot
marketplace: https://github.com/marketplace/actions/docpilot-self-healing-docs
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/wyattstanson/docpilot** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docpilot-self-healing-docs) to find the latest changes.

## What's Changed

First public release of **DocPilot** — a self-healing technical documentation engine.

## What it does
Detects when code changes make documentation stale and either opens a fix PR or flags it for review, right inside CI.

## Highlights
- Core engine: parser (Python/JS/TS/Markdown), embeddings + ChromaDB, heuristic+embedding link graph, git diff analyzer, LLM staleness checker + repair engine with a validation gate
- Provider-agnostic: OpenAI / Anthropic / any OpenAI-compatible endpoint (Groq, Gemini) / deterministic offline mock
- GitHub Action: fix-branch PR workflow, self-updating PR comment, confidence-based routing (auto-fix / draft / flag)
- FastAPI bridge + Netflix-style React/Tailwind dashboard with a Live Testing Console
- Accuracy benchmark: 18-case labeled corpus — 91% recall, 0% false positives, 100% correction quality
- 36 tests, all offline

## Usage
```yaml
- uses: wyattstanson/docpilot@v1
  with:
    llm_api_key: ${{ secrets.OPENAI_API_KEY }}
```
