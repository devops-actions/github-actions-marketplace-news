---
title: GHAGGA Code Review
date: 2026-03-23 21:41:23 +00:00
tags:
  - JNZader
  - GitHub Actions
draft: false
repo: https://github.com/JNZader/ghagga
marketplace: https://github.com/marketplace/actions/ghagga-code-review
version: v2.7.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/JNZader/ghagga** to version **v2.7.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ghagga-code-review) to find the latest changes.

## Action Summary

GHAGGA is an AI-powered code review tool that automates the review of pull requests by combining large language model (LLM) analysis, 16 static analysis tools, and a project memory system that learns from past reviews. It identifies issues, provides actionable feedback, and supports various configurations, including self-hosted, CLI, and GitHub Action modes. By streamlining code review processes, GHAGGA improves code quality, reduces manual effort, and enhances collaboration with intelligent and secure review capabilities.

## Release notes

## What's Changed

### Bug Fixes
- **fix(providers): use openai-compatible for GitHub Models** — AI SDK v6 sends to `/responses` which GitHub Models doesn't support. Switched to `createOpenAICompatible` which uses `/chat/completions`.
- **fix(memory): handle CJS/ESM interop for fts5-sql-bundle** — Default import of CJS module returned the module object instead of `initSqlJs` function.
- **fix(cli): embed GitHub App Client ID for login** — Was empty string default, causing 404 on OAuth device flow.
- **chore(cli): add fts5-sql-bundle as direct dependency** — Ensures SQLite memory works with `npm install -g`.

### Tests
- **53 pipeline integration tests** (from 4 original) covering all review modes, validation, provider paths, blast radius, enhance, and progress events
- **Pipeline.ts**: 55.89% → 89.51% line coverage, 43.18% → 65.9% branch coverage
- **Agents**: 80.46% → 91.4% line coverage
- **simple.ts mutation score**: 52.48% → 65.96% (above 60% threshold)
- **5,724 tests** across all packages, all passing

### Ecosystem
- Removed redundant `ci-local/` copy

**Full Changelog**: https://github.com/JNZader/ghagga/compare/v2.6.0...v2.7.0
