---
title: E2E Self-Heal
date: 2026-07-17 22:44:44 +00:00
tags:
  - Lee-Dongwook
  - GitHub Actions
draft: false
repo: https://github.com/Lee-Dongwook/E2E-Self-Heal
marketplace: https://github.com/marketplace/actions/e2e-self-heal
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  A self-healing engine that uses AI to automatically repair broken Playwright E2E tests by diagnosing and patching failing selectors, ensuring tests remain resilient to UI changes. The tool can operate in two modes: auto-heal (re-running the test until it passes) or review (diagnosing why a selector broke and suggesting source-level fixes as inline PR comments). It resolves selectors against the live DOM and checks if each patch resolves to exactly one element before running the test again.
---


Version updated for **https://github.com/Lee-Dongwook/E2E-Self-Heal** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/e2e-self-heal) to find the latest changes.

## Action Summary

A self-healing engine that uses AI to automatically repair broken Playwright E2E tests by diagnosing and patching failing selectors, ensuring tests remain resilient to UI changes. The tool can operate in two modes: auto-heal (re-running the test until it passes) or review (diagnosing why a selector broke and suggesting source-level fixes as inline PR comments). It resolves selectors against the live DOM and checks if each patch resolves to exactly one element before running the test again.

## What's Changed

chore(release): 0.4.0

Multi-provider LLM support (OpenAI, Anthropic, Ollama alongside NVIDIA NIM)
via a provider-agnostic LangChain-backed client abstraction.

Co-Authored-By: Claude Opus 4.8 (1M context) <noreply@anthropic.com>
