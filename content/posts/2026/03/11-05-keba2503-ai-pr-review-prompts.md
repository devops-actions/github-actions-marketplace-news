---
title: AI PR Review Prompts
date: 2026-03-11 05:54:44 +00:00
tags:
  - keba2503
  - GitHub Actions
draft: false
repo: https://github.com/keba2503/ai-pr-review-prompts
marketplace: https://github.com/marketplace/actions/ai-pr-review-prompts
version: v2.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/keba2503/ai-pr-review-prompts** to version **v2.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-pr-review-prompts) to find the latest changes.

## Action Summary

This GitHub Action, **ai-pr-review-prompts**, provides automated AI-powered reviews for pull requests, offering structured feedback on code changes. It integrates with AI providers like Anthropic, OpenAI, and Google to analyze diffs and post reviews directly on PRs, addressing areas such as code quality, security, performance, and architecture. By automating the code review process, it improves developer workflows, reduces manual effort, and ensures consistent, high-quality feedback across repositories.

## Release notes

Automated AI-powered PR reviews as a GitHub Action.

### What's new

- **GitHub Action** — add a workflow file to any repo and get AI reviews on every PR automatically
- **Multi-provider** — supports Anthropic (Claude), OpenAI (GPT), and Google (Gemini)
- **24 review types** across 7 categories + 3 combo prompts
- **Configurable** — choose model, review type, diff size limit, and output mode
- **Bilingual README** — English and Spanish

### Quick start

```yaml
- uses: keba2503/ai-pr-review-prompts@v2
  with:
    provider: "anthropic"
    api-key: ${{ secrets.ANTHROPIC_API_KEY }}
    review-type: "full"
```

### Review types

**Combos:** full, frontend, backend
**Code quality:** typescript, python, go, rust, general
**Security:** security, security-auth, security-api
**Performance:** performance, performance-react, performance-database, performance-api
**Architecture:** architecture, architecture-patterns, architecture-complexity
**Testing:** testing, testing-quality
**Other:** accessibility, naming, documentation

See [README](https://github.com/keba2503/ai-pr-review-prompts#readme) for full documentation.
