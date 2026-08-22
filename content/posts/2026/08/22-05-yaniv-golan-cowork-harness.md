---
title: cowork-harness
date: 2026-08-22 05:59:09 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action is a scriptable and CI-friendly test harness that replicates the observable runtime contract of Claude Cowork, enabling developers to thoroughly test their skills across various scenarios without using the locked Desktop app. It captures evidence of what an agent actually did during a run, including invoked skills, files read, network requests, and shown options. The action supports different fidelity tiers for different testing needs, from headless operations to full-fledged simulations in Docker or Lima environments.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action is a scriptable and CI-friendly test harness that replicates the observable runtime contract of Claude Cowork, enabling developers to thoroughly test their skills across various scenarios without using the locked Desktop app. It captures evidence of what an agent actually did during a run, including invoked skills, files read, network requests, and shown options. The action supports different fidelity tiers for different testing needs, from headless operations to full-fledged simulations in Docker or Lima environments.

## What's Changed


### Changed — BREAKING (requires a major bump; see [SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract))

- **HASH-FORMAT EPOCH — `cassetteVersion` 12. Every cassette carrying a `skillHash` fails a bare `replay`
  until it is migrated.** Read that sentence literally: this is not a warning you can defer.

  **Migrate with one command.** `cowork-harness rehash <dir/>` proves each cassette's content unchanged and
  relabels it in place — no re-record, no model calls, no cost. For a cassette that has MOVED (a `git mv`, a
  repo reorg, a copy into another project) its skill sources cannot be resolved from its own directory, so
  use `cowork-harness rehash <file.cassette.json> --session <session.yaml>`. Anything `rehash` cannot prove
  is refused rather than migrated, and does need a real re-record.

  **After a successful `rehash`, the epoch is cleared and you are done with it.** Migration does not touch
  the other staleness classes, and it does not need to: `baseline`, `format` and `prompt-assets` behave
  exactly as before — they surface in `staleness[]`, print a `::warning::`, and **exit 0**. Only
  `unverifiable-skill` fails a bare `replay`, which is what the epoch produces and what `rehash` clears. So
  a cassette that also carries, say, baseline drift migrates cleanly and then goes green with that drift
  still reported as a warning, exactly as before this release. (Measured, not inferred: a cassette with a
  deliberately wrong `fingerprint.baseline` replays `pass: true`, exit 0, with a non-failing `[baseline]`
  finding.)

  **`verify-cassettes` is stricter than `replay`, and that is not new.** It treats ANY staleness finding as
  not-green, so a migrated cassette that still carries baseline drift replays green and reds the
  verification gate — as it did before this release, for the same reason. Clear it by re-recording, or by
  re-stamping `fingerprint.baseline` where the baseline moved without changing anything the recording
  exercises; [docs/cassette.md](./docs/cassette.md#cassette-versioning) covers when that re-stamp is honest
  and when it is not. This release also ships a new platform baseline, so expect that drift on cassettes
  recorded against the previous one.

  **What changed.** A plugin manifest now folds into `skillHash`/`contentSig` through canonical (JCS-style)
  serialization instead of insertion-order `JSON.stringify`, so **reordering keys in `plugin.json` no longer
  re-stales every cassette that hashes it** — semantically identical input now produces an identical digest.
  `contentSig` additionally folds the directory markers `skillHash` has always folded, so an added or removed
  **empty directory** is finally visible to it; `CONTENTSIG_ALGO` moves 4 → 5 to say so. A new
  `fingerprint.hashFormat` records which transform produced the digests — **absent means the legacy
  pre-v12 transform, never raw bytes**, since every cassette already on disk carries version-stripped
  manifest digests.

  **Why it fails rather than warns.** A pre-epoch digest and a post-epoch digest came from different
  algorithms; they cannot be compared at all. That is `unverifiable-skill` — "this was not verified" — and
  not `format`, which is waivable and exits 0. A warning everyone ignores for a release is exactly the
  green-against-unverified state the strict-replay change below exists to end, and on the day of an epoch it
  would apply to every cassette in existence.

  **Some cassettes will migrate with an unchanged digest.** A manifest whose keys were already in canonical
  order, or a tree with no manifest at all, hashes identically under both algorithms. Those are still
  flagged and migrated, **by recorded version rather than by whether the number moved** — otherwise they
  would pass unlabelled, and at the next epoch nobody could tell which algorithm produced them.

  `cassetteVersion` now means the minimum reader for the **whole cassette**, not just for its `scenario`
  keys: a v11 reader handed a v12 cassette would recompute legacy digests and report drift that is not
  there. The scenario-aware differential still applies above that floor.

- **A bare `replay` now FAILS when skill staleness cannot be verified** (`unverifiable-skill`), where it
  previously warned on stderr, recorded the class in `staleness[]`, and exited `0`. "Could not be checked
  at all" and "checked and unchanged" are different claims and only the second is green — a cassette that
  had silently stopped proving anything kept passing the lane most people run, and green-against-unverified
  is worse than a loud red because silence prompts a re-record while green does not. The major is required because a previously-green
  input now exits non-zero — `verdict.pass` / `ok` and the per-command exit behaviour are covered surfaces
  ([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract)). Note the *meaning* of exit 1 is
  unchanged (still assertion-or-agent failure), so §11's exit-code table needs no edit; what changed is
  which inputs reach it.

  **Deliberately narrow.** The content-drift classes (`skill`, `shared-root`) still require
  `--fail-on-skill-drift`, so that flag keeps its meaning and no inverse escape hatch is needed.

  **One exception, and it exists to stop a false green:** under an explicit `--session`, the drift classes
  are escalated too. Without that, pointing `--session` at a WRONG but resolvable tree would turn
  `unverifiable-skill` (a hard fail) into ordinary `skill` drift (warn-only) — so the flag could be used,
  accidentally, to silence the very gate it exists to help you escape. `--session` is an escape from
  "cannot verify", never from "verified, and it changed".

  **Migration.** The commonest cause is a cassette that MOVED — use the new `--session <file>` below
  rather than re-recording. If you genuinely want the old behaviour for a lane, it was never expressible
  as a flag and still isn't; fix the resolution instead.

- **`verify-cassettes --output-format json` gained a REQUIRED `privacyScanned` field on every result.**
  `schema/verify-cassettes.json` is a covered 1.0 surface ([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract)),
  and `privacyScanned` is now in its `required` list — so a consumer validating this build's output against
  an older copy of the schema is unaffected, but one validating an OLDER CLI's output against the NEW schema
  will fail. It is emitted on every return path, so anything keying on it can rely on it.

  The field exists because `error` became ambiguous. A cassette that fails SHAPE validation is now still
  privacy-scanned (see Fixed, below), so `error` covers both "never scanned" and "scanned fine, just not
  replayable" — and a gate cannot tell those apart from it. **If you have CI keyed on `error` meaning "this
  file was not checked", that reading is now wrong; switch to `privacyScanned === false`,** where
  `findings: []` is an absence of evidence rather than evidence of absence. `--skip-privacy` also reports
  `false`, for the same reason.

### Added

- **`provenance.asarGateIds` — a gate-membership change is now nameable.** A baseline recorded
  `provenance.fcache` as two aggregates and a timestamp, so when a sync moved `featureCount` **271 → 278**
  nothing could say *which* seven arrived, a count-neutral membership swap was invisible entirely, and
  `content16`'s diff line had to hedge "membership **and/or** values moved". The fcache is also
  server-refreshed on its own schedule (3.7–20.8 min observed), so a count delta between two baselines is
  a net over days of rollout rather than a fact about the Desktop release — and the previous payload is
  overwritten in place, so the question goes unanswerable the moment you think to ask it.

  Baselines now additionally record the gate ids **this release's own bundle references**, sorted. That is
  a pure function of the shipped asar: reproducible by anyone, stable across the fcache's refetches, and
  attributable to the release. Diffing two baselines names the delta outright (1.32885.1 → 1.34493.1:
  **+14 / −1**), and `sync --diff` prints the ids rather than a count.

  It is deliberately **not** intersected with the syncing machine's fcache. Gate membership varies by
  account segment, so filtering through one machine would both leak which gates that operator is served
  and drop DARK gates — 51 of the recorded ids are absent from the live fcache, `enableToolSearchAuto`
  among them. To turn an id into a name, grep it as a quoted literal in the extracted bundle; the call
  site names it, which is how `PINNED_GATES` was built in the first place.

- **`record` now scans what it wrote, and quarantines a leaking recording instead of publishing it.**
  `scanCassette` had exactly one production call site — `verify-cassettes` — which runs at commit time at
  the earliest. `hostInventoryPreflight` does fire before the paid spawn, but it reads the tier and the
  destination path, never the resulting bytes: it is a prediction, and it can be wrong in both directions.

  After redaction and before the write, the finished cassette is scanned. A `host-inventory` or
  `machine-inventory` finding on a repo-visible path writes the recording to `<runs-root>/quarantine/`
  (honouring `--run-dir` / `COWORK_HARNESS_RUNS_DIR`) alongside a `.findings.txt` naming exactly what
  leaked, then fails without writing the requested path.

  Three things about that policy are deliberate. **Quarantine, not discard** — the tokens are already
  spent, and throwing the recording away is both the most expensive answer and the one most likely to end
  in "just commit it anyway". **Only the machine-identity classes trigger it** — `email` / `currency` /
  `domain` / `path` findings are frequently legitimate scenario content, and a gate that fires on those
  teaches the operator to pass the escape flag by reflex, which is how a safety gate becomes decoration.
  **Outside a git repo it warns instead of quarantining** — nothing there publishes the file by accident,
  so quarantining would be obstruction rather than protection. If the runs root is itself inside a working
  tree, quarantine falls back to the OS temp dir and says so; moving a leak into another committable
  location would be theatre.

  `--allow-host-inventory-fixture` (the flag the preflight already honours) still writes the file, and now
  reports what it is publishing rather than going quiet.

  Coverage is labelled honestly: the policy (`classifyRecordLeak`) and the effect (`quarantineCassette`)
  are pure, exported and mutation-tested; the *wiring* inside `recordScenarioObject` needs a live spawn to
  reach, so it is guarded structurally — the same split this repo already uses for `buildCassette`.

- **Corrected a standing inaccuracy in the record-consent docs.** `SKILL.md` and `ci-recipe.md` both said
  the host-inventory preflight "refuses outright rather than warn". It refuses for a **new** cassette path
  but **warns** for one that already exists — deliberately, since refusing there would fire on every
  `--rerecord-stale` pass and make the escape flag reflexive. That warn path was the gap the record-time
  quarantine above now covers, so both documents now say which is which.


- **Platform baseline `desktop-1.34493.1` (agent `2.1.237`).** The Cowork system prompt, both sub-agent
  append branches, all 28 pinned gate states, the VM egress policy and the 22-key spawn env are all
  unchanged — re-derived from the new bundle rather than inferred from an absent diff row (only the
  minified prompt constant id rotated). `sync` reports no unknown deltas.

  The substantive change is in the **agent**, and an asar-only pass cannot see it: `2.1.237` adds six
  Cowork-specific risk categories to the auto-mode permission rubric's vocabulary —
  `cowork_delete_grant`, `cowork_folder_access`, `cowork_run_routine_now`,
  `cowork_scheduled_task_delete`, `cowork_scheduled_task_write`, `cowork_skill_persistence` — in both the
  native binary and the VM ELF. They are **inert for this harness**: the rubric is entered only on
  `permissionMode === "auto"`, which no scenario can request and no baseline pins (now pinned by
  `test/auto-mode-unreachable.test.ts`). They matter because the rubric's reach now names operations the
  harness does model, so the existing "auto-mode permission rubric is not modeled" gap has moved from
  generic infrastructure risk into Cowork territory. The agent's env-flag export table also moves
  524 → 533; none of the additions are set by the Cowork spawn.

  All three committed example cassettes are re-recorded against this baseline and stamp v12 /
  `hashFormat: "jcs1"`.

- **`--session <file>` on `replay` and `verify-cassettes`** — the escape hatch for a relocated cassette. A
  cassette stores `session:` relative to its own directory, so any move (`git mv`, a repo reorganisation, a
  copy into another project) made skill staleness permanently unverifiable with no way to say where the
  tree went; the only remedies were moving the file back or re-recording. It takes a **session**, not skill
  directories, because `staleness.hash_ignore` is a session-level field that is not stored in the cassette —
  an override carrying only directories would silently change the hash boundary. Refused for a directory
  target, for a path that is not a file, and for inline scenarios; the resolved session **and the dirs it
  produced** are echoed on stderr, since an override that silently pinned the wrong tree would manufacture
  false greens. An explicit override is trusted: a mismatch under it is reported as real drift rather than
  downgraded.

- **Duplicate manifest paths are now reported as ambiguous** instead of silently under-reported. Two mounts
  can each contribute `skills/x/SKILL.md`, and every consumer keys `fileSigs` by path, so duplicates
  collapsed to the last occurrence and the changed-file list could name the wrong file or none. Drift was
  always still DETECTED — the hash folds every entry — so this is an attribution fix, not a false-green fix.
  Exact attribution needs per-root identity in the digest, which is a hash-format epoch change.

### Fixed

- **A cassette that fails shape validation is now privacy-scanned.** `verify-cassettes` does two
  independent jobs — a privacy scan and a staleness check — and both sat behind one strict `readCassette`.
  Any document that failed shape validation returned early, so `scanCassette`, on the very next line, never
  ran: the file was reported with zero findings, which reads in every summary as `0 PII finding(s)`. That is
  a clean-looking number from an instrument that never ran, and a file too broken to replay is exactly the
  kind of file a leak arrives in. Measured on a malformed fixture carrying MCP server names, an account org
  and an agent roster: **0 findings and exit 3 before, 6 findings and exit 1 after.**

  The fix is a read-boundary **split**, not a loosening: `readCassette` stays exactly as strict (replay,
  staleness and the hash-format epoch's version/`hashFormat` invariant all depend on it). A separate
  `readCassetteForScan` reads the transcript only, requiring nothing but `events: string[]`, and
  `scanCassette`'s parameter type is narrowed to the fields it genuinely reads — so a future scan axis that
  reaches for some other field is a compile error until the projection carries it, rather than silently
  reading `undefined` off a partial document. Narrowing that type immediately turned up five fields the
  scan reads that a hand audit had missed (`userVisibleRoots`, `scenario.name`, `scenario.session`,
  `scenarioSource`, `environment.agentImage.ref`).

  The projection also **fails closed on an unrecognized tier**. `scanCassette` exempts a positively-sealed
  tier and scans everything else including `undefined`, but it tests set membership — so an arbitrary
  string (`"garbage"`, a typo'd `"containerr"`) is neither, and would have skipped the structural
  host-inventory scan entirely. The strict reader cannot produce that; this one can, because malformed
  input is its whole job.

- **The pre-commit cassette gate now fails CLOSED.** `.githooks/pre-commit` tested `hook_status` for `1`
  (block) and `3` (warn) and let every other outcome through to a successful commit, so the guard switched
  itself off — silently — on outcomes that ordinary refactors produce: exit `2` (`examples/replays/` renamed
  or emptied, or any CLI flag renamed), exit `127` (`node` off `PATH`), and a missing `dist/cli.js`, which is
  the state of a fresh clone, a `git clean -xdf`, a branch switch, and any tree with a failing typecheck
  (`npm run build` does `rm -rf dist` first). None of those fail a test elsewhere. Anything that is not a
  proven clean `0` now blocks.

  This matters more than a local convenience: `ci.yml` triggers on `push: [main]` and `pull_request`, but the
  documented workflow lands with `merge --ff-only` into `main` and pushes afterwards — so on that path the
  hook is not one layer of two, it is the only gate, and what it waves through is already public when CI
  reds.

- **An unscannable cassette no longer commits unscanned.** Exit 3 folds together unverifiable *staleness*,
  an unsupported `cassetteVersion`, and a per-file read error. Only the first means "we looked and could not
  conclude"; the other two mean the privacy scan never ran, so there is no evidence either way about host
  inventory — and a cassette recorded by a newer CLI than the committer's `dist/` committed with nothing
  having checked it. The hook now splits exit 3 by cause (`--output-format json`) and blocks on the two that
  are not staleness, in line with the `can't verify ⇒ not green` rule the CLI states everywhere else. A
  payload it cannot interpret is treated as undetermined, not as staleness.

- **The gate no longer misses cassettes by filename.** `record --out` accepts an arbitrary path and does not
  validate the suffix, so a recording written to e.g. `notes/run.json` was invisible to the hook's trigger,
  to CI's pathspec, and to `git ls-files '*.cassette.json'`. The hook trigger is now content-derived (any
  staged `.json` whose staged blob carries the `"generator": "cowork-harness"` marker), and CI cross-checks
  the suffix-derived set against the content-derived one. Separately, `resolveInputs` does not recurse, so
  `examples/replays/sub/x.cassette.json` was reachable by neither the directory scan nor the per-file loop
  (which excluded all of `examples/replays/`); the exclusion is now scoped to files *directly* in that
  directory.

- **CI scans every tracked cassette, not just one directory.** The sweep is derived from `git ls-files`
  rather than a hard-coded path, fails loudly if the pathspec ever matches zero files (an `xargs -r` sweep
  exits 0 on no matches and reads as success), and carries exactly one exclusion with its reason recorded:
  `test/evals/files/report-check.cassette.json` is an eval *attachment*, not a recording — it has no
  `scenario.session`, so `readCassette` rejects its shape before the scan can run. Measured rather than
  assumed: adding a `session` field does not make it verifiable, it converts the exit 3 into an exit 1 on
  baseline drift for a fixture that is never re-recorded.

- **The local gate is no longer laxer than the CI gate on the same directory.** The hook passed
  `--allow-email`/`--allow-domain` suppressions that `ci.yml` does not; the committed fixtures verify clean
  without them, so they are gone. Its scratch file also moved from a predictable `/tmp` path to `mktemp`, and
  a clean run now says so instead of passing in silence.

- **`sync` derived the enforced egress allowlist from a bundle-wide regex, and Desktop 1.34493.1 made that
  wrong.** `network.allowDomains` is the allowlist the harness ENFORCES (`boundaryAllowList` plus the
  session egress plan), but it was built by matching every `*.anthropic.com` / `*.claude.ai` literal in the
  whole app bundle. 1.34493.1 added a webview first-party-origin classifier — a navigation-trust tier naming
  `www.claude.ai` and `staging.claude.ai` — and the sweep pulled both into the enforced list, which would
  have permitted egress Cowork denies.

  Narrowing the sweep was investigated and rejected: on the first-party deployment there is nothing to
  narrow to. The 1p class returns `vmEgressPolicy(){return null}`, so `resolveVmAllowedDomains` falls
  through to the session's **server-delivered** `egressAllowedDomains`, and the only host the bundle
  contributes is the OTLP endpoint. `vmAllowedDomains`/`firewallAlso` are the 3p path and Desktop's own
  renderer endpoints — neither is the VM allowlist. Any bundle scan is unsound both ways: blind to
  server-delivered hosts, open to hosts that are not egress.

  `network.allowDomains` is therefore a **pinned, hand-curated list carried forward** from the newest
  committed baseline, and a new fail-closed `checkEgressContractFacts` guards the three constructions that
  justify pinning (the 1p null policy, the resolver's fall-through to its caller-supplied argument, and the
  OTLP-only augmentation) — so a real change in how Cowork computes egress hard-fails `sync` instead of
  silently rewriting the list. The baseline's `network.$comment` now records that provenance and names the
  entries that are unverified as VM egress; `network` became a `looseObject` so that note survives loading.

- **Consumers of 1.25.0 were NOT affected by this** — it is recorded because the shape is worth knowing,
  not because it shipped. While building `--session`, skill staleness, session-shape staleness, label
  provenance and the skill-hash debug dump could each have resolved a different session. The cassette-relative join was duplicated byte-identically
  in three functions and `sessionFingerprintDrift` accepted an override its only caller never passed, so
  `--session` would have verified skill content against the override while session shape still resolved the
  recorded path — reporting "clean" on an axis that hard-fails when used normally. All consumers now share
  one resolver.

- **An unresolvable session now says WHY** — missing file, unreadable/unparseable YAML, or declared mounts
  that do not exist — instead of one undifferentiated message. Those point at different fixes, and only the
  first looks like a relocation, so it also names the remedy.

### Known limitations (documented, not fixed)

- **Multi-root skill hashing is order-dependent.** `hashSkillDirs` folds roots sorted by absolute path
  while deliberately excluding a root's own name from the digest, so identical content at differently
  sorting directory names hashes differently. One axis (root ORDER) fails loudly as false drift. A second is
  worse: roots fold into one digest with no root-boundary marker, so moving a file BETWEEN roots is
  invisible — a genuine false green. Multi-root cassettes are still not refused, because none exists in
  any reachable corpus and refusing would break input nobody has; instead replay now emits a note when a
  cassette records two or more roots. Fixing it needs a hash-format epoch.
  Not scheduled: no multi-root cassette exists in any reachable corpus (32 cassettes on the widest
  denominator across three repos), and no session declares 2+ plugin/skill roots. Pinned by tests in
  `test/skill-hash.test.ts` so the eventual fix is a deliberate change.




## What's Changed
* chore(deps): patch the nanoid advisory and take the dev-dep bumps by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/121
* release: 2.0.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/122


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.25.0...v2.0.0
