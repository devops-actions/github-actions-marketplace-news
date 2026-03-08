---
title: PromptForge Eval
date: 2026-03-08 21:22:03 +00:00
tags:
  - MPrazeres-1983
  - GitHub Actions
draft: false
repo: https://github.com/MPrazeres-1983/promptforge
marketplace: https://github.com/marketplace/actions/promptforge-eval
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/MPrazeres-1983/promptforge** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/promptforge-eval) to find the latest changes.

## Action Summary

PromptForge is an open-source framework designed for managing, testing, and maintaining the quality of prompts used in AI systems. It addresses challenges such as silent performance degradation and the lack of metrics or auditability by enabling prompt versioning, automated regression testing, and evaluation against defined datasets. Key capabilities include pinpointing prompt failures, identifying root causes, and providing measurable, reproducible improvements to ensure reliable and optimized prompt performance.

## Release notes

## PromptForge Eval Action — v1.0.0

Run prompt evaluation and regression testing directly in your CI pipeline.

**What it does:**
- Installs `promptforge-llmops` automatically
- Runs `promptforge eval` against your golden dataset
- Optionally runs `promptforge diff` to detect regressions vs a baseline run
- Fails the workflow if regressions are detected

**Supports:** OpenAI, Anthropic, Groq (free tier), and any OpenAI-compatible provider.

See the [README](https://github.com/MPrazeres-1983/promptforge) for full documentation.
