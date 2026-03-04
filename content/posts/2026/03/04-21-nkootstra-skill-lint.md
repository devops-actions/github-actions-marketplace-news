---
title: Skill Lint
date: 2026-03-04 21:27:28 +00:00
tags:
  - nkootstra
  - GitHub Actions
draft: false
repo: https://github.com/nkootstra/skill-lint
marketplace: https://github.com/marketplace/actions/skill-lint
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/nkootstra/skill-lint** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-lint) to find the latest changes.

## Action Summary

Skill Lint is a GitHub Action designed to automate the evaluation, benchmarking, and improvement of AI agent skills defined in skill files within pull requests. It performs a comprehensive analysis pipeline—including linting, evaluation, benchmarking, A/B comparison, and improvement suggestions—and provides detailed feedback as PR comments and check statuses. This action streamlines the process of testing, validating, and optimizing AI agent skills, ensuring high-quality performance and efficiency.

## Release notes

## 🎉 Initial Release

Skill Lint v1.0.0 is the first stable release of the GitHub Action that evaluates, benchmarks, and refines agent skills on pull requests.

## ✨ Features

### Comprehensive Skill Evaluation Pipeline
- **Lint** — Static analysis of skill structure (name, description, routing table, orphaned references)
- **Eval** — Run test cases against the LLM with hard constraints and LLM-as-judge scoring
- **Benchmark** — Compute pass rate, token usage, and latency metrics
- **A/B Compare** — Compare head vs base branch performance to detect regressions
- **Suggest** — Auto-generate improvement recommendations for skills

### Multi-Provider Support
- **Anthropic** — Native support with Sonnet, Opus, and other Claude models
- **OpenAI** — Full support for GPT-4o, GPT-4, and other OpenAI models
- **Claude Code** — Direct integration with Claude GitHub App (Max/Pro subscription)
- **LiteLLM** — Custom proxy support for any model or on-premise deployment

### GitHub Integration
- Posts detailed evaluation results as PR comments
- Sets check status for pass/fail with breakdown by skill
- Supports multiple skills per PR
- Non-blocking evaluations (can be made advisory via config)

### Marketplace Ready
- Published to GitHub Marketplace
- Ready for one-click installation in any repository
- Configurable via `.skill-lint.yml`
- Works out-of-the-box with sensible defaults

## 📦 What's Included

- **Action runtime** — Node.js 20 bundled with all dependencies
- **Evaluation engine** — Full linting, testing, and benchmarking pipeline
- **CLI & configuration** — `.skill-lint.yml` configuration support
- **Documentation** — Installation, provider setup, evals guide, custom rubrics, Marketplace publishing
- **Example workflows** — CI and release workflows for Marketplace updates

## 🚀 Quick Start

Add to your `.github/workflows/skill-lint.yml`:

```yaml
name: Skill Lint

on:
  pull_request:
    paths:
      - "skills/**"
      - ".skill-lint.yml"

permissions:
  contents: read
  pull-requests: write
  checks: write

jobs:
  lint-skills:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - uses: nkootstra/skill-lint@v1
        with:
          provider: anthropic
          anthropic_api_key: ${{ secrets.ANTHROPIC_API_KEY }}
```

## 📋 Requirements

- Anthropic, OpenAI, or compatible LLM API key
- Skills in standard directory structure with `SKILL.md` and optional `SKILL.eval.yml` files
- `.skill-lint.yml` configuration file (optional, uses defaults if absent)

## 📚 Documentation

- [Installation & Deployment](https://github.com/nkootstra/skill-lint/blob/main/docs/installation.md)
- [Provider Setup](https://github.com/nkootstra/skill-lint/blob/main/docs/providers.md)
- [Writing Evals](https://github.com/nkootstra/skill-lint/blob/main/docs/evals.md)
- [Custom Rubrics](https://github.com/nkootstra/skill-lint/blob/main/docs/rubrics.md)
- [Publishing to Marketplace](https://github.com/nkootstra/skill-lint/blob/main/docs/publishing.md)

## 🏭 In This Release

- Full evaluation pipeline implementation
- Multi-provider LLM support (Anthropic, OpenAI, Claude Code, LiteLLM)
- GitHub PR comment and check integration
- CLI for local skill evaluation
- Comprehensive documentation
- CI/CD workflows for automated testing and Marketplace releases
- Pre-bundled dist/ for immediate GitHub Marketplace availability

---

**License:** MIT  
**Maintainer:** [@nkootstra](https://github.com/nkootstra)
