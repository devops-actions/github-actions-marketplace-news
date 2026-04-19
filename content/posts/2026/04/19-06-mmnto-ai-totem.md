---
title: Totem Shield
date: 2026-04-19 06:44:50 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.14.12
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.14.12**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide AI coding agents with a persistent, cross-repository memory and enforcement layer to prevent recurring mistakes and improve architectural integrity. By converting plain-English lessons into deterministic rules enforced offline via a linter, Totem ensures that common errors are caught and corrected before code is pushed, eliminating redundant feedback cycles and maintaining coding standards. This tool helps automate the enforcement of best practices, reducing human intervention and improving collaboration with AI agents.

## What's Changed

### Patch Changes

-   dad363b: ADR-088 Phase 1 Layer 4 substrate: compile --verbose trace + doctor stale-rule advisory.

    `totem compile --verbose` emits a structured per-lesson layer-trace block
    that shows which pipeline the lesson took, the generated pattern hash,
    verify outcome, retry scheduling, and the terminal result plus reasonCode
    on skip. Output ships via a single `process.stdout.write` per lesson so
    concurrent compiles do not interleave within a block. The trace is
    produced unconditionally on `CompileLessonResult.trace` across all three
    pipelines (layer 1 manual, layer 2 example-based, layer 3 Layer 3 LLM
    with verify-retry); callers that do not pass `--verbose` pay only the
    cost of a small per-lesson array.

    `RuleMetric` gains an `evaluationCount` field. `runCompiledRules`
    increments it exactly once per rule per lint run, regardless of how many
    matches fire. Pre-#1483 rule-metrics.json files load with the new field
    defaulted to zero via Zod, so the migration is transparent.

    `totem doctor` adds a stale-rule advisory that flags active rules whose
    cumulative `evaluationCount` has crossed a configurable window while
    `contextCounts.code` stayed at zero. Security rules (category=security
    OR immutable=true) land with a higher-severity label and the advisory
    declines to recommend archival for them; standard rules get both
    `totem compile --upgrade <hash>` and archival as recovery paths.
    `TotemConfig.doctor.staleRuleWindow` (default 10) gates the check. v1
    uses cumulative-lifetime semantics; #1550 tracks the rolling-window
    upgrade via `RuleMetric.runHistory` ring buffer, behind the same config
    key so no user migration is needed.

    Advisory only: no auto-archive, no mutation to the rules file. The
    existing `totem doctor --pr` autonomous minAgeDays GC path is untouched.

    Closes #1482. Closes #1483.

-   1107f24: ADR-088 Phase 1 Layers 3 and 4 substrate: unverified flag and reason codes.

    `CompiledRule` gains an optional `unverified: boolean` field, set to `true`
    when the rule was compiled from a lesson lacking a non-empty Example Hit
    block. Pipeline 1 (manual), Pipeline 2 (LLM), and Pipeline 3 (example-based)
    all flag the rule rather than shipping a pattern with no ground truth.
    Security-scoped lessons (`deps.securityContext === true` or a manual rule
    with `immutable: true`) reject outright instead of flagging, per the
    Decision 3 zero-tolerance policy. Absence of the field preserves pre-#1480
    manifest hashes via `canonicalStringify`; the literal `false` is never
    written.

    The `nonCompilable` ledger upgrades from `{hash, title}` to the 4-tuple
    `{hash, title, reasonCode, reason?}`. `reasonCode` is one of
    `no-pattern-generated`, `pattern-syntax-invalid`, `pattern-zero-match`,
    `verify-retry-exhausted`, `security-rule-rejected`, `no-pattern-found`,
    `out-of-scope`, `missing-badexample`, or `legacy-unknown`. The loader
    accepts all three historical shapes (string, 2-tuple, 4-tuple) and
    normalizes legacy rows to `reasonCode: 'legacy-unknown'`; the writer
    enforces the 4-tuple via a strict `NonCompilableEntryWriteSchema`.
    `saveCompiledRulesFile` validates every entry before serialization and
    throws on schema mismatch, following the lesson 400fed87 Read/Write
    invariant.

    Pipeline 2 validator rejections (invalid regex, unparseable ast-grep) and
    LLM-response parse failures move from the `failed` bucket to `skipped`
    with an explicit reasonCode so ADR-088 Layer 4 telemetry sees every
    outcome. `compile.ts` `nonCompilableMap` now carries the full 4-tuple
    through the run, and `install.ts` pack-merge routes writes through
    `saveCompiledRulesFile` so pack installs also go through the Write
    schema gate.

    Closes #1480. Closes #1481.

