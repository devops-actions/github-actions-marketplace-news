---
title: Open Code Review
date: 2026-03-15 05:56:52 +00:00
tags:
  - raye-deng
  - GitHub Actions
draft: false
repo: https://github.com/raye-deng/open-code-review
marketplace: https://github.com/marketplace/actions/open-code-review
version: v2.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/raye-deng/open-code-review** to version **v2.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/open-code-review) to find the latest changes.

## Action Summary

Open Code Review is an open-source CI/CD quality gate designed specifically for analyzing AI-generated code across six programming languages. It automates the detection of issues such as hallucinated imports, stale APIs, over-engineering, context window artifacts, and security anti-patterns, which traditional static analysis tools often miss. The action provides fast, scalable, and self-hostable code reviews with multi-stage pipelines that include structural analysis, embedding-based checks, and deep remote LLM analysis.

## Release notes

## What's New

### L3 Deep Scan with Remote LLM
- Full L3 SLA pipeline: Structural → Embedding → Remote LLM
- 8 LLM providers: OpenAI, GLM, ZAI, DeepSeek, Together AI, Fireworks, Anthropic, OpenAI-compatible
- CLI: `ocr scan . --sla L3 --provider glm --model pony-alpha-2 --api-key KEY`

### Universal Provider Adapter
- `openai-compatible` adapter for any OpenAI-compatible service
- Preset providers with auto-filled baseUrl
- Config file support (`ocr.config.json`)

### Multi-Language AI Detectors
- Go, Java, Kotlin, Python language-specific detectors
- Hallucinated imports, over-engineering, security anti-patterns
- Phantom package databases for each language

### `ocr heal` Command
- AI-powered auto-fix: scan → fix → re-scan
- `--dry-run` mode for preview
- IDE rules generation (Cursor, Copilot, Augment)
- Heal report with before/after comparison

### Bug Fixes
- CLI --version now shows correct version
- SARIF version number fixed
