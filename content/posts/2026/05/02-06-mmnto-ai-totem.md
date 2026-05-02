---
title: Totem Shield
date: 2026-05-02 06:00:33 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/pack-rust-architecture1.24.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/pack-rust-architecture@1.24.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide AI coding agents with persistent, cross-repository memory and enforce architectural integrity through deterministic rules. It automates the process of turning plain-English lessons from code reviews or bug fixes into enforceable constraints, ensuring AI agents adhere to best practices and avoid repeating mistakes. By operating offline without relying on LLMs, Totem enhances development workflows with a fast, reliable enforcement layer that promotes consistency and reduces friction during the coding and review process.

## What's Changed

### Minor Changes

-   67c3ad3: **ADR-091 § Bootstrap Semantics: pack pending-verification install→lint promotion (#1684)**

    Closes the cloud-compile bootstrap gap that ADR-091 § Bootstrap Semantics defined: pack rules cannot be trusted to fire on the consumer's codebase until Stage 4 verifies them locally, so they now enter the consumer's manifest as `'pending-verification'` and the next `totem lint` runs the verifier and promotes them per outcome.

    **`CompiledRule.status` enum extended** with a fourth lifecycle value `'pending-verification'` alongside `'active' | 'archived' | 'untested-against-codebase'`. The lint-execution path (`loadCompiledRules`) treats it as inert exactly like `'archived'` and `'untested-against-codebase'`; the admin path (`loadCompiledRulesFile`) returns it unfiltered so the promotion interceptor can find pending entries.

    **`totem install pack/<name>`** now stamps every pack rule `'pending-verification'` regardless of the status the pack shipped with. The pack's authoring environment cannot have run Stage 4 against the consumer's codebase, so the cloud-compile status is meaningless on the consumer side. The install command appends `Run \`totem lint\` to activate pack rules\` to its output as the activation hint.

    **`.totem/verification-outcomes.json`** is the new committable side-table that memoizes Stage 4 outcomes across runs. The first lint run after install reads pending rules from the manifest, invokes the Stage 4 verifier on each, maps the outcome to one of the four terminal lifecycle values per Invariant #3, atomically writes the outcomes file with canonical-key-order serialization (Invariant #11 — byte-stable across runs so consumer repos see no phantom diffs), and saves the mutated manifest. Subsequent lint runs read the recorded outcome from the file and skip re-verification (Invariant #4); a pack content update produces a new `lessonHash` which has no recorded outcome, so the verifier runs again (Invariant #5).

    **Per-rule verifier-throw isolation** (Invariant #7): one failing rule's verifier-throw does not abort the lint pass; that rule remains `'pending-verification'` and the next lint retries.

    **Empty-pending fast path** (Invariant #9): the common-case lint pass with zero pending rules pays no verification cost and skips the outcomes-file read entirely.

    **New public API** in `@mmnto/totem`:

    -   `promotePendingRules(rules, deps)` and `applyOutcomeToRule(rule, entry)` — the core interceptor.
    -   `readVerificationOutcomes(filePath, onWarn?)` and `writeVerificationOutcomes(filePath, outcomes)` — the persistence layer.
    -   `VerificationOutcomeEntrySchema`, `VerificationOutcomesFileSchema`, `Stage4OutcomeStored` — Zod schemas.
    -   `VerificationOutcomesStore`, `VerificationOutcomesFile`, `VerificationOutcomeEntry`, `Stage4OutcomeStoredValue`, `PromotePendingRulesDeps`, `PromotePendingRulesResult` — types.

    **Naming-collision context (option B):** the original ADR-091 draft specified `.totem/rule-metrics.json` for the verification-outcomes file, but `packages/core/src/rule-metrics.ts` already exists as a per-machine telemetry-cache module (`triggerCount`, `suppressCount`, `evaluationCount`) with a gitignored `.totem/cache/rule-metrics.json` lifetime. ADR-091 § 65 was amended to specify `.totem/verification-outcomes.json` instead — separate filename for the new committable verification state, separate module name (`verification-outcomes.ts`) for the new schemas + persistence layer.

