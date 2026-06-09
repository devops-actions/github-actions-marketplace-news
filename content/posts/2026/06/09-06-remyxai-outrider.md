---
title: Remyx Outrider
date: 2026-06-09 06:59:57 +00:00
tags:
  - remyxai
  - GitHub Actions
draft: false
repo: https://github.com/remyxai/outrider
marketplace: https://github.com/marketplace/actions/remyx-outrider
version: v1.5.0
dependentsNumber: "2"
actionType: Composite
---


Version updated for **https://github.com/remyxai/outrider** to version **v1.5.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/remyx-outrider) to find the latest changes.

## What's Changed

## What's new

Two coordinated changes that together unlock a previously-missing class of recommendations: papers that propose new capabilities the maintainer has explicitly invited.

### Maintainer-Issue dedup (widens what *discharges*)

The dedup gate previously matched only Outrider-opened Issues — title prefixed with the bot's recommendation marker. A maintainer who opens an RFC linking a paper by arxiv id (a real signal that the team is already discussing it) wasn't seen by the dedup gate, so Outrider would re-derive the same conclusion on the next run.

This release widens the discharge set to include **maintainer-opened Issues whose body references an arxiv id**, regardless of title prefix.

- New `_arxiv_linked_issues(target, state)` helper returns every Issue whose body links arxiv.
- New `_all_discharge_issues(target)` merges the Outrider-prefixed set with the arxiv-linked set, dedup'd by Issue number, with each entry annotated `_remyx_source` ∈ {`outrider`, `maintainer`}.
- Selection prompt's discharge section is renamed from *"Already filed by Outrider"* to *"Already in the team's attention"* and bullets carry a `[Outrider]` or `[Maintainer]` source tag.
- A `[Maintainer]`-tagged paper is documented as a **stronger** stay-away signal than `[Outrider]` — the maintainer themselves filed the discussion.
- In-pool candidate inline annotations also carry the source tag.

### Extension as a fourth integration shape (widens what *surfaces*)

Until now the selection pass classified every viable candidate as `addition` / `replacement` / `simplification` — all three of which assume an existing call site. Papers that propose a **new capability the repo lacks** were correctly rejected as structural mismatches, but at the cost of missing legitimately team-invited extension-shape proposals.

This release adds a fourth shape, **extension**, with four required gates ALL of which must pass:

1. **Pipeline-compatible I/O contract** — the new capability fits the repo's existing pipeline shape.
2. **Stated team-direction signal in the repo** — a README *Future directions* section, an open Issue labeled `rfc`/`discussion`/`proposal`, a CONTEXT.md investment pattern in adjacent capabilities, or the interest description naming the broader domain. Without ≥1 explicit signal, this is RFC-fishing — reject.
3. **No existing implementation in the repo** — defensive check via `gh code-search`.
4. **Higher relevance + interest-alignment bar than addition** — tier=high AND relevance ≥ 0.90 AND the model verbalizes the interest-alignment in `reasoning`.

Two new schema fields required for extension picks:

- `team_direction_signal` — the specific repo signal satisfying gate 2 (Issue number, README section, CONTEXT.md bullet)
- `proposed_call_site` — the adjacent existing pipeline stage (upstream or downstream of the proposed new stage)

**Tie-break ordering** is updated to `simplification > replacement > addition > extension` — extension is LAST-RESORT, picked only when all three other shapes fail AND the four gates pass.

### Validation and routing

- Extension picks missing either required schema field → `skipped_by_selection_verification` (treated as malformed contract).
- In-pool extension picks below the tier/relevance floor → also `skipped_by_selection_verification`.
- Out-of-pool extension picks (chosen_index = -2) enforce schema fields but skip the floor check (no pool candidate to apply it to).
- Extension picks open an Issue rather than a PR (no existing call site means no draft implementation possible) — the downgrade body renders `team_direction_signal` + `proposed_call_site` instead of `contract_match` + `migration_cost`.

## Architecture

The dedup gate from v1.4.7 remains the source of truth — this release widens the gate's input set, not its semantics. The selection prompt's three-shape taxonomy gains a fourth, conservatively-gated category — not a relaxation of the existing bars.

Re-engagement lever is unchanged: **reopen the Issue** to drop a paper from the discharge set.

## Tests

- `tests/test_maintainer_arxiv_dedup.py` (14 new) — helper behavior, merged-set ordering, source-tag propagation, prompt rendering, candidate annotation, end-to-end pool discharge via maintainer RFC
- `tests/test_extension_shape.py` (12 new) — prompt template documents the four gates and tie-break, schema-field requirements, missing-field rejection, tier/relevance floor enforcement, happy-path acceptance, other-shapes regression, out-of-pool behavior
- `tests/test_selection_dedup_aware.py` (updated) — new section header copy and source-tag assertions

All 249 tests pass.

## Upgrade

Semver minor — the selection contract gains new optional schema fields (`team_direction_signal`, `proposed_call_site`) and a new legal value for `integration_shape` (`"extension"`). Pinned consumers should bump to `v1.5.0` (or stay on `@v1` to roll forward automatically). No action.yml changes — drop-in.

## Expected outcome on next VQASynth run

With RFC #95 (MAGIC) filed in the repo, the next VQASynth Outrider run is expected to:

1. See RFC #95 in the discharge set (tagged `[Maintainer]`)
2. Annotate any MAGIC-shaped pool candidate inline as `✗ already filed: Issue #95 (open) [Maintainer] — do NOT pick`
3. Recognize the RFC label as the team-direction signal that would unlock extension-shape picks for related coreset-selection papers (if any others land in the engine's catalog)
4. Either dedup MAGIC cleanly (if it stays in the pool) or surface a non-discharged adjacent paper as an extension pick (if one exists with matching team-direction signal)
