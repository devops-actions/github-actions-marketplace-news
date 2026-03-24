---
title: Totem Shield
date: 2026-03-24 14:01:09 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.4.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.4.3**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

**Totem** is a governance tool designed to enforce architectural and coding rules consistently across projects, integrating seamlessly into Git workflows. It automates the creation of a persistent, model-agnostic memory layer and deterministic guardrails, ensuring AI coding agents like Copilot and Claude adhere to predefined rules without repeated manual input. With capabilities like offline rule enforcement, cross-repository rule sharing, and compliance-ready outputs, Totem simplifies maintaining code quality and consistency while supporting both AI-assisted and traditional development workflows.

## Release notes

### Patch Changes

-   DX hardening, core refactor, and docs overhaul.

    **Core:**

    -   Extract `buildCompiledRule()`, `buildManualRule()`, `compileLesson()` to core package — eliminates duplicated rule-building logic between local and cloud compilation paths

    **CLI:**

    -   Reduce pre-push hook verbosity: dot reporter by default, full output on failure, `TOTEM_DEBUG=1` for verbose mode
    -   Suppress gh CLI stderr leak in multi-repo issue fetch
    -   Extract shared `ghExecOptions()` with `GH_PROMPT_DISABLED=1` to prevent interactive auth hangs
    -   Protect `<manual_content>` blocks from `stripMarketingTerms` mutation

    **Config:**

    -   Remove `**/*.test.ts` from `ignorePatterns` so shield can see test files in diffs

    **Docs:**

    -   Rewrite README as technical spec sheet (~130 lines, zero marketing)
    -   Create SECURITY.md with full 1.4.x audit
    -   Scaffold `docs/wiki/` with enforcement model, MCP setup, cross-repo mesh, troubleshooting
    -   Add 6 placeholder wiki pages for 1.5.0 features

-   Updated dependencies
    -   @mmnto/totem@1.4.3

