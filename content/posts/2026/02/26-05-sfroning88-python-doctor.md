---
title: Python Doctor for Monorepos
date: 2026-02-26 05:44:13 +00:00
tags:
  - sfroning88
  - GitHub Actions
draft: false
repo: https://github.com/sfroning88/python-doctor
marketplace: https://github.com/marketplace/actions/python-doctor-for-monorepos
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sfroning88/python-doctor** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/python-doctor-for-monorepos) to find the latest changes.

## Action Summary

Python Doctor for Monorepos is a GitHub Action designed to provide static analysis for Python monorepo applications by running lightweight tools on changed files within pull requests. It automates linting, type checking, security scanning, dead code detection, complexity analysis, and SQL and Markdown linting, generating a 0–100 health score with actionable diagnostics posted as comments on PRs. This tool helps streamline code reviews, improve code quality, and identify potential issues efficiently in large, multi-project repositories.

## Release notes

Initial release of **PYTHON DOCTOR** — static analysis **GitHub Action** for `Python` monorepos.

### Tools

- `Ruff` (lint + style)
- `mypy` (type checking)  
- `Bandit` (security)
- `Vulture` (dead code)
- `Radon` (complexity)
- `SQLFluff` (SQL/PostgreSQL)
- `markdownlint`

### Usage

See `README.md` for full input/output reference and monorepo example.
