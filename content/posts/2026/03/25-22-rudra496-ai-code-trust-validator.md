---
title: AI Code Trust Validator
date: 2026-03-25 22:16:25 +00:00
tags:
  - rudra496
  - GitHub Actions
draft: false
repo: https://github.com/rudra496/ai-code-trust-validator
marketplace: https://github.com/marketplace/actions/ai-code-trust-validator
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/rudra496/ai-code-trust-validator** to version **v0.4.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-code-trust-validator) to find the latest changes.

## Action Summary

The **AI Code Trust Validator** is a GitHub Action that analyzes AI-generated code to identify and address security vulnerabilities, logic errors, hallucinations, dependency issues, and technical debt across Python, JavaScript, and TypeScript. It automates tasks like security scanning, code validation, test generation, and providing AI-powered auto-fixes, enabling developers to ensure code quality and reliability before deploying to production. Additionally, it offers detailed reports, continuous monitoring, and integrations with Docker, CI/CD pipelines, and popular IDEs to streamline code review workflows.

## Release notes

## 🚀 What's New in v0.4.0

### JavaScript/TypeScript Support
- **Multi-language validation** - Now supports `.js`, `.jsx`, `.ts`, `.tsx`, `.mjs`, `.mts` files
- **JS Security Analyzer** - Detects eval(), innerHTML XSS, prototype pollution, command injection, hardcoded secrets
- **JS Hallucination Analyzer** - Detects fake npm packages, invented functions, placeholder APIs
- **TypeScript-specific checks** - @ts-ignore, any type usage, type safety issues

### AI-Powered Auto-Fix
- **Multi-provider LLM support** - OpenAI, Anthropic, Ollama, custom endpoints
- **CLI command**: `aitrust ai-fix <file> --apply`
- **Python API**: `AIAutoFixer` class and `ai_fix_code()` function
- **Configurable via environment variables** - `OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, `USE_OLLAMA`

### JetBrains Plugin
- **Complete IntelliJ/PyCharm plugin** with tool window, status bar widget, inline annotators
- **One-click AI fixes** directly in your IDE
- **Settings page** for API configuration

### CLI Updates
- New `ai-fix` command for LLM-powered fixes
- New `languages` command showing supported languages
- Multi-language validation automatic based on file extension

## 📦 Installation

```bash
pip install ai-trust-validator==0.4.0
```

## 🔗 Links

- [Documentation](https://github.com/rudra496/ai-code-trust-validator#readme)
- [PyPI](https://pypi.org/project/ai-trust-validator/)
- [VS Code Extension](vscode-extension/)
- [JetBrains Plugin](jetbrains-plugin/)

## 🙏 Thanks

Thanks to all contributors and users! If this helps you, please ⭐ the repo!

