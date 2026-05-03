---
title: vibecheck-ai-slop
date: 2026-05-03 21:30:32 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.8.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## Action Summary

**Summary:** The `vibecheck` GitHub Action is a static code analysis tool designed to identify and flag common issues and vulnerabilities, particularly those often introduced by AI-generated code. It scans codebases for problems like hardcoded secrets, improper error handling, poor code quality, and AI-specific "code smells," helping developers improve security, maintainability, and overall code quality. The tool operates with zero configuration, no API keys, and minimal setup, making it a fast and accessible solution for maintaining clean, secure, and reliable code.

## What's Changed

## What's new

**`no-unused-protocol`** — flags Python `Protocol` classes that are defined but never referenced anywhere in the file. Catches AI ghost scaffold from a previous iteration: the model defines a `Protocol` for an approach it was about to take, then changes direction, and the type just sits there forever. eslint and ruff miss it because they don't follow type-only references properly.

This rule was requested by a Reddit user who described the exact pattern they kept seeing in cursor/copilot generated python code.

### Handles

- `class Foo(Protocol):`
- `class Foo(Generic[T], Protocol):`
- `class Foo(typing.Protocol):`
- Multi-base classes with `Protocol` anywhere in the base list

### Exemptions

- Files with `__all__` are checked precisely: a `Protocol` is exempt only if its name appears in the `__all__` list (so cross-file public API surfaces don't false-positive). Other protocols in the same file are still scanned.

### Severity

`info` (conservative for v1, since regex-based single-file analysis can't see cross-file usage in repos that don't use `__all__`).

## Other

- Total rule count: 34 → 35
- 6 new tests covering the rule
- README updated with the new rule + 2 previously undocumented Python rules (`no-py-stub-function`, `no-py-hedging-comments`)

## Install

```bash
npm install -g @yuvrajangadsingh/vibecheck@1.8.0
# or
npx @yuvrajangadsingh/vibecheck@latest .
```

**Full Changelog**: https://github.com/yuvrajangadsingh/vibecheck/compare/v1.7.1...v1.8.0
