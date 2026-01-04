---
title: PI Action
date: 2026-01-04 07:26:32 +00:00
tags:
  - cv
  - GitHub Actions
draft: false
repo: https://github.com/cv/pi-action
marketplace: https://github.com/marketplace/actions/pi-action
version: v1.2.0
dependentsNumber: "?"
---


Version updated for **https://github.com/cv/pi-action** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-action) to find the latest changes.

## Action Summary

The `pi-action` GitHub Action automates interactions with the `pi coding agent`, allowing users to trigger tasks such as code reviews or issue/PR handling through customizable comment phrases (e.g., `@pi`). It simplifies workflow automation by integrating directly with GitHub issues and pull requests, ensuring secure and controlled access for repository collaborators and enabling efficient task delegation to the `pi` agent. Key features include automatic inclusion of PR diffs for code reviews, support for multiple LLM providers, and an easy setup with no separate installation required.

## Release notes

## What's New

### 🚀 Major Changes

- **Switch to pi SDK** - Now uses the pi-coding-agent SDK directly instead of shelling out to the CLI. This provides better error handling and cleaner integration.
- **Composite action** - The action now installs its own dependencies at runtime, so you no longer need to add a separate `npm install -g @mariozechner/pi-coding-agent` step.

### 🧪 Testing

- **88% test coverage** - Comprehensive test suite with 62 tests covering all business logic
- All core modules have 100% coverage: agent, context, github, run, security

### 🏗️ Architecture

- Refactored codebase into testable modules
- Extracted orchestration logic into `run.ts` for easier testing
- Uses TypeScript compiler (tsc) instead of esbuild bundler

### 📝 Documentation

- Updated README with simplified workflow (no manual pi install needed)
- Added architecture section describing codebase structure

## Upgrade Notes

The action is backwards compatible. Update your workflow to remove the manual pi installation:

```yaml
# Before (v1.1.0)
- name: Install pi
  run: npm install -g @mariozechner/pi-coding-agent

- name: Run pi-action
  uses: cv/pi-action@v1

# After (v1.2.0) - just remove the install step!
- name: Run pi-action
  uses: cv/pi-action@v1
```

## Full Changelog

- Switch to tsc + pi SDK instead of esbuild bundling
- Fix ESM compatibility for pi-coding-agent
- Refactor: extract testable logic into modules
- Add comprehensive tests (62 tests, 88% coverage)
- Update README with simplified setup
