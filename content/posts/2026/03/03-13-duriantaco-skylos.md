---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-03-03 13:34:48 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.4
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.4**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a static analysis tool designed for Python, TypeScript, and Go, offering advanced capabilities to detect dead code, security vulnerabilities, and code quality issues with high precision. It combines traditional AST analysis with AI-powered options to minimize false positives, handle framework-specific patterns, and identify deep logic bugs that conventional linters may miss. Skylos automates tasks such as runtime verification, security auditing, and quality gates in CI/CD pipelines, providing developers with actionable insights to improve code reliability and security.

## Release notes

## [3.5.4] - 2026-03-03

### Added
- LLM now generates code-level fix suggestions. It shows the problematic code snippet and the corrected version with 2 lines of context before/after
- PR inline comments render vulnerable code and fixed code in fenced code blocks
- PR summary "Top Issues" section uses collapsible `<details>` blocks for code fixes
- Fallback to rule-based text suggestions (`_RULE_SUGGESTIONS`) when LLM is not used

### Fixed
- Phase 3 matching: findings without `rule_id` (dead code) now match by line number alone
- `_merge_llm_findings` passes through `vulnerable_code` and `fixed_code` fields
