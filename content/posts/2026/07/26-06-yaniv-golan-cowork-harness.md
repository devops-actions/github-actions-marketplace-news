---
title: cowork-harness
date: 2026-07-26 06:21:43 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.12.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action automates the testing and CI process for Claude Cowork skills by reproducing its observable runtime contract. It allows developers to write scripts that simulate user interactions with a skill, ensuring compatibility across various scenarios and environments without relying on a locked-down desktop application. The main capabilities include replaying sessions, linting scenarios, and running tests in different fidelity tiers, including headless testing in CI.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action automates the testing and CI process for Claude Cowork skills by reproducing its observable runtime contract. It allows developers to write scripts that simulate user interactions with a skill, ensuring compatibility across various scenarios and environments without relying on a locked-down desktop application. The main capabilities include replaying sessions, linting scenarios, and running tests in different fidelity tiers, including headless testing in CI.

## What's Changed


**Upgrade notes.**

- **Your cassettes will report baseline staleness.** `baseline: latest` now resolves to
  `desktop-1.24012.9` (agent `2.1.219`). A cassette recorded against an earlier baseline replays with
  `[stale] baseline moved <old> → 1.24012.9 since record`. Re-record, or pin the scenario to the baseline
  it was recorded against (`baseline: desktop-<ver>`). This repo's own example cassettes are re-stamped.
- **Cassette staleness notes moved from `::warning::` to `::notice::` and now aggregate.** If a CI step
  greps stdout for `::warning::` to detect staleness, it will stop matching. Parse the JSON envelope
  instead — per [SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract), annotation text is
  explicitly not a covered surface.

### Changed

- **Platform baseline synced to Desktop 1.24012.9** (`baselines/desktop-1.24012.9.json`, now what
  `baseline: latest` resolves to). The staged **agent binary is `2.1.219`** (native app + VM ELF, new
  sha256 for each, `measured-local` with a matching official manifest checksum). **No prompt, spawn-env,
  or egress-allowlist drift:** `spawn.env` is byte-identical to 1.24012.1 — the agent's five new
  `CLAUDE_CODE_*` flags are not set by Desktop — no top-level or `spawn` key was added or removed, and
  every hand-authored field carried forward. One spawn field moved: **`claude-opus-5` joins the per-model
  effort map** (`low|medium|high|xhigh|max`, recommended `high`, modes `auto`), and it is the first
  literal-map entry to carry `disallowThinkingDisabled` — see Fixed. The three example cassettes are
  re-stamped to the new baseline.

- **`canProposeSkills` (gate `1824824999`) is pinned as a drift sentinel.** Its sibling `canSaveSkill`
  (`3246569822`) is served **on/force** by the live feature cache — a server-side rollout, independent of
  Desktop version — which widens a real cowork session's tool surface with a `save_skill` tool this
  harness does not model. `canProposeSkills` gates the `propose_skills` sibling and is present-but-off,
  so pinning it makes the same class of widening a visible `sync` diff rather than silent drift. Both
  gate states are recorded in the baseline's `provenance.gates`; neither is enacted. See
  [docs/fidelity-gaps.md](./docs/fidelity-gaps.md).

- **Cassette staleness notes are now `::notice::`, and a directory replay collapses them to one line per
  kind.** They were emitted at `::warning::` — against an adjacent code comment that claimed the opposite —
  so a non-gating advisory outranked the *actionable* assert-drift `::notice::` beside it on a CI
  annotation surface. They also repeated a constant string once per cassette (measured: 5 lines over this
  repo's own 3 example cassettes, one kind firing 3/3); `replay <dir>` now prints
  `N/M cassette(s) — <reason> [kind]`. Per-file notes are unchanged in `verify-cassettes`' JSON envelope.
- **`lint` names a command you can actually run.** Its usage and error lines came from the bundled
  `scenario.py` (`usage: scenario.py lint …`), and an unknown flag additionally printed argparse's
  internal subcommand list. Both now read `cowork-harness lint`. Invoked directly
  (`python3 scenario.py lint`), it still says `scenario.py` — that path is documented and stays honest.

### Fixed

- **An uploaded file made a scenario impossible to re-record, and burned the paid run doing it.**
  `buildManifest` captures uploads (`INPUT_ROOTS`, hash-only) deliberately *outside* `userVisibleRoots`,
  but `redactCassette`'s artifact↔root check measured every artifact against that set — so any
  upload-bearing scenario threw `redaction broke artifact↔root consistency: artifact path
  "uploads/…"` and wrote no cassette. The two features shipped with no overlapping tests (the uploads
  capture had no redaction coverage; the redaction guard had no uploads coverage), which is how a
  collector and its validator contradicted each other unnoticed. The throw lands *after* the agent run,
  so a live recording was spent each time. The check now accepts the input roots — redacted with the same
  policy, so a rule rewriting `uploads` stays consistent on both sides. Matching is by **path prefix**,
  not by `truncationReason: "input"`: a *symlinked* upload short-circuits in `readEntry` before the
  reason is applied, so a reason-keyed exemption would miss exactly the case it must cover. A genuine
  redaction-induced break still throws.
- **`schema/cassette.v10.json` declared neither `truncationReason: "input"` nor `preRunOrigin`**, both of
  which the recorder has been emitting. The gap was invisible because the cassette that would have
  exposed it could not be re-recorded. Both are now declared (additive and corrective — the producer,
  the TS types and `docs/cassette.md` already promised them; no `cassetteVersion` bump).


- **`sync`'s per-model effort extractor silently dropped `disallowThinkingDisabled`.**
  `parseModelEntryBody` read only `effortLevels`/`recommended`/`modes`, because the field had appeared
  solely on the regex-default entry (which sets it from its own anchor capture). Desktop 1.24012.9's
  `claude-opus-5` is the first entry in the literal per-model map to carry it, so the synced baseline
  would have recorded that model's config **incomplete, with no flag raised** — the exact silent staleness
  the S20 sentinel exists to prevent. The field is now parsed for per-model entries too, additively and
  optionally, and absent stays absent rather than defaulting to `false` (so a baseline distinguishes
  "production omits it" from "production sets it false"). Nothing enacts the field yet —
  `validateEffort` reads only `effortLevels` — so this is baseline data fidelity, not a behaviour change.
  Caught because the golden oracle is transcribed from raw asar text; copying the extractor's own output
  into it would have rubber-stamped the bug.

- **The path-gate excluded-set sentinel refused the 1.24012.9 sync.** Desktop's
  `HOST_LOOP_EXCLUDED_BUILTIN_TOOLS` gained `"PowerShell"` (a 6-element literal), which the anchor
  correctly rejected as an unknown delta. `PowerShell` **is** a real tool in the agent registry, but it is
  win32-gated and never registers on the macOS/Linux runtimes this harness targets, so hostloop's
  `disallowed` set is unchanged; only the anchor and its stale explanatory comment moved. A mutation test
  now fails a regex loosened back to the 5-element form, which the pre-existing append-style mutation
  would not have caught.

### Documentation

- **SPEC.md's `mounts[]` row documented a mount path that was fixed away.** It still described
  `remote_plugins` mounting at `.remote-plugins/<name>` — the basename form that was replaced by
  `.remote-plugins/plugin_<id>` precisely *because* two entries sharing a basename collided. The
  implementation (`session.ts`), `docs/discovery.md`, `docs/plugin-root.md` and `docs/session.md` had all
  said `plugin_<id>` for releases; SPEC was the one stale page, and it is the §12 frozen-contract page,
  where a wrong path is a misstated contract rather than a typo. Now names the real shape and why the id
  is a hash of the declared source rather than a basename. Reported by a consumer.

- **`save_skill`/`propose_skills` are recorded as an unmodelled surface** in
  [docs/fidelity-gaps.md](./docs/fidelity-gaps.md). Cowork declares `mcp__cowork__save_skill` on a
  standard account; the harness declares neither tool at any tier. The entry states the three properties
  easiest to get wrong — it **uploads** a zipped skill to the account-level library rather than writing
  files (the local-storage path belongs to the `custom-3p` deployment, which a first-party account never
  reaches); it is **force-asked**, so Cowork prompts for it even under `bypassPermissions`; and it is
  **ToolSearch-deferred**, not `alwaysLoad`, which is why its absence is inert for skills that never seek
  it. It also states why a byte-faithful emulation would be unsafe: the side effect is an authenticated
  upload with the operator's own credentials, and `overwrite: true` resolves and replaces an existing
  skill by name, so a scenario exercising the update path could destroy the very skill under test. Where
  it bites is narrow but silent — a skill-authoring workflow greens in the harness by writing `SKILL.md`
  to disk, while production tells the model those edits do not persist.

- **Every doc pin that names the baseline or the agent version tracks 1.24012.9 / 2.1.219.** A baseline
  sync leaves nine such pins stale across seven files: SKILL.md's `tracks-harness` stamp and its "Version
  note", README.md's latest-shipped-baseline sentence, the `V=<agentVersion>` recovery snippets in
  README.md / `docs/maintenance.md` / `references/ci-recipe.md`, and the `(baseline desktop-X.Y.Z)` stamps
  in all four `references/*.md`. `npm run check:versions` enforces all of them — but it is **not** part of
  `npm run ci`, only of `preflight`, so a stale pin leaves the suite green and blocks the release instead.
  DESIGN.md's one present-tense "currently **X**, per `baselines/desktop-Y.json`" sentence is the one pin
  with no guard at all. Two of the nine are latent: SKILL.md's "Version note" and the `references/*.md`
  stamps are checked against SKILL.md's `tracks-harness` rather than against the max baseline, so they only
  start failing once `tracks-harness` is corrected — fix them in the same pass, and re-run
  `check:versions` until it exits 0 rather than trusting a hand-enumerated list.

- **A guard holds the shipped skill's `docs/` pointers resolvable** (`test/skill-docs-pointers.test.ts`).
  The payload under `.claude/skills/cowork-harness/**` points at ~a dozen `docs/*.md` files that do not sit
  beside it; that works only because SKILL.md **defines** "repo-only" as "not bundled with the installed
  SKILL" and names `node_modules/cowork-harness/docs/<name>.md`. That definition was load-bearing for every
  such pointer and nothing protected it — delete it and a reader meeting `(repo-only)` concludes the doc is
  unavailable when it is one path away. The guard now pins three things: the definition survives and still
  precedes its first parenthetical use; every referenced doc exists; and every referenced doc is actually
  shipped by `package.json`'s `files` (a doc can exist in the repo and still be excluded by a `files`
  negation, so a pointer into one would dangle for npm consumers too). Mutation-verified against all three.

- **Two prose enumerations that no guard covers are corrected.** `docs/maintenance.md`'s seam table named
  neither `spawn.env` nor `spawn.effortByModel`/`effortRegexDefault` in its VOLATILE column, though both are
  re-derived from the asar every sync — so the doc defining the maintenance contract understated what a sync
  regenerates, in the release where the effort map moved. Its HAND-AUTHORED column was short by
  `spawn.tools`/`allowedTools`, the spawn scalars, the prompt-asset pointers and the `$comment*` keys. It now
  also records the all-or-nothing contract the code implements: on a `deriveSpawnEnv` /
  `extractModelEffortConfig` hard failure, `sync` preserves the previous values and reports an unknown delta
  rather than writing a partial map. Separately, the baseline's `provenance.gates.$comment` described its
  "also pinned" sentinels as ones "the harness deliberately models as OFF" while omitting the four
  skill-family gates it carries — including `canSaveSkill`, which is **on**. Both were structurally green
  under every checker; only reading them caught it.

- **The packaged skill documents 1.11.0's surface.** `--min-severity`, `environment.harnessVersion`, and
  the discovery-surface note shipped documented nowhere a consumer reads; a consumer found them by diffing
  tarballs. Added to SKILL.md's Gotchas (as workflow guidance — the skill delegates flag detail to
  `--help`) and the cassette-anatomy table.
- **`extra-args` and its version coupling are documented** (`references/ci-recipe.md`), and `action.yml`
  now states that `version` accepts an **npm range**, not only an exact pin. A flag passed through
  `extra-args` that needs release X fails hard on an older CLI (`unrecognized arguments`, exit 2) — floor
  the step with `version: ">=X"`. An exact pin rots the moment a recipe adopts a newer flag.
- **A doc-coupling ratchet for nested cassette fields** (`test/skill-docs-sync.test.ts`). The existing
  guard checked top-level keys only, which is why `environment.harnessVersion` shipped undocumented
  despite passing the surface-contract gate: nothing coupled a field's *existence* to its *explanation*.
- **`AGENTS.md`** gains an advisory-design section (actionable-or-aggregated; severity tracks
  actionability; "harmless otherwise" is a design smell) and a Traps section for the silent failure modes
  that mislead contributors. **`RELEASING.md`** gains a checklist line naming CHANGELOG + README +
  SKILL.md + references explicitly — a version bump is not documentation.
- **`AGENTS.md` documents the one-worktree-per-session convention**, because two sessions sharing a single
  checkout is a failure mode nothing errors on — the integration branch simply advances under an in-flight
  rebase and the conflict surfaces later. The entry prescribes `git merge --ff-only <branch>` run in the
  primary, and explicitly warns off the `git fetch . <branch>:main` ref-update as the standard path: it
  works only while `main` is unchecked-out and fails with `refusing to fetch into branch 'refs/heads/main'
  checked out at …` the moment a worktree holds it. A ref-update also protects the other session's HEAD
  while doing nothing for `main` itself, so it never solved the larger half.



## What's Changed
* fix(migrate): stop asserting a stat identity guard the filesystem cannot provide by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/81
* docs(agents): add a 'Traps' section for the silent failure modes agents hit by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/80
* release: 1.12.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/83
* test(live): commit the A2 discovery probes, mutation-verified before landing by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/82


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.12.0
