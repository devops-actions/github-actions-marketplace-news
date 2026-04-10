---
title: Kida Report
date: 2026-04-10 06:33:38 +00:00
tags:
  - lbliii
  - GitHub Actions
draft: false
repo: https://github.com/lbliii/kida
marketplace: https://github.com/marketplace/actions/kida-report
version: v0.3.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/lbliii/kida** to version **v0.3.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/kida-report) to find the latest changes.

## Action Summary

Kida is a versatile template engine that compiles templates into Python Abstract Syntax Trees (AST) for rendering content in HTML, terminal, Markdown, and CI reports, with support for multi-core scaling. It simplifies the process of generating dynamic content and automates tasks like creating step summaries and pull request comments in GitHub Actions using built-in templates for popular tools like pytest, coverage, and ruff. Key features include template inheritance, components, pattern matching, streaming, and integration with modern Python features like null safety and free-threading.

## What's Changed


# v0.3.4

**Released** 2026-04-09.

Kida 0.3.4 adds parent-to-child render context with `provide`/`consume`, fixes the `~` operator
to preserve Markup safety, and ships agentic comment templates for the GitHub Action.

## Highlights

- **`provide`/`consume` render context** — Pass state from parent components to children across slot boundaries without prop drilling.
- **Markup-aware `~` operator** — Concatenating `Markup` values no longer double-escapes HTML.
- **Agentic comment templates** — GitHub Action gains release notes rendering across multiple surfaces.

## Added

### Components

- **`provide`/`consume` primitives** — `{% provide key = expr %}` sets a value in the render
  context that any descendant can read with `consume("key")`. Stack-based nesting with `try/finally`
  cleanup ensures proper scoping even when errors occur.

### GitHub Action

- **Agentic comment templates** — Support for agentic comment rendering and release notes generation
  across multiple surfaces (PR comments, step summaries, changelog).
- **Release notes action** — Multi-surface rendering with rich data collection for automated
  release documentation.
- **AMP protocol documentation** — Agent template site docs covering the AMP protocol.

## Fixed

- **Markup-aware `~` operator** — `code(x) ~ " " ~ copy_button(x)` no longer double-escapes HTML.
  The `~` operator now checks whether operands are `Markup` instances and preserves safety
  accordingly. Also fixes the `+` operator's string concatenation branch.
- **GitHub Action description** — Shortened `action.yml` description to meet GitHub's 125-character
  limit.

## Changed

- **README** — Slimmed down README and promoted Render Anywhere as the hero section.

## Upgrade Notes

1. No breaking changes. Drop-in upgrade from 0.3.3.
2. GitHub Action version tag updated to `@v0.3.4`.

## Links

- [PyPI](https://pypi.org/project/kida-templates/)
- [GitHub](https://github.com/lbliii/kida)
- [Full Changelog](https://github.com/lbliii/kida/blob/main/CHANGELOG.md)

