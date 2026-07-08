---
title: LLM Prompt Radar
date: 2026-07-08 14:53:25 +00:00
tags:
  - Tahiram32
  - GitHub Actions
draft: false
repo: https://github.com/Tahiram32/llm-prompt-radar
marketplace: https://github.com/marketplace/actions/llm-prompt-radar
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Tahiram32/llm-prompt-radar** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/llm-prompt-radar) to find the latest changes.

## What's Changed

## The Missing CI Check for AI-Powered Applications 🛡️

`llm-prompt-radar` is the first dedicated CI tool for detecting risky changes to LLM prompts and AI configuration before they ship to production.

### 🌟 What it detects

- **🚨 Safety guardrail removal** — Critical alert when safety/refusal instructions are removed from prompts
- **🤖 Model downgrades** — Flags silent swaps like `gpt-4o` → `gpt-3.5-turbo` or `claude-3-opus` → `claude-3-haiku`
- **📝 Prompt file changes** — Deep analysis of `.prompt`, `.jinja`, `.j2` template files with similarity scoring
- **🔍 In-code system messages** — Detects changes to system prompts inside Python, JS, and TS source files
- **⚙️ LLM parameter changes** — Tracks `temperature`, `max_tokens`, `top_p`, and more
- **🎯 Risk scoring** — none / low / medium / high / critical
- **📊 Multiple output formats** — text, json, markdown, github annotations, SARIF

### 📦 Install

```bash
pip install llm-prompt-radar
```

### 🔧 GitHub Action

```yaml
- uses: actions/checkout@v7
  with:
    fetch-depth: 0

- uses: Tahiram32/llm-prompt-radar@v0.1.0
  with:
    base-ref: origin/main
    format: github
    fail-on: high
```

### 🔗 Links
- PyPI: https://pypi.org/project/llm-prompt-radar/0.1.0/
- Docs: https://github.com/Tahiram32/llm-prompt-radar#readme
