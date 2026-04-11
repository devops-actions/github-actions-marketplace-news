---
title: Kida Report
date: 2026-04-11 06:26:46 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.4.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.4.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a high-performance template engine that compiles templates to Python AST, enabling rendering to multiple outputs such as HTML, terminal, markdown, and CI reports. It automates repetitive tasks like generating test summaries and PR comments from tool outputs (e.g., pytest, coverage) and supports advanced templating features like inheritance, pattern matching, and streaming. With built-in scalability and support for free-threaded Python, Kida simplifies dynamic content generation across diverse environments.

## What's Changed


# v0.4.1

**Released** 2026-04-10.

Kida 0.4.1 is a patch release with two bug fixes for the partial evaluator and scoped slot bindings
introduced in v0.4.0.

## Fixed

- **Partial evaluator folds all static_context types** — Dicts, lists, and custom objects from
  `static_context` are now correctly folded at compile time. Types that Python's `compile()` rejects
  in `ast.Constant` nodes are emitted as precomputed module-level bindings (`_pc_N`), injected into
  the exec namespace at template load time. (#68)
- **Scoped slot `let:` bindings with repeated references** — `let:` binding variables that appear
  more than once in a slot body no longer raise `UndefinedError`. The CSE optimisation previously
  hoisted the variable lookup to function entry, before `_slot_kwargs` were pushed onto the scope
  stack. Slot bodies are now excluded from eager caching. (#70)

## Upgrade Notes

1. No breaking changes. Drop-in upgrade from 0.4.0.
2. GitHub Action version tag updated to `@v0.4.1`.

## Links

- [PyPI](https://pypi.org/project/kida-templates/)
- [GitHub](https://github.com/lbliii/kida)
- [Full Changelog](https://github.com/lbliii/kida/blob/main/CHANGELOG.md)

