---
title: pre-commit-uv
date: 2026-05-27 22:47:28 +00:00
tags:
  - tox-dev
  - GitHub Actions
draft: false
repo: https://github.com/tox-dev/action-pre-commit-uv
marketplace: https://github.com/marketplace/actions/pre-commit-uv
version: v1.0.4
dependentsNumber: "134"
actionType: Composite
---


Version updated for **https://github.com/tox-dev/action-pre-commit-uv** to version **v1.0.4**.

- This action is used across all versions by **134** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pre-commit-uv) to find the latest changes.

## Action Summary

This GitHub Action is designed to automate the execution of pre-commit hooks using the `pre-commit-uv` tool. It simplifies the setup and management of `pre-commit` by handling tasks like cloning code, installing `uv` if necessary, and configuring the `pre-commit` cache. The action supports auto-detection of the appropriate execution method (`uv run` or `uvx`) based on the project's configuration and allows customization for specific hooks or arguments, streamlining code quality checks and enforcing consistent development practices.

## What's Changed

Update to node24-compatible dependencies (actions/cache v5, astral-sh/setup-uv v8.1.0)
