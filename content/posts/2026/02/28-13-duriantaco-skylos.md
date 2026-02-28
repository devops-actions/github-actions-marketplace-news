---
title: Skylos - Python SAST & Dead Code Detection
date: 2026-02-28 13:25:34 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection
version: v3.5.1
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v3.5.1**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-python-sast-dead-code-detection) to find the latest changes.

## Action Summary

Skylos is a privacy-first static analysis tool (SAST) designed for Python, TypeScript, and Go, offering advanced dead code detection, security vulnerability scanning, and code quality analysis. It automates tasks such as identifying unused code, finding security issues (e.g., SQL injection, secrets), and enforcing quality gates in CI/CD workflows. With its hybrid engine combining AST analysis and optional AI-powered insights, Skylos minimizes false positives, detects complex logic errors, and integrates seamlessly into development pipelines.

## Release notes

## [3.5.1] - 2026-02-28

### Added
- TypeScript analysis 6.7x faster — batched ~77 per-file tree-sitter queries into 3-4 module-level compiled queries
- SKY-D245 (HIGH): Dynamic `require()` with variable argument
- SKY-D246 (HIGH): `jwt.decode()` without verification
- SKY-D247 (MEDIUM): CORS wildcard origin `cors({ origin: '*' })`
- SKY-D248 (MEDIUM): Hardcoded internal URL (`localhost`/`127.0.0.1`)
- SKY-D250 (MEDIUM): Insecure randomness — `Math.random()` usage
- SKY-D251 (HIGH): Sensitive data in logs — passwords/tokens passed to `console.log()`
- SKY-D252 (MEDIUM): Insecure cookie — missing `httpOnly`/`secure` flags
- SKY-D253 (MEDIUM): Timing-unsafe comparison of secrets via `===`/`==`
- SKY-D270 (MEDIUM): Sensitive data in `localStorage`/`sessionStorage` — tokens, passwords, API keys
- SKY-D271 (MEDIUM): Error info disclosure — `error.stack`/`.sql` sent in HTTP response
- SKY-D510 (HIGH): Prototype pollution via `__proto__` access
- SKY-Q305 (MEDIUM): Duplicate condition in if-else-if chain
- SKY-Q402 (MEDIUM): `await` inside for/while loop
- SKY-UC002 (MEDIUM): Unreachable code after return/throw/break/continue
- Shannon entropy-based secret detection for high-entropy strings (enhances SKY-S101)
- Parser object caching for TypeScript and TSX grammars
- Smarter attribute resolution — fallback matching for instance methods and polymorphic calls
- `__init__.py` re-export and import chain tracking
- Exported class methods automatically marked as public API
- `nonlocal` variable handling and tuple unpacking underscore convention
- Sphinx `conf.py` and docs theme files excluded
- Expanded Django and DRF framework dictionaries (admin attrs, form/serializer field methods, more base classes, template tag decorators)
- `threading.Thread.run()` overrides suppressed
- Test classes and mock objects in test files suppressed
- Score badge auto-copied to clipboard
- Added new Go Language

### Fixed
- TUI category list is now focusable again
