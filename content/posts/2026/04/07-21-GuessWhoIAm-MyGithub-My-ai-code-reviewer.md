---
title: AI Code Review Action Provider Can Vary
date: 2026-04-07 21:56:22 +00:00
tags:
  - GuessWhoIAm-MyGithub
  - GitHub Actions
draft: false
repo: https://github.com/GuessWhoIAm-MyGithub/My-ai-code-reviewer
marketplace: https://github.com/marketplace/actions/ai-code-review-action-provider-can-vary
version: AI-Reviewer-V14
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/GuessWhoIAm-MyGithub/My-ai-code-reviewer** to version **AI-Reviewer-V14**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-code-review-action-provider-can-vary) to find the latest changes.

## Action Summary

AI Code Reviewer is a GitHub Action that automates the code review process by leveraging AI models from OpenAI, Anthropic, or Google Gemini to provide intelligent feedback and suggestions on pull requests. It helps improve code quality and saves developers' time by generating contextual comments and recommendations, with the ability to filter out specific files and customize AI providers, models, and endpoints. This action is easy to integrate into GitHub workflows, making it a powerful tool for streamlining code review tasks.

## What's Changed

- chore: upgrade action runtime from node20 to node24 (12fc75c)
- fix: refine severity level definitions with trigger condition and impact scope (e8b4c44)
- feat: add severity levels to review output and expand review dimensions (6921846)
- feat: make max_tokens configurable via action input, default 16384 (e932a95)
- fix: use streaming API for Anthropic to support large max_tokens (1e6c5ae)
- feat: increase max_tokens to 30000 for all providers (081e75a)
- feat: increase max_tokens from 8192 to 10000 for all providers (152c17a)
- feat: add file context window and review dimensions to code review prompt (e9b7619)
- fix: handle model preamble text before JSON in Chinese prompt responses (1c5a783)
- build: repackage dist with Chinese prompt translations (568b65f)
