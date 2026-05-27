---
title: PRowl Code Review
date: 2026-05-27 22:47:18 +00:00
tags:
  - tusharshah21
  - GitHub Actions
draft: false
repo: https://github.com/tusharshah21/PRowl
marketplace: https://github.com/marketplace/actions/prowl-code-review
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/tusharshah21/PRowl** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowl-code-review) to find the latest changes.

## Action Summary

PRowl is a self-hostable GitHub Action designed to automate code reviews using AI. It uses a two-agent pipeline where a fast, cost-efficient model detects issues like bugs, security vulnerabilities, and performance concerns, and a smarter model explains and proposes fixes for flagged code. This action streamlines pull request reviews, reduces manual effort, and minimizes costs by skipping the fixer step when no issues are found.

## What's Changed

# Changelog

## 1.1.0

### Token efficiency
- Rewrote the TOON encoder as a true tabular format (`F:<path>` header + `C[N]{op,ln,code}:` schema declared once, then CSV-style rows with one-char op codes).
- Encoder now operates at the file level instead of per chunk, so the file header is emitted once.
- Context-line trimming: unchanged lines beyond ±N of any `+`/`-` are dropped. Configurable via the new `CONTEXT_LINES` input (default `2`, set `0` to drop all context).
- Benchmarked result on a representative two-file diff: **~45% smaller than the previous JSON encoder**, **~20% smaller than the raw unified diff**.

### Response caching
- New `ENABLE_CACHE` input (default `true`). LLM responses are cached by SHA256 of `(model, messages)` under the runner's temp directory. Duplicate chunks within a job (common on `synchronize` events) skip the model call entirely.

### Optional Semgrep pre-pass
- New `SEMGREP_RULES` input. When set and `semgrep` is on PATH, findings are passed to Agent 1 as priors. Agent 1 still verifies before flagging, reducing false positives.

### New provider examples
- Ollama (self-hosted, fully private): `http://localhost:11434/v1`
- GitHub Models (free for public repos): `https://models.inference.ai.azure.com`

### Fix-quality
- Agent 2 now receives a snippet of the surrounding file (±15 lines) when the file is available on the runner, giving it imports / enclosing function signature for better fix accuracy.

## 1.0.0

Initial release.

