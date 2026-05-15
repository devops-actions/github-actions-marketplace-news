---
title: Totem Shield
date: 2026-05-15 14:59:03 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/totem1.39.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/totem@1.39.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a file-based toolkit designed to enhance architectural consistency and collaboration when using AI coding agents. It addresses issues like repetitive architectural mistakes and loss of context by providing a deterministic system of linting, a queryable knowledge index, and plain-English lessons that are compiled into enforceable rules. Key capabilities include offline, sub-second linting without reliance on LLMs, automated enforcement of architectural guidelines, and tools to maintain durable project context across sessions.

## What's Changed

### Minor Changes

-   1934f13: feat(core): Trap Ledger schema extension — agent attribution + activity events (A.3.a)

    Forward-only schema extension to `LedgerEventSchema` in `packages/core/src/ledger.ts`. First lift of the A.3 telemetry sprint (three-stream claim-discipline consensus, design doc at `mmnto-ai/totem-substrate:.handoff/_shared/2026-05-15-a3a-schema-extension-design.md`).

    **New event types** (activity family):

    -   `mcp_call` — MCP tool invocation; `activity_name` discriminates (`search_knowledge`, `describe_project`, ...)
    -   `tool_call_first_significant` — first non-Read/Grep/Glob orchestrator tool call in session
    -   `hook_fire` — lifecycle hook executed; `activity_name` discriminates (`SessionStart`, `PreToolUse`, `pre-push`, ...)
    -   `session_start` — SessionStart hook fired; new `session_id` minted

    **New optional fields:**

    -   `agent_source: 'claude' | 'gemini' | 'human'` — agent runtime attribution, orthogonal to `source` (emitting subsystem). Implements ADR-078 § Event Attribution; renamed from the ADR's `source` to disambiguate against the load-bearing emitter identifier already in production.
    -   `session_id` (UUID) — session correlation, persisted at `.totem/ledger/.session-id` per ADR-029 § Session Heuristic.
    -   `correlation_id` (UUID) — trace correlation per ADR-014; populated by A.3.c end-to-end propagation work.
    -   `activity_name` — sub-type discriminator for activity events.

    **Field relaxations:** `ruleId` and `file` are now optional at the schema level to accommodate activity events. Writer-side discipline enforces required-by-type for `suppress` / `override` / `exemption`. Promotion to a Zod `discriminatedUnion` is deferred to A.3.c per design doc OQ-1 (strategy-Claude T0345Z disposition agreed; rationale and gap-filler tests in `ledger.test.ts` § "writer-side per-branch field presence" lock the discipline until the schema enforces it structurally).

    **Backward compatibility:**

    -   Pre-A.3.a override events (no new fields) parse fine — all new fields optional.
    -   Post-A.3.a activity events read by pre-A.3.a code: silently dropped (`safeParse` fails on unknown enum value, line skipped). Acceptable — no data corruption, only telemetry-visibility loss in stale tooling. Cohort version bump after merge closes this naturally.

    **Doc-sync (bundled):** `docs/wiki/trap-ledger.md` example corrected — pre-existing drift surfaced during A.3.a empirical pass. Three drifts fixed:

    -   Example `type` was `"exception"` (invalid; not in the enum) → now `"suppress"`.
    -   Example `source` was `"totem-context"` (bypass-marker; conflated with code's emitter identifier) → now `"lint"`.
    -   Prose claimed `// totem-context:` directives log `override` events — corrected to `suppress` per code comment in `LedgerEventSchema.type`.

    Activity-event example added for `mcp_call` / `search_knowledge` shape.

    **Out of scope (next sub-lifts):**

    -   A.3.b: `totem doctor --compliance` reads this schema and computes the ADR-029 metric (~1 week).
    -   A.3.c: orchestrator → MCP `correlation_id` propagation (~1 week).
    -   A.4.a / A.4.b: PreToolUse soft-block + pre-push hard-block pair (per C-12, ships alongside A.3.a).

    ADR-078 surface amendment (rename agent attribution from `source` to `agent_source` in § Decision 2) landed at `mmnto-ai/totem-strategy#329` (commit `b830e0c` on main). Includes the first `Falsifying Metric:` field in the ecosystem per Tenet 19 — sibling capability-claim ADRs 014/029/044 backfilled in `mmnto-ai/totem-strategy#330`.

