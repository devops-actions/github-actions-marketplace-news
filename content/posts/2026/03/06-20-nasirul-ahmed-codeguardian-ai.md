---
title: CodeGuardian AI
date: 2026-03-06 20:58:02 +00:00
tags:
  - nasirul-ahmed
  - GitHub Actions
draft: false
repo: https://github.com/nasirul-ahmed/codeguardian-ai
marketplace: https://github.com/marketplace/actions/codeguardian-ai
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/nasirul-ahmed/codeguardian-ai** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codeguardian-ai) to find the latest changes.

## Action Summary

CodeGuardian AI is a GitHub Action that automates code reviews for pull requests using OpenAI's GPT models and customizable rules. It identifies and comments on bugs, security vulnerabilities, performance issues, and code smells directly in the code, while also providing a summary of findings and recommendations. This action streamlines the code review process, improves code quality, and helps maintain secure, efficient, and well-structured codebases.

## Release notes

## ✨ What's New
**1. Multiple AI Providers**
You can now select your preferred AI provider via the ```ai.provider``` setting in ```.review.config.json```.
Supported providers: openai (default previously) and puter (now the default).
A factory function (```ai/factory.js```) dynamically loads the correct provider, making it easy to add more providers in the future.

**2. Provider‑Specific Prompts**
Each provider can have its own tailored prompt template, stored under ```ai.prompt.{provider}```.
This allows you to optimise instructions for the strengths of each AI service.
Example: The puter prompt now explicitly instructs the AI to return only raw JSON (no markdown, no code fences), which improves reliability.

**3. Improved Configuration Structure**
The old ```ai.promptTemplate``` has been replaced by ```ai.prompt.openai``` and ```ai.prompt.puter```. For backward compatibility, the default OpenAI prompt remains the same.

**4. Default Provider Change**
The default provider is now puter. If you haven't specified a provider, your reviews will use Puter's AI.
Why? Puter offers a more streamlined JSON‑only response, reducing parsing errors.
To revert to OpenAI, simply set "provider": "openai" in your config.

**5. Enhanced Prompt for Puter (puter.js)**
The Puter prompt now strictly enforces JSON output with no extra text. This eliminates the occasional malformed responses that could break the action.

**6. Internal Refactoring**
Created ai/factory.js to centralise provider instantiation.
Also defined separate providers ```/ai/providers/puter.js``` and ```/ai/providers/openai.js```
Removed ``gptAnalyzer.js`` and same code moved to ```/ai/providers/openai.js```
Cleaner separation of concerns, making the codebase more maintainable and testable.

## 🐛 Bug Fixes
Fixed crash issue.

## 📚 Documentation Updates
Updated README.md with:

New configuration options (ai.provider, ai.prompt).

Examples for both OpenAI and Puter setups.

Clarified how to switch providers.
