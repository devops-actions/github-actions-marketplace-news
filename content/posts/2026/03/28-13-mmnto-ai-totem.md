---
title: Totem Shield
date: 2026-03-28 13:54:29 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.6.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a GitHub Action designed to automate code quality enforcement by converting lessons learned from pull request reviews into enforceable rules. It eliminates repetitive review comments and ensures that common mistakes, such as improper imports or architectural violations, cannot be repeated by creating deterministic constraints based on plain-English markdown lessons. Totem operates as a continuous feedback loop, integrating with pre-push hooks to prevent errors and reduce inefficiencies in AI agent and developer workflows.

## Release notes

### Minor Changes

-   069d652: feat: 1.6.0 — Pipeline Maturity

    Exemption Engine (#917):

    -   Dual-storage false positive tracking (local gitignored + shared committed)
    -   3-strike auto-promotion to team-wide suppressions
    -   \--suppress flag for manual pattern suppression
    -   Bot review pushback → exemption tracking via extractPushbackFindings
    -   Ledger 'exemption' event type for full audit trail

    Auto-ticket Deferred (#931):

    -   createDeferredIssue service with idempotency and thread reply
    -   inferNextMilestone for semver-aware milestone assignment
    -   PrAdapter: createIssue, replyToComment, addPrComment

    Interactive Triage CLI (#958):

    -   totem triage-pr --interactive / -i with Clack prompts
    -   Per-finding actions: Fix, Defer, Dismiss, Learn, Skip
    -   TTY guard, isCancel on every prompt, confirm preview

    Agent Dispatch (#957):

    -   dispatchFix: LLM-powered code fix with atomic commit and thread reply
    -   Path traversal guard, git rollback on failure
    -   Bot re-trigger: /gemini-review after fixes

    Bot-to-Lesson Loop (#959):

    -   "Learn" action saves findings as lessons with bot-review tags
    -   Post-triage review-learn prompt for batch extraction

