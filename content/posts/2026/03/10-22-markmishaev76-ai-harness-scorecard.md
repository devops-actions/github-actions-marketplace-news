---
title: AI Harness Scorecard
date: 2026-03-10 22:03:48 +00:00
tags:
  - markmishaev76
  - GitHub Actions
draft: false
repo: https://github.com/markmishaev76/ai-harness-scorecard
marketplace: https://github.com/marketplace/actions/ai-harness-scorecard
version: v1.1.0
dependentsNumber: "3"
actionType: Composite
---


Version updated for **https://github.com/markmishaev76/ai-harness-scorecard** to version **v1.1.0**.
- This action is used across all versions by **3** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-harness-scorecard) to find the latest changes.

## Action Summary

The **AI Harness Scorecard** GitHub Action assesses a repository's engineering safeguards to ensure reliable and safe AI-assisted development. It automates the evaluation of key areas such as architectural documentation, mechanical constraints, testing practices, code review enforcement, and AI-specific safeguards, providing a comprehensive grade and actionable insights. This tool helps teams identify gaps, improve their development processes, and ensure that AI-generated code adheres to high-quality standards.

## Release notes

## AI Harness Scorecard v1.1.0

### New Features

- **Java ecosystem support**: linting detection, formatting via Spotless and Checkstyle, dependency auditing, and property-based testing checks
- **Java fuzz testing**: detect Jazzer/jazzer-junit in Gradle projects
- **Kotlin support**: Gradle Spotless detection now covers Kotlin projects
- **Package manager script resolution**: CI linter check now resolves `npm run`, `yarn`, `pnpm`, and `bun` scripts to their underlying commands
- **Resources knowledge base**: curated collection of papers, books, talks, and specs behind the scorecard's methodology

### Bug Fixes

- Formatter enforcement check no longer incorrectly treats `checkstyle.xml` as a formatter
- JSON script loading is more robust with better error handling
- Scorecard workflow uses `create-pull-request` for reliable updates

### Maintenance

- Pre-commit hooks added (ruff, mypy, custom hooks on push)
- GitHub Actions bumped: `actions/checkout` v6, `actions/setup-python` v6, `actions/upload-artifact` v7, `peter-evans/create-pull-request` v8
- Type-hint-only imports moved into `TYPE_CHECKING` blocks
- Check development guide added to CONTRIBUTING.md

### Usage

```yaml
- uses: markmishaev76/ai-harness-scorecard@v1
  id: scorecard
```

Users on `@v1` automatically get this update.
