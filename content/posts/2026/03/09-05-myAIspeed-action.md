---
title: MyAISpeed - AI Latency Test
date: 2026-03-09 05:56:56 +00:00
tags:
  - myAIspeed
  - GitHub Actions
draft: false
repo: https://github.com/myAIspeed/action
marketplace: https://github.com/marketplace/actions/myaispeed-ai-latency-test
version: v1
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/myAIspeed/action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/myaispeed-ai-latency-test) to find the latest changes.

## Action Summary

The MyAISpeed GitHub Action measures connection latency to major AI providers directly from a CI/CD pipeline, identifying the fastest provider and providing latency metrics. It automates performance testing for AI services, helping developers monitor provider responsiveness and set thresholds to fail workflows if latency exceeds acceptable limits. Key capabilities include testing multiple providers, returning JSON-formatted results, and identifying the fastest provider with its latency.

## Release notes

Test connection speed to 13 major AI providers from your CI/CD pipeline.

## Features
- Tests OpenAI, Anthropic, Google Gemini, Mistral, DeepSeek, Groq, xAI, Perplexity, Cohere, Together, Cerebras, Fireworks, and AI21
- Configurable provider filtering
- Latency threshold enforcement (fail the step if too slow)
- JSON output for downstream processing

## Quick Start
```yaml
- uses: myAIspeed/action@v1
  id: speed
- run: echo "Fastest: ${{ steps.speed.outputs.fastest-provider }}"
