---
title: Totem Shield
date: 2026-03-16 13:45:28 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/cli0.39.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/cli@0.39.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a governance compiler that transforms plain English rules into deterministic guardrails using AST/Regex, ensuring AI-assisted code adheres to predefined standards and preventing unsafe or undesirable code from being committed. It automates the enforcement of business logic invariants, provides fast, reliable code validation without relying on LLMs, and offers continuous learning from past errors to prevent future mistakes. Designed for high-compliance sectors, Totem integrates seamlessly with industry-standard tools and workflows, enhancing code quality, compliance, and confidence in AI-generated code.

## Release notes

### Minor Changes

-   dda8715: feat: shield severity levels — error vs warning (#498)

    Rules now support `severity: 'error' | 'warning'`. Errors block CI, warnings inform but pass. SARIF output maps severity to the `level` field. JSON output includes error/warning counts.

    chore: rule invariant audit — 137 rules categorized (#556)

    27 security (error), 56 architecture (error), 47 style (warning), 7 performance (warning). 39% reduction in hard blocks while maintaining all guidance.

    fix: auto-healing DB — dimension mismatch + version recovery (#500, #548)

    LanceStore.connect() auto-heals on embedder dimension mismatch and LanceDB version/corruption errors. Nukes .lancedb/ and reconnects empty for a clean rebuild.

### Patch Changes

-   Updated dependencies [dda8715]
    -   @mmnto/totem@0.39.0

