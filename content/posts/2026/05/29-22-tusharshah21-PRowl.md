---
title: PRowl Code Review
date: 2026-05-29 22:46:27 +00:00
tags:
  - tusharshah21
  - GitHub Actions
draft: false
repo: https://github.com/tusharshah21/PRowl
marketplace: https://github.com/marketplace/actions/prowl-code-review
version: v1.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/tusharshah21/PRowl** to version **v1.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/prowl-code-review) to find the latest changes.

## Action Summary

PRowl is an open-source GitHub Action that automates pull request reviews using AI models from any LLM provider. It identifies code issues such as bugs, security vulnerabilities, performance inefficiencies, and best practices with a two-agent pipeline, where a lightweight model detects issues and a more advanced model provides explanations and suggested fixes. This action streamlines code review processes, reduces costs by skipping unnecessary steps when no issues are found, and enhances efficiency with token-efficient encoding and response caching.

## What's Changed

## Fixes

**Newer OpenAI models (`gpt-5`, `o`-series) now work as the reviewer/fixer.**
These models reject the legacy `max_tokens` parameter and a custom `temperature`, and they spend their token budget on hidden reasoning before emitting output. PRowl previously always sent `max_tokens` + `temperature` with a small budget, so the call failed (or came back empty) and the review silently produced no comments.

- **Adaptive request params.** `callLLM` now tries the standard params and, only when the API reports an unsupported parameter/value, falls forward to `max_completion_tokens` and drops `temperature`. The working shape is memoized per model.
- **Reasoning-model token headroom.** The reasoning shape starts with a larger budget and auto-retries with a grown budget if a response comes back empty and truncated (`finish_reason: "length"`).
- **No model-name hardcoding**, so OpenAI-compatible providers that expect `max_tokens` (Groq, DeepSeek, Ollama, OpenRouter, etc.) are unaffected.

## Upgrade

No config changes required. Bump your pin to `@v1.1.1` (or stay on `@v1` for the latest):

```yaml
uses: tusharshah21/PRowl@v1.1.1

Full changelog: https://github.com/tusharshah21/PRowl/compare/v1.1.0...v1.1.1

