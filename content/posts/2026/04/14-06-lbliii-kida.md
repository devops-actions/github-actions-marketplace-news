---
title: Kida Report
date: 2026-04-14 06:38:46 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.6.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.6.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a Python-based framework for creating HTML templates with modern frontend features like typed properties, named slots, scoped state, and error boundaries, all without requiring JavaScript or a build step. It automates tasks such as static validation, component discovery, and introspection, enabling efficient template creation and debugging with compile-time checks. Key capabilities include support for reusable components, context propagation, co-located styles, streaming, and scalability across multiple threads in Python 3.14.

## What's Changed


# v0.6.0

**Released** 2026-04-13.

Kida 0.6.0 evolves Kida from a template engine into a component framework with full def introspection, typed prop validation, and the `kida components` CLI. This release also adds the `kida readme` auto-generator and closes dozens of silent-failure and missing-validation sharp edges.

## Added

- **Component framework** — Def introspection API (`DefMetadata`, `DefParamInfo`, `list_defs`,
  `def_metadata`), component call stack in error reporting, `kida components` CLI command, type-aware
  prop validation with `TypeMismatch` diagnostics, Components Guide and Jinja2-vs-Kida comparison
  docs. (#90)
- **`kida readme` CLI** — Auto-generates README.md from project metadata (pyproject.toml, filesystem,
  git). Ships 4 preset templates (default, minimal, library, cli) with `--set` overrides and `--json`
  debug mode. (#89)

## Fixed

- **Sandbox `max_output_size` enforcement** — Was declared but never checked; now enforced. (#91)
- **Block capture rejection** — `{% set x %}...{% endset %}` block capture rejected at parse time. (#91)
- **Error codes for all SecurityError raises** — K-SEC-001 through K-SEC-005. (#91)
- **Autoescape validation at construction** — Invalid mode rejected at `Environment()` creation. (#91)
- **Structured errors** — All bare `RuntimeError` raises replaced with `TemplateRuntimeError`. (#91)
- **Optional chaining display** — `?.` renders `""` instead of `"None"` in display context. (#91)
- **Broken `except` clauses** — Fixed 32 `except X, Y:` clauses (Python 2 syntax). (#92)
- **`render_with_blocks()` validation** — Unknown block names raise with did-you-mean suggestions. (#92)
- **Unknown compiler node types** — Now raises instead of silently ignoring. (#92)
- **CLI check error reporting** — Errors no longer swallowed silently. (#92)
- **`_Undefined.get()` API** — Fixed to match expected semantics. (#92)

## Changed

- **New warnings** — `PrecedenceWarning` (K-WARN-001), `CoercionWarning`, and `MigrationWarning`
  (K-WARN-002) for common migration traps and silent coercion. (#91)
- **`strict_undefined` mode** — Opt-in `Environment(strict_undefined=True)` for catching attribute
  typos at render time. (#92)
- **`UndefinedError` context** — Attribute/key lookups now say "Undefined attribute/key" instead of
  "Undefined variable". (#92)
- **ErrorCode coverage** — Pushed from 21 to 73+ raise sites with docs for all 38 ErrorCode
  values. (#91)

## Upgrade Notes

1. No breaking changes. Drop-in upgrade from 0.5.x.
2. New warnings (`PrecedenceWarning`, `CoercionWarning`, `MigrationWarning`) may surface in code that previously ran silently. These are Python warnings and can be filtered with `warnings.filterwarnings`.
3. GitHub Action version tag updated to `@v0.6.0`.

## Links

- [PyPI](https://pypi.org/project/kida-templates/)
- [GitHub](https://github.com/lbliii/kida)
- [Full Changelog](https://github.com/lbliii/kida/blob/main/CHANGELOG.md)

