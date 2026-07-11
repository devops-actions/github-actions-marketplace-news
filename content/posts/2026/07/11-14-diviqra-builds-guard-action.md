---
title: Diviqra Guard LLM Prompt Scanner
date: 2026-07-11 14:23:25 +00:00
tags:
  - diviqra-builds
  - GitHub Actions
draft: false
repo: https://github.com/diviqra-builds/guard-action
marketplace: https://github.com/marketplace/actions/diviqra-guard-llm-prompt-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/diviqra-builds/guard-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/diviqra-guard-llm-prompt-scanner) to find the latest changes.

## What's Changed

## Diviqra Guard — GitHub Action v1.0.0

Scan LLM prompts for injection attacks before deployment.

### Usage
```yaml
- name: Guard Prompt Scan
  uses: diviqra-builds/guard-action@v1
  with:
    api_key: ${{ secrets.GUARD_API_KEY }}
    scan_path: ./prompts/
    fail_on: block
```

### What's new
- Scans .txt/.json/.yaml/.yml/.md prompt files
- Detects prompt injection, jailbreaks, PII leakage
- Hindi/Hinglish/Tamil/Telugu/Kannada support
- Colored summary table in Actions log
- Configurable fail threshold (block/warn/never)
- LangChain, OpenAI, FastAPI integrations included

Get free API key: https://guard.diviqra.com/register
