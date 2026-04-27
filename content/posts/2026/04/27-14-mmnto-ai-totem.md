---
title: Totem Shield
date: 2026-04-27 14:35:28 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp1.15.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@1.15.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that provides a persistent memory and enforcement layer for AI coding agents, addressing their tendency to forget context and repeat architectural mistakes. It automates the creation and enforcement of custom coding rules from plain-English lessons, ensuring consistent application of best practices and preventing repeated errors. The tool operates entirely offline, using deterministic tripwires to enforce rules at critical stages (e.g., `git push`), promoting architectural integrity without relying on live LLM interactions.

## What's Changed

### Patch Changes

-   e8792e5: fix(core): enable ast-grep verification in `verifyRuleExamples` (mmnto-ai/totem#1699)

    AI Studio corpus audit ([mmnto-ai/totem-strategy#150](https://github.com/mmnto-ai/totem-strategy/pull/150), B-Q4.1 / Q5 P2-1) finding. `verifyRuleExamples` short-circuited every non-regex rule via `if (rule.engine !== 'regex') return null;`, so ast-grep rules were never verified against their inline `**Example Hit:**` / `**Example Miss:**` blocks during compilation or via `totem rule test`. The downstream tester (`packages/core/src/rule-tester.ts`) already supports ast-grep through its `isAstGrep` branch — the entry point upstream of it was dropping the rule before the existing path could run.

    Real cases were slipping through this gap. Archived rule `e2341ed9229f9a60` shipped with pattern `new $ERROR($$$ARGS)`, matching every error class instantiation; the smoke-gate's bidirectional check (mmnto-ai/totem#1591) would have caught it at compile time if `verifyRuleExamples` had not blocked the engine.

    -   **Guard narrowed.** Changed `if (rule.engine !== 'regex') return null;` to `if (rule.engine !== 'regex' && rule.engine !== 'ast-grep') return null;`. Tree-sitter (`engine: 'ast'`) stays skipped because `testRule`'s non-`ast-grep` branch routes through `applyRulesToAdditions`, which is the regex pipeline and does not handle S-expression queries.
    -   **Tests.** Added two regression cases pinning the new behavior: ast-grep PASS on a matching badExample / non-matching goodExample, and ast-grep FAIL on the over-broad `new $ERROR($$$ARGS)` shape (the `e2341ed9229f9a60` exhibit class). The pre-existing test that asserted ast-grep returns null is rewritten to cover the Tree-sitter `'ast'` engine, which still legitimately short-circuits.
    -   **No CLI surface change required.** `totem rule test <ast-grep-hash>` now returns PASS / FAIL against inline examples instead of warning "Engine 'ast-grep' does not support inline example testing." The compile-pipeline smoke gate (`compile-smoke-gate.ts`) inherits ast-grep coverage through the same entry point.

    Closes mmnto-ai/totem#1699.

-   Updated dependencies [e8792e5]
    -   @mmnto/totem@1.15.9

