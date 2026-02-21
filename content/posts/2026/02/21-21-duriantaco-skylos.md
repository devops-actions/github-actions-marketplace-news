---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-02-21 21:29:13 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.4.1
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.4.1**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a privacy-first static analysis tool for Python, TypeScript, and Go that automates the detection of dead code, security vulnerabilities (e.g., SQL injection, secrets leaks), and code quality issues. It uses a hybrid engine combining AST analysis and optional AI agents to improve precision by eliminating false positives and identifying deep logic errors missed by traditional linters. Skylos integrates seamlessly into CI/CD pipelines, providing automated code audits, inline PR reviews, and quality gates to enhance development workflows.

## Release notes

## [3.4.1] - 2026-02-21

### Added
- BFS from entry points through the import graph to eliminate false positives for code in orphaned modules
- `__getattr__` package handling and dynamic module safety for lazy-loading and `eval`/`exec` patterns
- Relative import resolution in raw import collection
- `skylos credits` command and credit check before `--upload`
- MCP server auth, rate limiting, and per-tool credit deduction

### Fixed
- `--trace --json` and `--pytest-fixtures --json` producing invalid JSON (`capture_output` logic was inverted, letting subprocess stdout leak into JSON output)

### Changed
- MCP tools now gated with auth check + credit deduction before execution
- Unreachable module definitions capped at confidence 5
