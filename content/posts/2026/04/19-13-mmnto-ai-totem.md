---
title: Totem Shield
date: 2026-04-19 13:55:52 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.14.13
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.14.13**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a set of CLI tools designed to provide a persistent memory layer and enforcement mechanism for AI coding agents, ensuring architectural integrity across projects. It automates the process of turning plain-English lessons from coding mistakes into enforceable rules, preventing repeated errors and maintaining consistency without relying on large language models (LLMs) during runtime. Key capabilities include zero-LLM offline linting, deterministic rule enforcement, and the ability to create and refine precise constraints for software development workflows.

## What's Changed

### Patch Changes

-   8dd8dc8: core: thread per-invocation `RuleEngineContext` through the rule engine

    Removes the module-level `let coreLogger` / `let shieldContextDeprecationWarned` state from `rule-engine.ts` and replaces the hidden DI setter (`setCoreLogger` / `resetShieldContextWarning`) with a required `RuleEngineContext` parameter on `applyRulesToAdditions`, `applyAstRulesToAdditions`, `applyRules`, and `extractJustification`. Concurrent or federated rule evaluations cannot bleed logger wiring or deprecation-warning latching across each other. Closes mmnto-ai/totem#1441.

    **Breaking:** `setCoreLogger` and `resetShieldContextWarning` are removed from `@mmnto/totem`. Callers must build a `RuleEngineContext` once per linting invocation and pass it as the first argument to the affected functions. See the README or the `RuleEngineContext` JSDoc for the shape.

-   Updated dependencies [8dd8dc8]
    -   @mmnto/totem@1.14.13

