---
title: Agent Debug — Diagnose AI Agent Failures
date: 2026-04-16 22:11:30 +00:00
tags:
  - Viktorsdb
  - GitHub Actions
draft: false
repo: https://github.com/Viktorsdb/agent-debug
marketplace: https://github.com/marketplace/actions/agent-debug-diagnose-ai-agent-failures
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Viktorsdb/agent-debug** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-debug-diagnose-ai-agent-failures) to find the latest changes.

## Action Summary

**Summary:**  
The `agent-debug` GitHub Action is a diagnostic tool for AI agents, providing root cause analysis and actionable fixes for agent failures. It automates the identification of issues such as incorrect tool usage or hallucinations, explains why failures occurred, and suggests concrete system prompt or tool definition adjustments. The action supports multiple AI providers and SDKs, integrates seamlessly into GitHub workflows to comment on pull requests with debugging insights, and offers automated trace capture for streamlined troubleshooting.

## What's Changed

## What's new in v0.3.0

### 🔧 CodeFixer — AI reads your exact file content and fixes it
No more text-matching failures. The AI now reads your actual Python file, identifies the exact lines causing test failures, and applies precise fixes. Zero guesswork.

### 4-step `fix` flow
1. **Analyze trace** — root cause analysis
2. **Run tests** — pre-flight to identify all failures
3. **Fix code** — CodeFixer rewrites broken lines
4. **Apply prompt fixes** — system prompt + tool description improvements

### Batch test validation
All fixes applied first, tests run once at the end. If tests still fail, revert-all option.

### Multi-provider support
Pass `--system-prompt` and `--code` files — AI generates fixes from actual file content, not guesses.

## Install
```bash
pip install agent-debug==0.3.0
```

## Usage
```bash
agent-debug fix trace.json \
  --code agent.py \
  --system-prompt prompts/system.txt \
  --test-cmd "pytest tests/"
```
