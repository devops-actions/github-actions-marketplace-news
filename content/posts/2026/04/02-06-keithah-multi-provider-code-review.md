---
title: Multi-Provider Code Review
date: 2026-04-02 06:33:42 +00:00
tags:
  - keithah
  - GitHub Actions
draft: false
repo: https://github.com/keithah/multi-provider-code-review
marketplace: https://github.com/marketplace/actions/multi-provider-code-review
version: v0.1.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/keithah/multi-provider-code-review** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/multi-provider-code-review) to find the latest changes.

## Action Summary

The **Multi-Provider Code Review** GitHub Action automates code reviews using a hybrid approach that combines fast AST analysis with deep AI-powered insights from multiple LLM providers. It streamlines the review process by providing incremental reviews, consensus-based inline comments, cost tracking, and security scanning, while also enabling advanced features like analytics dashboards, auto-fix suggestions, and self-hosted deployment. This action is designed to accelerate reviews, reduce costs, improve accuracy with multi-provider consensus, and enhance code quality in CI/CD workflows.

## What's Changed

## Highlights
- Composite GitHub Action for multi-provider reviews (OpenCode by default; optional OpenRouter) with synthesized PR comment output
- Built-in diff truncation, AGENTS.md inclusion, per-model timeouts, and provider failure handling
- Docs list recommended free providers (OpenCode + OpenRouter) with guidance on triggers and configuration
- CI smoke tests for default OpenCode path and stubbed OpenRouter path; Python presence check in action

## Usage
- Workflow template: https://github.com/keithah/multi-provider-code-review/blob/main/action-simple.yml
- Inputs: GITHUB_TOKEN, PR metadata, optional REVIEW_PROVIDERS/SYNTHESIS_MODEL/DIFF_MAX_BYTES/RUN_TIMEOUT_SECONDS/OPENROUTER_API_KEY
- Defaults: opencode/big-pickle, opencode/grok-code, opencode/minimax-m2.1-free, opencode/glm-4.7-free; synthesis opencode/big-pickle

## Notes
- OpenRouter providers require OPENROUTER_API_KEY and python on the runner
- Copilot support is not included in this release
