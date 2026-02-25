---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-02-25 13:27:20 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.4.3
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.4.3**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a hybrid static analysis tool designed for Python, TypeScript, and Go that detects dead code, security vulnerabilities (e.g., SQL injection, secrets leaks), and code quality issues with high precision. It combines traditional static analysis with AI capabilities to minimize false positives, identify deep logic errors, and validate findings against runtime execution. Skylos streamlines code auditing by automating tasks such as dead code detection, security scanning, and quality gating, making it an efficient solution for CI/CD pipelines and code reviews.

## Release notes

## [3.4.3] - 2026-02-25

### Added
- Multi-path CLI support — `skylos app/ tests/` analyzes all paths with deduplication
- Module-scoped f-string pattern matching (`export_*` no longer leaks across modules)
- `@abstractmethod` declarations suppressed as dead code
- Framework dictionaries for Starlette, Flask-RESTful, Tornado, Marshmallow, SQLAlchemy, Celery, Click

### Fixed
- Pattern tracker double-counting refs from redundant per-module loop
- `private_name` penalty 80→60 for correct threshold behavior at `--confidence 20`
- TUI sidebar no longer focusable by arrow keys
