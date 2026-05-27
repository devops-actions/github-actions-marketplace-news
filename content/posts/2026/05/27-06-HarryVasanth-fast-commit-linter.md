---
title: Fast Commit Linter
date: 2026-05-27 06:34:19 +00:00
tags:
  - HarryVasanth
  - GitHub Actions
draft: false
repo: https://github.com/HarryVasanth/fast-commit-linter
marketplace: https://github.com/marketplace/actions/fast-commit-linter
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/HarryVasanth/fast-commit-linter** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/fast-commit-linter) to find the latest changes.

## Action Summary

The **Fast Conventional Commit Linter** is a lightweight GitHub Action designed to validate pull request titles and commit messages against the Conventional Commits specification. It automates the enforcement of consistent commit message formatting, ensuring clear and standardized versioning practices, while optimizing performance with dependency-free, native execution. Key features include instant execution, bot account exclusion, support for custom commit types and breaking change syntax, and the ability to lint both PR titles and individual commit messages.

## What's Changed

## ✅ Fast Conventional Commit Linter v1.0
### 🎉 Initial Release: Blazing Fast Commit Linting (2026-05-26)

### 🚀 Features
- **Zero-Dependency Execution**: Created a lightweight PR title and commit message linter that requires absolutely no NPM/Node.js downloads or Docker container initialization.
- **[NEW] Dynamic Type Generation**: Added the `allowed_types` input. Users can simply pass a comma-separated list of types (e.g., `feat,fix,wip`) and the action automatically compiles a safe Regex pattern.
- **[NEW] Bot Evader**: Added the `ignore_bots` boolean flag (defaults to `true`). Automatically detects `dependabot`, `renovate`, or generic `[bot]` actors and skips validation so automated PRs don't block pipelines.
- **[NEW] Breaking Change Syntax**: Fully integrated support for the Conventional Commits `!` syntax to denote breaking changes (e.g., `feat(core)!: drop legacy support`).
- **[NEW] Multi-Linting**: Added support for validating both the PR title and an arbitrary, newline-separated list of individual commit messages in a single run.

### 🛠️ Optimizations
- **Native Bash Regex Matching**: Eliminated the use of external tools like `grep` or `sed` inside subshells. Validation uses Bash's native `=~` operator, dropping execution time to fractions of a millisecond.
- **Security & Reliability**: Script is strictly ShellCheck compliant, utilizes `set -euo pipefail` to catch unhandled errors, and safely handles multiline string interpolation.
