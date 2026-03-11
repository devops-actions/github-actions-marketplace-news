---
title: VibeAudit QA
date: 2026-03-11 05:54:30 +00:00
tags:
  - LarsCanGit
  - GitHub Actions
draft: false
repo: https://github.com/LarsCanGit/VibeAudit
marketplace: https://github.com/marketplace/actions/vibeaudit-qa
version: V0.1.2b
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/LarsCanGit/VibeAudit** to version **V0.1.2b**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibeaudit-qa) to find the latest changes.

## Action Summary

VibeAudit is a GitHub Action and command-line tool designed to perform pre-push quality assurance checks for AI-generated or manually written code. It automates stack-specific validation processes such as compilation, linting, dependency audits, and testing, providing structured, agent-readable output to help ensure code quality and prevent errors before deployment. By auto-detecting project types and running appropriate checks, it streamlines CI pipelines and assists both developers and AI tools in identifying and addressing issues efficiently.

## Release notes

Initial public release.

Pre-push QA for AI-generated code. Automatically runs compile, lint, and test checks before code reaches production.

- Node/JS: ESLint, npm audit, test runner
- Android/Kotlin: compile (AGP version-agnostic), lint, ktlint, tests
- Auto-detects project type — no config needed
- Agent-readable JSON output for Claude Code / Cursor self-correction
- GitHub Action included

Install: npm install -g @lmhansen/vibeaudit
