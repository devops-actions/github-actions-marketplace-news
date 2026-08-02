---
title: cowork-harness
date: 2026-08-02 06:02:17 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.17.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is designed to automate and test Claude Cowork skills in a scriptable, CI-ready manner without relying on the Desktop app. It reproduces key aspects of Cowork's runtime contract, including sealed filesystem, default-deny egress, and MCP-only cross-boundary behavior. This allows developers to test their skills across various scenarios and ensure compatibility with the platform before deploying them.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.17.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action is designed to automate and test Claude Cowork skills in a scriptable, CI-ready manner without relying on the Desktop app. It reproduces key aspects of Cowork's runtime contract, including sealed filesystem, default-deny egress, and MCP-only cross-boundary behavior. This allows developers to test their skills across various scenarios and ensure compatibility with the platform before deploying them.

## What's Changed


Reported by two consumer skills against published 1.16.0, plus a 54-item documentation review against the
source (32 findings valid). If you relied on the `semantic_matches` or `undelivered_deliverables`
documentation, re-check against the corrected text below.

### Added

- **`cowork-harness lint-skill` and `run` now report on a mounted plugin's hook declarations.** Three
  findings: `hooks-json-misplaced` (WARN — see the footgun below), `hook-event-unknown` (ERROR — a typo,
  including a wrong-capitalization one, which never runs anywhere), and `hook-event-not-served` (INFO —
  the event *does* fire, but the harness offers no assertion key for it, so a scenario cannot gate on it;
  assert the hook's observable effect instead). Before this, a plugin declaring `UserPromptSubmit`
  mounted, ran, and produced no comment of any kind — the surface was discoverable only by grepping the
  harness's own compiled output, which is exactly what one consumer had to do. The served set is
  generated from `SERVED_HOOK_EVENTS` into the existing `assertion-keys.json` channel, with the same
  drift tests as the assertion-key lists, so a hand-copied set cannot go stale.
- **New footgun flagged: a plugin's `hooks.json` must live at `<plugin>/hooks/hooks.json`.** At the plugin
  root it is **silently ignored** — no error, no warning, no log line, nothing fires, which reads exactly
  like "plugin hooks aren't supported". `lint-skill` and `run` now flag it (`hooks-json-misplaced`).
- **`verify-cassettes --allow-empty`** — an existing but cassette-free directory exits 0 instead of the
  default loud 2, for a repo that deliberately commits none (previously every caller wrapped the command
  in an `ls` guard). Scoped to *empty directory* only: `resolveInputs` now returns a typed `kind`
  discriminant, so a **missing** path still exits 2 and the flag can never green a typo — the vacuous
  pass the loud default exists to prevent.
- **`semantic_matches: {include_subagent_text: true}`** — opt in to sending each sub-agent's `kind:"text"`
  turns to the judge, for a fan-out skill whose real work is otherwise invisible to it. Opt-in because
  enlarging the judged document can re-grade an existing rubric. Sub-agent *thinking* is excluded: it
  arrives empty with `redacted:true`, so including it would pad the document with blanks a judge could
  read as "the sub-agent did nothing".
- **`analyze-skill` gains an `unscannedArtifactSources` field** (JSON) plus a text-mode warning line, so an
  explicitly-named target the artifact parser cannot read is reported instead of passing silently. See
  Fixed. Directory walks are unaffected; exit codes are unchanged.
- **New guard `test/scenario-key-vocabulary.test.ts`** — flags a backticked token within edit distance 2 of
  a real assertion key that is not one, across 8 consumption surfaces. The existing `scenario-docs-sync`
  guard checks only the forward direction (every key has a doc row) and anchors on table rows, so it could
  not see a key named in prose.

### Changed

- **The hook mechanism accepts any event; the default install is unchanged.** Binary-verified against
  `app.asar` 1.24012.9, real Cowork installs three hook event types and six hooks where the harness
  installs one — `PreToolUse` ×4 (`Task`, `Skill`, the force-ask set, `mcp__.*`), `PostToolUse:WebSearch`,
  and `UserPromptSubmit`. All six are now recorded in each baseline's `spawn.hooks` as a drift tripwire
  (with a `served` flag), and `docs/fidelity-gaps.md` gains a Hooks section. The install is unchanged
  because **none of the five unserved hooks would change observable behaviour here today**: two never match
  (the force-ask set gates four tools this harness doesn't register; the `mcp__.*` deny hook has no remote
  MCP to deny), one never triggers (`UserPromptSubmit` expands a leading `/slash`, which a scenario prompt
  is not), one cannot be sourced faithfully (`PreToolUse:Skill` injects `additionalContext` from Desktop's
  plugin/skill registry — inventing that text would put words in the model's context production never
  sends), and one is **already covered by a different path**: `PostToolUse:WebSearch` seeds
  `webFetchAllowedUrls` in production, and the harness reaches the same end by seeding provenance from
  *every* tool result (`run.ts` → `ProvenanceTracker.seedFromToolResult`), a faithful-but-less-precise
  regex-over-text subset of production's structured extractor, documented as such in
  `src/hostloop/provenance.ts`. The force-ask hook becomes worth serving if `save_skill` is ever modeled.
- **A plugin's own hooks DO fire — live-verified at `container` and `hostloop`.** There are two hook
  channels, not one: the table above is what *Desktop* installs, while a plugin's own `hooks/hooks.json`
  reaches the agent by the separate `--plugin-dir` route and is executed by the agent binary itself. A
  fixture plugin declaring `SessionStart` / `UserPromptSubmit` / `PostToolUse` had all three fire at both
  tiers. What is missing is narrower than "hooks don't work here": there is no assertion key for those
  events (you cannot *gate* on one) and no reproduction of the extra hooks production installs. A skill
  relying on `UserPromptSubmit` to inject a rule does work here; it has to be asserted via its effect.
- **Serving a bare, un-prefixed tool name is confirmed not feasible.** A live probe registered
  `SendUserFile` in `--tools`/`--allowedTools` *and* aliased it via `toolAliases` →
  `mcp__cowork__present_files`. The alias reached the wire, but the agent advertised 23 tools with
  `SendUserFile` absent, and the model reported it had no such tool. `toolAliases` only redirects a call
  the model already makes; it cannot make a name visible, and `--tools` silently drops an unrecognized one.
  This closes the open question blocking a remote-delivery emulation — that path is dead, and the
  remaining option is an MCP-prefixed name with a documented divergence.

### Fixed

- **`undelivered_deliverables` no longer fires on every remote run.** On `lane: remote` the location arm
  of the delivery check is correctly off, but the `presentedFiles` arm can never match either — no remote
  delivery tool is served, so the array is structurally always empty. Every live first-turn remote run
  that wrote a file therefore warned "never reached the user", which is a claim the evidence cannot
  support, and it forced `allow_undelivered_deliverables: true` into every remote scenario. A new
  `deliveryObservable()` predicate gates the signal, and the new **`delivery_unobservable`** warn states
  the gap instead of guessing. The two are mutually exclusive, and the new one stays quiet on a run that
  produced nothing to deliver — so net warn volume per run is unchanged, not increased.
- **`analyze-skill` reported a clean scan on files it never parsed.** The help string listed
  `.ts/.jsx/.tsx` among the sources scanned for lost artifact write-backs; the scanner reads
  `.html/.htm/.js/.mjs/.py` only (the in-process parser cannot read TypeScript or JSX). A `.ts` target
  returned no findings, empty `artifactScanned`, and `ok: true`.
- **The unanswered-gate hint named a `skill`-only flag.** Under `on_unanswered: fail` the error said
  `add: --answer "…"`, but `run --answer` exits "unexpected argument(s)". The same text appeared in the
  `run --on-unanswered first` success footer and in `docs/scenario.md`. All three now give the scenario
  `answers:` form first and label `--answer` as the `skill` path.
- **`semantic_matches`' judged document is narrower than every doc said.** Both the public schema row and
  the companion skill's copy described it as "the union of the final message, **the transcript**, and any
  authored files". The transcript is **top-level `assistant_text` only** — it excludes every
  `tool_use`/`tool_result`, and excludes **all sub-agent text**, including fork-scoped `Skill`/`Agent(fork)`
  dispatches (whose *tool* calls the harness does attribute to the main agent — the text path does not).
  A rubric claim such as *"the agent either used a tool to surface the file, or said none was available"*
  can never grade true on its first branch, regardless of behaviour: the evidence is not in the document.
  The rows now state the exclusions and warn that tool-invocation claims are unassertable — use
  `tool_called` / `present_files_called` / `subagent_dispatched` instead.
- **`undelivered_deliverables`' remedy was lane-blind in the docs.** The runtime message has branched on
  lane since 1.16.0 ("moving it under `outputs/` does not help on this lane"); `docs/scenario.md` and the
  skill still gave the unconditional "write deliverables under `outputs/`".
- **The `lane: remote` rejection advised something impossible.** Asserting `user_visible_artifact` there
  failed with *"Assert the delivery itself"* — but no remote delivery tool is modeled, so that phrase
  pointed at nothing. It now says so and offers the weaker proxy (`file_exists` + `transcript_matches`).
  Both call sites and their rationale comments are corrected together.
- **Four surfaces named an assertion key that does not exist** — `subagent_dispatched` written without its
  trailing "ed", in `docs/scenario.md`, both skill references, and the generated schema. The truncated
  spelling is also an internal `AgentEvent` type, so it appears in the repo. `lint` reports
  `unknown-assert-key` and `run` rejects the scenario at load, so no run false-greened.
- Also corrected: a nonexistent scenario path in `python/README.md` and `python/cowork_harness.py`; the
  composite Action's three outputs (`ok`, `envelope-path`, `summary-md`), previously documented only in
  `action.yml`; `docs/protocol.md`'s v1 changelog, silent for six baselines, now stating that they were
  verified by `sync`/asar analysis rather than a live re-run; ~20 rotting line-number citations in
  `docs/subagents.md`, replaced with symbol names; `--plugin-dir` described as a user-facing flag in
  `README.md`; a missing `--enable` in `docs/session.md`'s marketplace row; `scripts/` scope in
  `docs/critique.md`; `record --decider-dir`, `status --follow` and `--run-dir` in `docs/decider-dir.md`;
  three missing `Result` accessors in `python/README.md`; the duplicated shipped-examples inventory; and
  two example YAML comments with unresolvable paths.



## What's Changed
* release: 1.17.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/94


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.17.0
