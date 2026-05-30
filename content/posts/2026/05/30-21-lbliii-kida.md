---
title: Kida Report
date: 2026-05-30 21:46:03 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.10.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.10.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a Python library that provides a robust component model for creating reusable and type-safe templates in HTML, Markdown, terminal output, and CI reports. It automates tasks like static validation, error handling, and scoped state management, enabling developers to catch template issues (e.g., type mismatches, missing parameters) at build time rather than runtime. Key features include typed props, named and conditional slots, co-located styles, error boundaries, and integration with popular frameworks like Flask, Django, and FastAPI, making it ideal for building dynamic, maintainable templates across various surfaces.

## What's Changed

# v0.10.0

**Released** 2026-05-30.

Kida 0.10.0 is a focused diagnostics release. It gives framework debug pages a
structured error payload for undefined values, tightens source attribution across
optimized and streaming render paths, and keeps the broader large-app roadmap out
of this release until its public contracts are ready.

## Added

- **Structured undefined diagnostics** - `UndefinedError.to_diagnostic()` returns
  a surface-neutral payload with code, kind, location, source snippet, ordered
  hints, docs URL, metadata, template stack, and component stack.
- **HTML and Markdown diagnostic renderers** - The diagnostic payload can render
  escaped HTML fragments/pages or GitHub-flavored Markdown without downstream
  frameworks parsing terminal-formatted exception strings.

## Fixed

- **Optimized templates keep source locations** - F-string coalescing preserves
  the template line marker used by undefined diagnostics, so optimized output
  still points at the source line users can edit.
- **Imported component slot failures point at caller source** - Errors raised
  inside slot bodies passed to imported components now report the caller template
  as the primary diagnostic location while retaining component-stack context.
- **Streaming runtime errors match full render diagnostics** - Generic Python
  exceptions raised during streaming are wrapped with template name and line
  information consistently with full render.

## Upgrade Notes

1. Framework debug pages should prefer `UndefinedError.to_diagnostic()` over
   parsing `str(exc)` or `format_compact()`.
2. If a test expected raw exceptions from async streaming, update it to assert
   `TemplateRuntimeError` and inspect `__cause__` for the original exception.
3. If you maintain compiler AST snapshots, regenerate them for the coalescing
   line-marker contract.

## Why this change

Kida's diagnostic strings are optimized for terminal output. Frameworks need the
same facts as plain data so they can render their own debug UI safely. This
release makes undefined errors inspectable without scraping styled terminal
text, and it closes a few attribution gaps that made optimized or streaming
renders harder to debug than full renders.

