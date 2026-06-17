---
title: Smart Test Trigger
date: 2026-06-17 22:41:13 +00:00
tags:
  - Zaywoo66
  - GitHub Actions
draft: false
repo: https://github.com/Zaywoo66/Smart-test-trigger
marketplace: https://github.com/marketplace/actions/smart-test-trigger
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/Zaywoo66/Smart-test-trigger** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/smart-test-trigger) to find the latest changes.

## What's Changed

🚀 **Initial Public Release of Smart Test Trigger**

We are excited to announce the first stable release of **Smart Test Trigger** — an intelligent GitHub Action designed to drastically reduce CI execution time in Python monorepos by statically analyzing code changes and running only the affected tests.

### ✨ Key Features in v1.0.0
* **Static AST Parsing:** Safely builds a dependency graph using Python's Abstract Syntax Tree without executing any code.
* **Smart BFS Traversal:** Accurately identifies all direct and transitive test dependencies, cleanly handling circular imports.
* **Fail-Closed Fallback Engine:** Automatically defaults to a full test-suite run if critical infrastructure files (e.g., `pyproject.toml`, `Dockerfile`) are modified.
* **Zero External Dependencies:** Built with pure Python standard libraries (excluding `pytest` for internal testing), ensuring lightning-fast execution in CI environments.

### 📖 Documentation
For quick start guides, input/output definitions, and local debugging instructions, please refer to the [README.md](https://github.com/Zaywoo66/smart-test-trigger/blob/main/README.md).

*Engineered with clean code principles, strict static typing (mypy), and 100% test coverage.*
