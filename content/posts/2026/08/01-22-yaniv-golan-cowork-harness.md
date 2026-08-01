---
title: cowork-harness
date: 2026-08-01 22:15:02 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.16.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This action is a scriptable, CI-friendly test harness that emulates Claude Cowork's observable runtime contract to test skills without using the locked Desktop app. It reproduces behavior and limitations such as the sealed filesystem, default-deny egress, MCP-only cross-boundary access, and can run in headless mode across various scenarios and CI jobs. The action is useful for developers to ensure their skills work as expected and identify any potential issues before deployment.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.16.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This action is a scriptable, CI-friendly test harness that emulates Claude Cowork's observable runtime contract to test skills without using the locked Desktop app. It reproduces behavior and limitations such as the sealed filesystem, default-deny egress, MCP-only cross-boundary access, and can run in headless mode across various scenarios and CI jobs. The action is useful for developers to ensure their skills work as expected and identify any potential issues before deployment.

## What's Changed


A founder-skills adoption pass over published 1.15.0 reported no bugs, but re-confirmed the pattern the
prior release was supposed to close: **1.15.0's own docs fix restated a true statement about one code path
(the loader) as though it covered the whole system — the second time in two releases the same failure mode
shipped, against a different sentence.** The over-generalized claim was "a key from a newer harness fails
LOUD on an older CLI — it is never silently reinterpreted." True of the loader. False of `replay`, which is
the token-free CI gate consumers actually run, and which reads a cassette's frozen scenario as a
passthrough object — an unknown top-level key there is silently ignored, and where that key conditions an
assertion (as `lane:` does), a stale CLI can report green on a cassette the current CLI fails. This release
corrects the wording everywhere it shipped, closes the structural gap that made the silent case possible
in the first place (a conditional cassette-version stamp), and folds in three smaller drift issues the same
audit surfaced.

**Upgrade notes.**

- **`replay --assert-from`/`--reassert` now hard-fails on a `lane`-flipped sibling scenario.** `lane`
  conditions three assertion keys' outcomes (`user_visible_artifact`, `present_files_called`,
  `no_scratchpad_leak`) but was missing from the recording-shaping drift guard since the key shipped in
  1.14.0 — so a command that flips `lane:` on disk and re-checks was silently re-validating under the
  **wrong delivery contract** and could report green regardless. If a currently-green `--assert-from`/
  `--reassert` invocation starts failing after this upgrade, that is the guard catching a real drift it
  should have caught since 1.14.0 — re-record, don't work around it.
- **A cassette recorded by ≥ 1.16.0 whose scenario carries `lane: remote` is stamped cassette format
  v11**, which an older harness's `replay` and `verify-cassettes` both refuse to read — loudly. Only
  `replay` offers an override (`--best-effort-future-cassette`); `verify-cassettes` has none by design, a
  verification gate being the wrong place for a "read it anyway" switch, and its refusal says to upgrade
  rather than naming a flag it does not accept. Every other scenario — including `lane: local` or
  `lane:` omitted, nearly all of them — still stamps v10 and replays unchanged on an old install; this is
  a conditional stamp, not a blanket format bump.
- **If you copied 1.15.0's "fails LOUD … never silently reinterpreted" sentence into your own
  documentation, replace it.** The corrected wording is under Fixed, below.

### Added

- **Conditional cassette-version stamping — the structural fix (`CASSETTE_VERSION` → `11`,
  `schema/cassette.v11.json`).** An unconditional version bump would refuse every new cassette on an older
  CLI, including the vast majority that use no new key — a permanent cost for a narrow problem. `record`
  now stamps each cassette with `requiredVersionFor(scenario)`: the minimum format a reader needs to
  interpret THIS scenario's values, not a flat build counter. The predicate is value-aware, not
  key-presence-aware — `lane` is `.default("local")`, so every parsed scenario carries the key, and a
  presence check would have stamped v11 on every cassette, reproducing the exact unconditional bump this
  design avoids. Only `lane: "remote"` needs v11 (a pre-`lane` reader already treats every run as
  local-delivery semantics, which is what `lane: "local"`/omitted asks for). A test pins that every one of
  `ScenarioObject`'s keys has an entry in the version-predicate map, so adding a scenario key without
  deciding its cassette-version impact reds CI, rather than silently defaulting to "harmless." `rehash`
  uses the same shared predicate (previously it re-stamped unconditionally, which would have bumped an
  entire clean, lane-free v10 corpus to v11 the moment this shipped — the exact blast radius the
  conditional design exists to avoid) and is the **recovery path** for a `lane: remote` cassette already
  recorded by 1.14.0/1.15.0 (stamped v10 there, since the conditional stamp did not exist yet). That
  recovery is conditional, not guaranteed: `rehash` **skips** a cassette whose recorded baseline has
  drifted from the live one, and **errors** on a `contentSig` mismatch rather than silently re-stamping
  over a genuine skill-content change. **This does not repair a cassette already recorded by 1.14.0/1.15.0
  until `rehash` is actually run against it, and it cannot make an already-published CLI (1.13.2 and
  earlier) speak up about a v10 cassette it already accepts** — those installs are immutable; this fix
  helps only ≥ 1.16.0 readers of ≥ 1.16.0-recorded cassettes. `replay --best-effort-future-cassette`
  remains a deliberate, documented override of the v11 refusal — using it on a cassette you did not record
  reopens the exact silent-misread hole this release closes.

- **`replay` names an unrecognized frozen top-level scenario key with a `::notice::`**, but only when the
  cassette's own `cassetteVersion` is newer than the running build understands — not on every replay.
  Diffing keys unconditionally would trip on a future release's new **defaulted** key on every replay of
  every newer cassette (Zod defaults materialize into the frozen scenario at record time, so this build
  cannot tell a meaningful value from an unknown key's default); gating on the version signal instead makes
  this notice complementary to the version stamp above rather than overlapping it, and keeps it silent on
  an ordinary same-version cassette, by design. Non-gating: it cannot move a verdict or an exit code, and it
  helps only CLIs ≥ 1.16.0 — it cannot make an already-published CLI speak up about a case it already
  accepted.

### Changed

- **`record --dry-run`'s readiness preview no longer reads like a CI failure.** Advertised in 1.15.0 as the
  token-free loader check, a usage mode where the token/agent probe is irrelevant by construction — but the
  probe still printed `✗ MISSING` for both, which a CI log reader (and at least one consumer) reasonably
  mistook for a broken pipeline. The lines are now worded as informational ("fine for `--dry-run`; only a
  real record needs it") instead of `✗`-prefixed. **`--quiet` now suppresses the preview block** (it was
  accepted but a no-op on `record` before this release) — and, deliberately, nothing else: it does not
  suppress `✗ broken:`/`skipped:` lines or change an exit code, because muting the loader check's only
  named output would gut the feature 1.15.0 documented while leaving the exit code red — the worst of both.
  That combination is the point: **`record scenarios/ --dry-run --quiet` is the load gate a CI step wants**
  — no output and exit 0 when every scenario loads, and on failure the `✗ broken:` line naming the file and
  the rejected key, exit 1. It belongs next to `lint` rather than instead of it: `lint` only *warns* on an
  unknown key, so a scenario that lints with warnings can still be unloadable, and a green `lint` is not
  evidence the suite runs. Documented as a pipeline stage in `references/ci-recipe.md`.

### Fixed

- **The unknown-key strictness rule is corrected at every site it shipped wrong** —
  `docs/scenario.md`, `docs/cassette.md`, `SKILL.md`, and `references/scenario-schema.md`. 1.15.0's own
  docs fix stated: "a key from a newer harness fails LOUD on an older CLI — it is never silently
  reinterpreted," with no path qualifier. That is true of the **loader** (`run`/`skill`/`record`) and false
  of **`replay`**: a cassette's frozen scenario is a passthrough object, so a top-level key the running CLI
  doesn't know is carried but never consulted, and where that key conditions an assertion (as `lane:`
  does), a stale CLI can report green on a cassette the current CLI fails. The corrected statement also
  keeps the guarantee this class of fix keeps dropping: frozen **assertions** are not loose — an
  unrecognized assertion key in a same-or-older-version cassette is still a hard reject (exit 2), so
  `replay` does not validate nothing. Every site states the same three regimes: a ≥ 1.16.0-recorded
  `lane: remote` cassette (v11, refused loudly by an older `replay` and `verify-cassettes` alike); a
  1.14.0/1.15.0-recorded one (v10, still silently misread — `rehash` to fix); and **`replay
  --best-effort-future-cassette`**, which overrides the v11 refusal and reopens the silent-misread path on
  purpose. That override is `replay`-only — `verify-cassettes` does not accept it.

- **`record --help` documents every flag `record` accepts.** Two hand-maintained usage strings had drifted
  in both directions: `--help` was missing `--max-budget-usd` and `--decider-model` (both present in the
  usage-error string), and the usage-error string was missing `--dry-run` (present in `--help`). Both
  strings are now built from one exported flag set (`RECORD_BOOLEAN_FLAGS`/`RECORD_VALUE_FLAGS` in
  `src/run/cassette.ts`), and a test asserts every flag in that set appears in `record --help` (with an
  explicit allowlist for the two deliberate no-ops, `--verbose`/`--quiet`'s pre-1.16.0 behavior) — so this
  class of drift reds CI instead of waiting for a consumer to grep for a flag that exists.

- **`lane` is added to the `--assert-from`/`--reassert` recording-shaping drift guard.** `lane` conditions
  assertion outcomes exactly like the six fields the guard already compared, but was never added when the
  key shipped in 1.14.0 — see the Upgrade note above for what this changes for a currently-green command.
  The three places that enumerate the drift set for a human (the reassert notice, and two usage strings)
  now derive from one shared field list instead of hand-repeating it, closing the same drift class as the
  `record --help` fix above — two of those three strings were already stale before this release (missing
  `fidelity`/`requires_capabilities`, not just `lane`).

- **`--dry-run` and `--rerecord-stale`'s mutual exclusion is now documented**, in `record --help`,
  `docs/cassette.md`, and `references/task-recipes.md`. The guard existed before this release and was
  deliberate — dry-running a stale-only re-record would need real filesystem selection work `--dry-run`
  doesn't do — but 1.15.0 advertised the cumulative budget cap specifically for `--rerecord-stale` sweeps
  without mentioning that the exact form it was advertising cannot be pre-flighted. The documented
  workaround: dry-run the plain `scenarios/` directory instead — a superset of what a `--rerecord-stale`
  sweep would actually touch, so it's conservative in the right direction.



## What's Changed
* release: 1.16.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/93


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.16.0
