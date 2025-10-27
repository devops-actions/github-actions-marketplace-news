---
title: Changelog Bot Runner Nyaomaru
date: 2025-10-27 09:01:06 +00:00
tags:
  - nyaomaru
  - GitHub Actions
draft: false
repo: https://github.com/nyaomaru/changelog-bot
marketplace: https://github.com/marketplace/actions/changelog-bot-runner-nyaomaru
version: v0.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/nyaomaru/changelog-bot** to version **v0.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/changelog-bot-runner-nyaomaru) to find the latest changes.

## Release notes

## 🚀 Initial Release

The first public release of **changelog-bot**. It's a CLI & GitHub Action that automates changelog generation and PR creation from your Git history.

This early version aims to streamline the release workflow by generating human-readable changelogs using both conventional commits and LLM-based summaries.

### ✨ Features

- **CLI**: Generate changelogs directly from your terminal (`npx @nyaomaru/changelog-bot`).
- **GitHub Action**: Drop-in workflow for automatic changelog PRs on new releases.
- **AI integration (optional)**: Use OpenAI or Anthropic to produce tone-aware summaries.
- **Heuristic fallback**: Works fully offline or without API keys.
- **Duplicate detection**: Prevents multiple inserts for the same version.
- **Compare links auto-update**: Ensures all release references stay current.
- **CI-friendly**: Zero setup required, supports dry-run and base-branch configuration.

### ⚙️ Configuration

- Supports `.env` for `OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, and `GITHUB_TOKEN`.
- Exposes options like:
  - `--release-tag`
  - `--release-name`
  - `--base-branch`
  - `--changelog-path`
  - `--provider`
    and more.

### 🧩 Developer Experience

- Built with **TypeScript** and **pnpm**.
- Managed via **mise** toolchain (`node 22`, `pnpm 10`).
- Includes lint, build, test, and QA tasks for contributor consistency.

### ⚠️ Early-stage notice

> [!IMPORTANT]
> This is an early-stage (`v0.0.1`) release.
> APIs, CLI flags, and output formats may change before the first major version (`v1.0.0`).
> If you integrate it into production workflows, please **pin the version** to avoid breaking changes.

## New Contributors
* @nyaomaru made their first contribution in https://github.com/nyaomaru/changelog-bot/pull/1

**Full Changelog**: https://github.com/nyaomaru/changelog-bot/commits/v0.0.1
