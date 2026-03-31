---
title: Pro PR Reviewer
date: 2026-03-31 22:12:22 +00:00
tags:
  - propstreet
  - GitHub Actions
draft: false
repo: https://github.com/propstreet/reviewer
marketplace: https://github.com/marketplace/actions/pro-pr-reviewer
version: v3.6.0
dependentsNumber: "3"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/propstreet/reviewer** to version **v3.6.0**.

- This action is used across all versions by **3** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pro-pr-reviewer) to find the latest changes.

## Action Summary

The "AI Pull Request Reviewer" GitHub Action leverages Azure OpenAI to automatically analyze pull request diffs, generate AI-powered code review feedback, and post inline comments directly on the pull request. It streamlines the code review process by identifying potential issues, supporting custom review instructions, excluding specific files, and managing long-running requests. This action helps automate code quality checks, saving time and improving collaboration in software development workflows.

## What's Changed

### Added
- **`none` reasoning effort level** — Disables reasoning for gpt-5.1+ models (fastest responses). Legacy `minimal` (gpt-5 only) still accepted.

### Fixed
- **Background polling resilience** — Non-terminal whitelist ensures unknown statuses fail fast instead of polling until timeout.
- **Unknown terminal status handling** — Clear error for unexpected statuses in `handleCompletedResponse`.

### Changed
- **GitHub Actions runtime** — node20 → node24.
- **Updated dependencies** — `openai` 6.27→6.33, `vitest` 4.0→4.1, `typescript-eslint` 8.56→8.58, and others.

See [CHANGELOG.md](./CHANGELOG.md) for full details.
