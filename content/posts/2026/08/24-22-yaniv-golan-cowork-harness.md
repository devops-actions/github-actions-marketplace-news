---
title: cowork-harness
date: 2026-08-24 22:34:56 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.1.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness GitHub Action is a scriptable and CI-friendly test harness that reproduces Claude Cowork's observable runtime contract closely enough to test skills without using the locked Desktop app. It emulates constraints such as sealed filesystem, default-deny egress, MCP-only cross-boundary, and provides detailed evidence of agent behavior through recorded runs, enhancing test reliability beyond bare CLI execution.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness GitHub Action is a scriptable and CI-friendly test harness that reproduces Claude Cowork's observable runtime contract closely enough to test skills without using the locked Desktop app. It emulates constraints such as sealed filesystem, default-deny egress, MCP-only cross-boundary, and provides detailed evidence of agent behavior through recorded runs, enhancing test reliability beyond bare CLI execution.

## What's Changed

> ### ⚠️ Upgrading from 2.0.x — one behaviour change
>
> **`rehash` now exits `4` for partial success** (some cassettes migrated, some could not) where it
> previously exited `1`.
>
> - Scripts testing `rc != 0` for "something went wrong" — **unaffected**.
> - Scripts testing `rc == 1` for "something failed" — **will now miss the partial case**.
>
> The two shapes demand opposite responses (commit what migrated and budget a re-record for the rest,
> versus nothing here is salvageable), which is why they are now distinct codes. `4` rather than `3`
> because the exit-code space is per-command and `3`'s "could not verify" meaning is load-bearing on
> `verify-cassettes`.
>
> This ships in a minor because `rehash`'s exit codes were previously documented **nowhere** — not in
> `--help`, not in SPEC §11 — so there was no published contract to break. They are now in both.
>
> Everything else in this release is additive or a fix.


### Changed

- **`rehash` leads with the split, and PARTIAL success has its own exit code (`4`).** The summary used to
  print last, after every per-file line had scrolled past — and those two counts *are* the decision:
  commit what migrated and budget a re-record for the rest, versus nothing here is salvageable. It now
  prints first, with the per-file lines as the detail behind it.

  **`4 migrated, 18 failed` and `0 migrated, 22 failed` both exited `1`**, which made a shell consumer
  unable to tell apart two situations demanding opposite responses. The JSON envelope always carried the
  split as `migrated`/`skipped`/`errors`; a bare terminal run did not. `rehash` now exits `0` (all
  migrated, or nothing needed migrating) / **`4`** (partial) / `1` (nothing migrated and at least one
  could not) / `2` (usage).

  **This is a behaviour change for anyone branching on `rehash`'s exit code** — a script testing
  `rc == 1` for "something failed" will miss the partial case, though `rc != 0` is unaffected. It ships in
  a minor deliberately: `rehash`'s codes were documented **nowhere** — zero mentions in its `--help`,
  absent from SPEC §11 — so there was no published contract to break, and a consumer on `rc == 1` was
  relying on observed behaviour. They are now documented in both places. `4` rather than `3` because the
  code space is per-command and `3`'s "could not verify" meaning is load-bearing on `verify-cassettes`.

- **The batch cost estimate now reports its basis instead of claiming authority.** `estimatedCostUsd` is
  `sum(max(local run history))` — a max over whatever *this machine* has run. The line already qualified
  the partially-priced case with `— LOWER BOUND`, but the fully-priced case said
  `(all N scenario(s) priced from prior runs)`, which is an active claim of completeness and was the one
  case that said nothing qualifying. At a new baseline or a new agent binary the history describes a
  materially different configuration, so the estimate can **under**-predict exactly when it is most
  consulted — a consumer wrote "that is the ceiling, not the scope" into a plan off this line and had to
  retract it.

  The line now carries `basis: N prior run(s) on THIS machine, thinnest scenario has M; a max over that
  history, NOT a bound`, and the JSON payload gains `estimateBasis`
  (`{source, pricedRuns, thinnestScenarioRuns}`). `thinnest` is the useful half: a scenario with one prior
  run contributes a single sample, not a worst case. Wired through `pricedRunCount`, which had been
  exported and doc-commented *"for messages that report their own basis"* with zero callers.

- **Pre-epoch cassettes: we could report ordinary content drift, and chose not to.** When a cassette
  recorded before the 2.0.0 hash-format epoch is read, `rehash` recomputes the **legacy** digest over the
  current tree and compares it to the legacy digest in the cassette. On a mismatch that is a positive
  determination of ordinary content drift — strictly more informative than `unverifiable-skill`, and the
  same determination 1.25.0 reported as warn-only `skill` drift.

  Replay does not report it, and that is a decision rather than a limit. Reporting it would require
  keeping a fold of the retired hash algorithm alive in the replay path — the most-run lane — permanently,
  to soften one release's migration; the population it would help shrinks with every re-record. The
  runtime cost would be nil (both digests fold from one tree walk); the cost is code that could never be
  deleted. **"We can compute this and chose not to report it, so the legacy fold can die" is a different
  claim from "this cannot be known", and the earlier phrasing implied the latter.** The remedy for a
  pre-epoch cassette is `rehash` where it can prove content unchanged, and a re-record where it cannot.

### Fixed

- **The fast test lane had no global timeout, so 93 subprocess-spawning test files inherited vitest's 5s
  default.** They measure 167-888ms locally — a fine margin until you remember the lane runs 344 files in
  parallel across every core, and a CI runner is ~3x slower again. That is how an 888ms test crosses 5s;
  it cost two red CI runs on unrelated PRs before anyone looked at the failure rather than re-running it.
  `vitest.config.ts` now sets `testTimeout: 30_000` — ~34x the slowest measured non-e2e case, while a
  genuine hang still fails ~6x faster than in the live lane (which sets 180s). Per-test values still win.

- **Redaction pattern ORDER is load-bearing, and now says so — plus a warning when it is wrong.** Patterns
  apply in sequence over the accumulating output, so a bare catch-all placed ahead of a lookahead-anchored
  rule for the same prefix matches first and eats the `/mnt/` tail the lookahead exists to preserve. The
  shipped policy depends on that order: with it, a run-dir path redacts to
  `[REDACTED:local-path:…]/mnt/outputs/report.md` and still resolves; without it the whole path is consumed
  and `normalizeHostShapedForReplay` returns `null` — **every `computer://` structural-marker resolution
  silently stops working, with no error and no finding.**

  `loadRedactionPolicy` now warns, naming both pattern indices, when a policy is in the hazardous order.
  Detection is deliberately conservative — it fires only when a later pattern's source is exactly an
  earlier one's plus a trailing lookahead (modulo lazy quantifiers) — because regex subsumption is
  undecidable in general and a false positive would train authors to ignore the warning.

  The remainder is matched by **shape**, never by parsing the lookahead's body. A first cut used
  `\(\?=[^()]*\)`, whose `[^()]*` silently skipped every lookahead containing a group — so
  `(?=/mnt(?:/|$|[\s"'\\)\]]))`, the natural way to write "slash, end, or delimiter" and arguably more
  correct than a bare `(?=/mnt/)`, went unflagged while being just as dangerous. Caught by a consumer
  running it against their own policy, which is now a regression fixture. Not looking inside also sidesteps
  escape- and char-class-awareness, since that policy carries an escaped `\)` inside a character class.

  `docs/cassette.md` states the requirement next to the existing "stop before `/mnt/`" guidance, which had
  the shape of the rule but not the ordering half. The new test pins the runtime consequence, not just the
  detector: a reorder must make the link fail to normalize AND be flagged, so the syntactic check cannot
  drift away from what it is standing in for.

- **The copy-pasteable Action steps now pin `version: "^2"`, and a guard requires it.** Bounding every
  published npm floor last release fixed the *form* of a floor (`>=1.11.0` reads as a bound and silently
  means "and every future major too") but removed the input from the recipes rather than correcting it —
  so the shipped snippets carried no `version:` at all and fell back to the input's `latest` default. That
  reproduced the exact footgun `action.yml`'s own description warns about two lines earlier: a CLI major
  reaches a workflow the moment it is promoted, even though the `uses:` ref never changed.

  `^2` was not among the alternatives weighed at the time, and it is the form `action.yml` itself
  recommends: it holds the major, needs no patch number to remember, and only wants a human decision at
  the next major bump. **Five** steps were unpinned, not the three in the CI recipe — `README.md` carries
  two more.

  `action-docs-sync` now requires every copy-pasteable step (a `uses:` line inside a fenced block with a
  `with:`) to pin `^<package major>`; inline prose mentions are excluded, since there is nothing to pin.
  Verified by mutation: dropping one `version:`, regressing a pin to `^1`, and bumping the package major
  each fail. The guard also asserts it found the steps at all, because a parser that matches nothing
  passes every assertion after it. Guarding a floor's FORM does not guarantee a floor is PRESENT — this
  pins the behaviour instead.

- **The `sessionFingerprint` field set is now stated completely, and a guard discovers the sites that
  state it.** The hash covers eight session fields; every place that enumerated them named six or fewer.
  `web_fetch` was missing everywhere, `agent_env` was missing everywhere, and `docs/invariants.md`
  also omitted `skills`. Fourteen sites carried the claim while the working assumption was three: **twelve
  enumerated the set** — four in prose, two in the current cassette schema, six in the retained v9-v11
  schemas — and **two denied it existed at all**. `SPEC.md` and `docs/scenario.md` both said the session
  is "not drift-checked or fingerprinted". `model` genuinely is not hashed; connected folders and plugin/skill/MCP discovery are,
  which is the half a reader would have trusted.

  The `verify-cassettes` staleness message — the only enumeration a user ever sees — omitted `projects`,
  and `docs/cassette.md` quoted it with `projects` present. Both are fixed and now pinned to each other
  by test, so the doc cannot drift from the string again.

  New **invariant 14** in `check:versions` derives the field set from `buildSessionFingerprint`'s shape
  and **discovers** the enumeration sites rather than reading a list, so a new one is covered the day it
  lands. Two deliberate limitations are recorded as tests rather than left to look covered: it cannot see
  a flat denial (there is no enumeration to check — the coverage floor is what notices), and it cannot
  see a deleted "only when set" qualifier. `schema/cassette.v{9,10,11}.json` are allowlisted as frozen
  history: a retained schema documents the format as it shipped, and rewriting its description would make
  it describe a shape its own consumers never saw.

  Verified by mutation: run against the previous revision the guard flags all six then-existing sites
  with the correct missing fields; renaming the shape literal makes it error rather than silently pass;
  a ninth field invalidates a previously-complete site; and a whole-file token check — which would have
  passed today and then never failed again — is rejected in favour of span-scoped matching.

- **The documented Action ref is now `@v2`, not `@main`** — 7 references across `README.md`,
  `SKILL.md` and `ci-recipe.md`. `@main` was right when it was written: no alias tag had ever been
  published, so naming one would have sent a copy-pasting reader to a `uses:` that 404s, and the guard's
  own note said to revisit "once 1.0.0 ships". Two things had to be true first, and now are — `v2`/`v2.0`
  point at a real release, and `release.yml` moves them on every stable release rather than leaving it to a
  checklist. Recommending a floating tag nobody remembers to move is worse than recommending `@main`; that
  was the actual situation while `v1` sat at 1.24.0.

  `action-docs-sync` now derives the expected ref from `package.json`'s major instead of hardcoding it, so
  the next major forces these docs to move with it rather than silently pointing a reader at the previous
  line. `@main` is deliberately no longer accepted there: permitting both would let the recommendation
  drift back with nothing noticing. Verified by mutation — regressing one reference to `@main` fails, and
  setting the package version to 3.0.0 fails all three files.

  **This changes nothing about which CLI you get.** The ref selects the Action; the CLI still comes from the
  `version:` input, which still defaults to `latest`. `@v2` looks more like a version pin than `@main` did,
  so that distinction matters more now, not less — it is spelled out in `README.md`'s Action section and in
  `action.yml`'s own input description.

- **The CI recipe no longer teaches a bare version floor.** It
  carried `version: ">=1.11.0"` — which reads as "at least 1.11.0" and silently means "and every future
  major too", so a copy-paster gets the next major with no say in it. It was **not** broken today
  (`--min-severity` still exists in 2.x, and `lint` reads no cassette, so 2.0.0's hash-format epoch never
  applied to that step) — the defect was latent and in the FORM.

  The bare floor was first dropped rather than corrected — `^1.11.0` would have frozen every new
  copy-paster on the previous major, and `^2.0.1` needs remembering at each release — so the guidance moved
  to prose. **That went one step too far, and the same release corrects it** (see the `version: "^2"` entry
  above): dropping the input entirely falls back to `action.yml`'s `latest` default, which is the one
  remaining unbounded form and the exact footgun the input's own description warns about two lines earlier.
  `^2` was never among the alternatives weighed at the time, and it is what the recipes now carry. Reach for
  an exact pin only when you want byte-reproducible CI. [`action.yml`](https://github.com/yaniv-golan/cowork-harness/blob/main/action.yml)'s own description stops offering `>=1.11.0` and
  `^1.11.0` as interchangeable — they are not, and it had been recommending the unbounded one.

  `check:versions` invariant 13 now covers the Action's `version:` input, which it could not see before:
  it keys on `@>=`, and `version: ">=1.11.0"` has no `@` — the same defect in different syntax, with no
  coverage. Only the **unbounded** floor is rejected; verified against each form, `>=1.11.0 <3`, `^2`,
  `2.0.1` and `latest` all pass.

- **`projects[].from` was missing from two places, and the second was a false green.** A connected project
  is a host path exactly like a connected folder, and it was:
  - **not resolved against the session file.** [`docs/session.md`](./docs/session.md) promises, without
    qualification, that *"relative paths resolve from the session file's own directory"* — and it was true
    of every path field except this one, which resolved against the **process CWD**. So the same session
    file mounted different content depending on which directory you invoked from. The doc was right; the
    resolver had simply skipped the field.
  - **not part of the session fingerprint.** Swapping which directory is mounted at `.projects/<uuid>`
    changed the run's inputs and `verify-cassettes` reported nothing — a false green in the gate whose job
    is to notice that inputs moved. Folded in on the same **non-empty-only** terms as `agent_env`, so a
    session with no `projects:` (and one with an explicit `projects: []`) hashes byte-identically to
    before; only sessions that use the feature move. No committed cassette does.

  **A cassette recorded before this is reported `unverifiable`, not clean.** Its hash contains nothing
  about `projects[]`, so it cannot distinguish "the field was never covered" from "the mount changed since
  record time" — and reporting the mismatch as a benign migration would put the same false green back in
  the remedy. When everything else matches exactly, `verify-cassettes` says so and asks for a re-record to
  gain the coverage. `sessionFingerprintDrift` remains `verify-cassettes`-only: none of this can change a
  `replay` verdict, even under `--strict`.

  Three enumerations of the covered fields gained `projects` — [`docs/cassette.md`](./docs/cassette.md),
  [`docs/invariants.md`](./docs/invariants.md) and the shipped skill's `task-recipes.md`. `invariants.md`
  also described this as a hash of the **resolved** session; it is the **authored, pre-resolution** shape,
  deliberately, so the digest survives a different checkout — the function's own comment says so, and a
  resolved hash could never match on another clone.

- **The published control-protocol schema rejected five kinds of frame the harness sends and answers.**
  `schema/protocol.v1.json` described four request subtypes; the harness has always answered **six** —
  adding `request_user_dialog` and `elicitation`/`side_question` — and it also sends a fail-closed
  `subtype:"error"` response envelope, whose payload is a *string* under `error` rather than an object
  under `response`, so a validator that knew only the success envelope rejected every one. Measured
  against the previous schema: all five representative frames **REJECT**; against the new one, all five
  accept. Anyone validating real traffic was seeing failures on frames the harness handles correctly.

  Added as new `oneOf`/`anyOf` branches plus one new top-level response shape — **111 insertions, zero
  deletions** in the surface baseline, so nothing existing was narrowed and no frame the schema already
  accepted is affected. Both spellings the parser accepts are admitted (`dialogKind`/`dialog_kind`,
  `mcp_server_name`/`server`, `message`/`prompt`) rather than guessing which the agent sends.

  The golden vector pack grew with it, generated from the **real** envelope builders rather than
  hand-authored lookalikes. The existing lockstep test — every schema definition must be exercised by a
  vector — caught all five additions immediately, which is what forced those vectors to exist. One of them
  asserts the error envelope does **not** validate as a success envelope, so the two shapes cannot be
  quietly conflated later.

  [`SPEC.md`](./SPEC.md) §12 now states the additive latitude for this surface explicitly. Its silence had
  read as a prohibition, which is plausibly why three subtypes went undescribed rather than added — while
  [`docs/protocol.md`](./docs/protocol.md)'s own versioning policy had said all along that an additive
  variant is a v1 minor note, which is where the dated entry now lives.

- **The Marketplace alias tags are moved by the release workflow instead of by remembering.** `v1` sat at
  1.24.0 through two releases because moving it was a checklist line. `release.yml`'s last step now points
  `vX` and `vX.Y` at the release it just published, with two guards a hand-run `git tag -f` skips: a
  **prerelease** tag moves nothing (the trigger accepts `v1.0.4-rc.1`, and pointing `v1` at an rc would
  hand every `@v1` consumer a prerelease), and an alias **never moves backwards** — re-releasing an older
  patch on a line moves `vX.Y` and leaves `vX` alone. Verified by executing the logic against a synthetic
  tag set rather than by reading it: releasing `v1.20.5` while `v1.25.0` exists correctly skips `v1` and
  still moves `v1.20`. It runs last, after publish and the GitHub Release, so a failure there cannot
  half-publish anything.

  Alongside it, the tags are now correct: **`v2` and `v2.0` created** (they did not exist, so nothing
  pointed at the 2.x Action), and **`v1` moved 1.24.0 → 1.25.0**. Worth recording what that move did and
  did not fix: the Action's whole surface — `action.yml` plus the `render.js` it loads — is **byte-identical
  from 1.24.0 through 2.0.1** apart from three lines of input *description*. So a stale `v1` was a promise
  the repo had stopped keeping, not a functional gap, and the one public `@v1` consumer pins `version:` on
  every step and was never exposed to the `latest` default at all.

### Documentation

- **The invariants index said `check-versions.ts` has "no dedicated vitest file — it's a standalone script,
  not a unit-testable module boundary".** Three exist, for the invariants whose logic is an exported pure
  function: `check-cassette-version-claims`, `check-fingerprint-field-claims` and
  `check-design-scope-note`. The claim had already been stale before this release.

- **The `uses:` ref pins the Action; the `version:` input pins the CLI — and only the second one holds a
  major.** Both are documented as if pinning `@v1` bounded what you install. It does not: they move
  independently, and `version:` defaults to `latest`, so promoting a CLI major reaches a workflow whose
  `uses:` ref has not changed in months. Measured at the time of writing — `v1` points at **1.24.0** and
  has never been moved, yet an `@v1` workflow with no `version:` input installs **2.x**. `README.md`,
  `action.yml` (the text GitHub Marketplace renders) and `RELEASING.md`'s alias-tag step now say so, and
  name the fix: pin the **input** (`version: ^2`), not the ref. Crossing 1.x → 2.x this way means the
  hash-format epoch, so pre-v12 cassettes need `cowork-harness rehash <dir/>`.

  `RELEASING.md`'s "move the major/minor tags" step additionally records what moving `vX` does *not* do,
  since that step reads as the thing that controls consumer upgrades and is not.



## What's Changed
* docs: the `uses:` ref pins the Action, the `version:` input pins the CLI (O4-A) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/142
* fix: `projects[].from` joins path resolution and the session fingerprint (O3) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/143
* fix(protocol): describe the five frame shapes the schema was rejecting (O2) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/144
* chore(release): move the alias tags in the workflow, not from memory by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/145
* docs: recommend @v2 for the Action, and bind the guard to the current major by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/146
* docs: drop the bare version floor from the CI recipe, and let the guard see it by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/147
* docs(changelog): restore the four entries held out of #144–#147 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/148
* docs: complete two enumerations that went stale, and tie one to its directory by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/149
* fix: state the sessionFingerprint field set completely, and guard the sites by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/150
* docs: recount the fingerprint sites, and fix a stale claim in the invariants index by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/151
* fix: pin the copy-pasteable Action steps to `version: "^2"`, and guard it by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/152
* fix: warn when redaction patterns are ordered so one eats another's lookahead by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/153
* test: raise the turn-layout e2e timeouts to match their measured cost by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/154
* feat: rehash leads with its split and exits 4 on partial; cost estimate reports its basis by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/155
* chore(release): 2.1.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/156


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.0.1...v2.1.0

