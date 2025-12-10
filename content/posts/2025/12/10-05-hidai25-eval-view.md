---
title: EvalView - AI Agent Testing
date: 2025-12-10 05:39:53 +00:00
tags:
  - hidai25
  - GitHub Actions
draft: false
repo: https://github.com/hidai25/eval-view
marketplace: https://github.com/marketplace/actions/evalview-ai-agent-testing
version: v0.1.4
dependentsNumber: "?"
---


Version updated for **https://github.com/hidai25/eval-view** to version **v0.1.4**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalview-ai-agent-testing) to find the latest changes.

## Release notes

## What's New

  ### Ollama Support (Free Local Evaluation)
  - **Ollama as LLM-as-judge** - Run evaluations locally with zero API costs
  - **Auto-detection** - Automatically detects Ollama running on localhost:11434
  - **New adapter** - Test LangGraph agents powered by local Llama models

  ```bash
  # Free local evaluation
  evalview run --judge-provider ollama --judge-model llama3.2

  Improved Hallucination Detection

  - Reduced false positives for local models
  - Unit conversions and formatting no longer flagged as hallucinations
  - Confidence threshold: 90% for Ollama, 70% for cloud providers

  README Updates

  - Added "Who is EvalView for?" section
  - Added LangSmith/Langfuse complement positioning
  - New Ollama example in /examples/ollama/

  Fixes

  - Fixed mypy type annotation error
  - Fixed action.yml description length for Marketplace

  Full Changelog: https://github.com/hidai25/eval-view/compare/v0.1.3...v0.1.4
  ```
