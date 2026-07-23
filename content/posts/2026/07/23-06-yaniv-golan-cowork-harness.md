---
title: cowork-harness
date: 2026-07-23 06:08:52 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action creates a headless, scriptable, CI-ready test harness for testing Claude Cowork skills. It reproduces Claude Cowork's observable runtime contract closely enough to test the skills you write across multiple scenarios and in CI environments, without using the locked Desktop app. The action supports various fidelity tiers including replay, lint, container, hostloop, and microvm, each requiring different prerequisites such as a running agent, a Claude token, and a Docker or Lima runtime.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action creates a headless, scriptable, CI-ready test harness for testing Claude Cowork skills. It reproduces Claude Cowork's observable runtime contract closely enough to test the skills you write across multiple scenarios and in CI environments, without using the locked Desktop app. The action supports various fidelity tiers including replay, lint, container, hostloop, and microvm, each requiring different prerequisites such as a running agent, a Claude token, and a Docker or Lima runtime.

## What's Changed


### Added

- **`migrate-run-dir` — convert pre-layout run dirs to the per-turn `turns/<N>/` layout, in place.**
  A run dir written before the per-turn layout keeps `result.json` / `run.jsonl` / `trace.json` /
  `resources.jsonl` at its root. Once the legacy read layer is removed, those dirs become unreadable to
  `verify-run` / `diff` / `inspect` / `stats`; this command converts them so the history survives the
  change instead of having to be re-run.

  **Dry-run by default** — `--write` applies, and `--scenario <name>` scopes the run to a single
  scenario so a rollout can be staged: migrate one, verify it, then do the rest. It renames rather than copies, so file mtimes (the recency
  signal `stats` and `status --latest-for` rank by) survive untouched, and it restores directory mtimes
  afterwards. An interrupted run records a journal outside the run dir and is finished by re-running the
  command. Anything it cannot resolve unambiguously — a root artifact that is neither a duplicate nor
  placeable, telemetry whose turn boundary cannot be dated or that spans more than two turns or whose
  samples would land in a turn no transcript or result evidences, a dir with
  no transcript at all — is **refused and named**. The one inference it makes is positional: an EMPTY file
  has no content to attribute, so it follows its position to an EVIDENCED turn (its own, by name or by
  rootArtifactTurn when a root transcript or result exists to move there) — never one it would mint. The
  same never-mint rule holds on the content path: a stray `resources.turn-N.jsonl` cannot manufacture
  `turns/N/` whether it is empty or carries samples, and a fully-archived dir's trailing telemetry cannot
  manufacture the next turn out of arithmetic alone. Exit `1` when anything was refused, so a CI caller sees unfinished work.
  After a `--write` that migrated or recovered anything, it prints a reminder to rebuild the index
  (`cowork-harness stats --reindex`), since the index keys a row's timestamp off `result.json`'s mtime and
  the files have moved.

- **`prune` skips scenarios with a migration in flight.** Between an interrupted migration and its
  recovery a run dir's mtime reflects the migration, not the run — and `prune` ranks keep-slots by that
  mtime, so it could evict a newer run in favour of a half-migrated older one. It now defers those
  scenarios and says so.

- **`critique` surfaces the GRADED turn's `outcome` and `skillHash` in its own report**
  (`gradedOutcome` / `gradedSkillHash` in JSON, and in the text header), and writes the graded result
  under the stable name **`result.graded.json`**. `critique` runs two turns into one run directory, so
  after the resume `result.json` is the *reflection* turn's and the graded turn is archived as
  `result.turn-1.json` — the correct file to read was the *lower* number, the opposite of every other
  multi-run convention. A harvester reading `result.json` silently ingested the reflection turn's numbers:
  valid-looking, wrong, and unsignalled. Reported by a consumer building exactly that harvester; a
  documentation-only fix would have helped only readers who already knew to look.

- **`exec_infra_error` verdict signal (`WARN`)** — a container `exec` that failed for infrastructure
  reasons, as distinct from the fail-severity `infra_error` (a supervising process died). One failed
  command no longer contaminates a whole run's evidence.
- **`RunResult.infraErrors[].source` is now an enum** — `hostloop-sidecar` / `hostloop-exec` /
  `egress-sidecar`. The origin is what drives severity, and it is carried through the frozen cassette so
  replay reaches the same verdict as the live run.
- **Capability use-scan health** — an unreadable or partially unparseable `events.jsonl` is now reported
  as a degraded scan instead of being indistinguishable from a complete scan that found nothing.

- **Every `critique` limitation is now tagged with WHY it exists**, not just what it is — `structural`
  (permanent, architect around it), `unverified` (unproven, **not** known-impossible), `deliberate` (a
  design choice), `not-built` (simply absent). The distinction a reader needs is rarely "what can't it
  do" but "should I design around this forever, or wait for it?" **Container-tier-only is `unverified`**:
  the resume-continuity proof was run against the container tier's Linux ELF, and hostloop runs a
  different (native) agent binary, so the proof does not transfer — nothing suggests hostloop would fail,
  nobody has run it. **Lifting the pin needs BOTH** a live resume-continuity proof at hostloop against its
  native binary AND the follow-on work that proof unblocks (unpinning three hard-coded container sites,
  stamping the tier on the session manifest so a cross-tier resume fails loud, and plumbing host-write
  consent) — evidence alone is not sufficient. A consumer read that pin as permanent and built a second
  test lane around it. The tags appear in `critique --help` and [docs/critique.md](./docs/critique.md),
  generated from one source.
- **`critique --help`'s KNOWN LIMITATIONS block is generated** from that source, and CI asserts the
  shipped binary's output, the docs bullets, and their tags all agree.

### Changed

- ⚠️ **BREAKING: per-turn run-directory layout, single shape — the root-level `result.json` compatibility
  copy is REMOVED.** A run directory that holds several turns (any `--resume`, and every `critique`) writes
  each turn's `result.json`, `run.jsonl`, `trace.json` and `resources.jsonl` into **`turns/<N>/`**, once,
  under its final name — nothing is renamed or overwritten as later turns arrive. `chat` now goes through
  the same layout too (always `turns/1/` — a `chat` session mints a fresh dir per invocation and never
  resumes). **`<outDir>/result.json` no longer exists — there is no root compat copy of any per-turn
  artifact, on ANY run dir.** Read `turns/<N>/result.json` directly (`turns/1/` for a single-turn run), or
  — for `critique` — the unchanged `result.graded.json` / `trace.graded.json` role aliases. Cumulative
  streams (`events.jsonl`, `timeline.jsonl`) and session state are unchanged, so `critique`'s byte-offset
  turn-isolation proof and cassette capture are unaffected.

  **Two prior shapes are now REFUSED, loudly, by name, instead of being silently misread:**
  - a **pre-layout** run dir (written before `turns/<N>/` existed: root `result.json`/`run.jsonl`, or a
    name-mangled `result.turn-<N>.json` archive, no `turns/`);
  - a **mixed** run dir (a pre-layout dir resumed under CURRENT code before this release — `turns/` present
    *and* a stray root/archived file).

  `verify-run`, `inspect`, `scaffold`, `diff`, `status --latest-for`, and a resumed `--session-id` all
  refuse these with a message naming the shape found and pointing at `trace <dir>` — which still works
  fully, since every one of its views derives from `events.jsonl`, which never moves. `stats --reindex`
  counts them as skipped and names the remedy rather than dropping them from the index quietly.

  **Migration: `cowork-harness migrate-run-dir`** converts a pre-layout dir in place (dry-run by default),
  preserving the file timestamps `stats` and `status --latest-for` rank by. `diff` and
  `status --latest-for` are called out because their pre-refusal behaviour was the dangerous kind: `diff`
  reported two genuinely different runs as `identical` and exited 0, and `status --latest-for` could
  select a *different* run than the newest and report its verdict — a CI script reading `.verdict.pass`
  got a green light for a red run.

  Previously the latest turn lived at the root while earlier ones were name-mangled archives, so a file's
  name depended on whether a later turn ever happened; that shape produced a wrong-turn read, a destroyed
  trace, and a dropped index row — this release's read-side (`turnArtifactPath` / `listTurns` in
  `turn-layout.ts`, with the old `readTurnResult` deleted for having zero production callers) no longer has
  a legacy-resolving branch at all, so that class of bug is now unrepresentable rather than merely fixed. The Python SDK's `_latest_run_jsonl` likewise now raises loudly
  on a pre-layout dir instead of silently falling back to a root `run.jsonl` that (for any current-layout
  dir) is a path to nowhere.

- **Platform baseline synced to Desktop 1.24012.1** (`baselines/desktop-1.24012.1.json`, now what
  `baseline: latest` resolves to). The staged **agent binary is `2.1.217`** (native app + VM ELF, new
  sha256 for each). The baseline moved in two steps this release — an earlier sync to **1.24012.0** (agent
  `2.1.215`), then to 1.24012.1 — with **no prompt, spawn-env, or egress-allowlist drift across either**:
  `spawn.env` is byte-identical to 1.22209.3, the same 15-domain allowlist and `gvisor` mode carry over
  (the effort map is the one spawn field that changed — see the sonnet-5 delta below), and the
  `deriveSpawnEnv` / `checkSpawnContractFacts` oracles stay green against the live asar. The
  substantive deltas all came from the 1.24012.0 step and carry forward unchanged: `claude-sonnet-5` joins
  the per-model effort map (`low|medium|high|xhigh|max`, recommended `medium`, modes `auto`); the
  `coworkRuntimeConfig` gate drops its `pluginsFullSyncStalenessMs` key (never modeled here, inert); and
  the dormant `autoModeOverridesAlwaysAllow` sentinel fired — see below. 1.24012.1 itself adds only the
  agent bump: the `2.1.217` binary can emit the VCS SDK events `code_change_published` /
  `vcs_state_changed` (SDK floor `2.1.216`), which the harness surfaces as a `system_event` (its existing
  graceful degradation of an unmodeled system event, unchanged), and the binary's native skill-discovery
  enable predicate widened to three branches — still inert here, since real Cowork's model-visible surface
  is the Desktop SDK-MCP discovery servers, not the native tools. The example cassettes'
  `fingerprint.baseline` tracks the new baseline.
- **The `autoModeOverridesAlwaysAllow` gate (`4200321681`) flipped absent → on** (`source: force`) and was
  revisited as its pin intended. It stays **unmodeled, deliberately**: binary-verified in 1.24012.0, both
  call sites only override an *already-existing* always-allow decision — the session rule cache
  (`approvedToolNames`) and scheduled-task auto-approval — each further gated on `permissionMode` and
  `isDestructiveConnectorTool`. The harness persists neither, so it already prompts wherever the gate makes
  Cowork prompt; enabling it moves real Cowork *toward* harness behavior rather than away. Revisit only if
  the harness gains a persistent per-tool approval cache.
- **The staged agent (`2.1.217`) enforces sub-agent fan-out caps, so `dispatch_count_max` is now framed as
  a budget UNDER Cowork's cap, not a reproduction of it.** Because the harness spawns the real binary, a
  run that fans out past the agent's caps now errors from the binary itself: a **concurrent** cap
  (`CLAUDE_CODE_MAX_CONCURRENT_SUBAGENTS`, default 20; error `subagent_concurrency_cap`, new in 2.1.217)
  and a **per-session** cap (`CLAUDE_CODE_MAX_SUBAGENTS_PER_SESSION`, default 200; error
  `subagent_count_cap`, present since ≤2.1.215). The scenario schema's `dispatch_count_max` description,
  the `assert` over-budget message, and SPEC §10 no longer claim "Cowork imposes no in-conversation
  Task-dispatch cap" — that claim was stale. The harness does not reproduce the caps; it inherits them by
  running the binary.
- **A host-loop `exec` infrastructure failure now WARNS instead of failing the run.** ⚠️ **Upgrade note:**
  a run that previously exited `1` because one `docker exec` failed will now exit `0`. A dead sidecar
  still hard-fails. Known residual, documented in `docs/scenario.md`: if *every* exec failed the agent ran
  nothing and the run still only warns — inspect `result.infraErrors` when a run looks suspiciously empty.
- **A model-requested bash `timeout_ms` expiry is no longer classified as an infrastructure failure.**
  The model now receives its command's own partial output with `Command timed out after <duration>`
  merged into stderr — matching real Cowork, verified against the staged agent binary — instead of an
  opaque `[infrastructure error: see run log for details]`.
- **The agent's spawn env now always carries a normalized IANA `TZ`** — matching Desktop, which injects
  `Intl.DateTimeFormat().resolvedOptions().timeZone` unconditionally. Previously `TZ` was forwarded only
  when the host shell exported it, and forwarded raw, so a host with no `TZ` set — or a legacy/non-IANA
  export (`US/Eastern`, `EST5EDT`) — diverged from real Cowork's date/"today" rendering inside the agent.
- **The `tool_available` assertion now names its evidence limit.** It evaluates against the run's
  *eagerly-loaded* tool set (the SDK init manifest in `result.json`); a factory-deferred tool — e.g. the
  skill-discovery MCP tools, loaded on demand via a `ToolSearch` round-trip — can be genuinely available in
  the run yet miss here, a false negative. The assertion still fails on a miss; the failure message now
  states that eagerly-loaded scope rather than implying provable unavailability.
- **An explicitly requested `--dotenv` file now fails loud.** ⚠️ **Upgrade note:** an unreadable file, or
  a path that is a directory, previously fell through to lower-precedence `.env` sources *while still
  printing a success line* — so a typo'd path silently ran against the wrong credentials. It is now a
  usage error. Automatic `.env` discovery is unchanged (still best-effort).
- **`diff` no longer reports `identical` when only one side has an artifact manifest.** ⚠️ **Upgrade
  note:** such a comparison previously exited `0`; it now exits `1`, because unavailable evidence is not
  evidence of equality. Both-sides-missing still does not veto identity. The `--output-format json`
  envelope gained an `artifactsAvailability` key.
- **`stats --reindex` merges rows by per-completion identity** (`outDir` + a new `turn` field) rather than
  by `outDir` alone, and reports rejected symlinked run directories.

### Fixed

- **`verify-run` now REFUSES a multi-turn run directory** instead of certifying the wrong turn. Root
  `result.json` is the latest turn; on a `critique` directory that is the *reflection* turn while the
  scenario describes the *graded* one. Previously the cumulative gate scan false-FAILED on the other
  turn's gates — wrong, but loud. The refusal names `result.graded.json` / `turns/1/result.json` so the
  caller can still reach the graded turn.
- **`trace` no longer mixes turn scopes.** After timeline reads became turn-scoped, `--view
  tool-durations` showed the latest turn while the tools/questions/dispatches views still showed every
  turn — two views of one run directory describing different scopes. All views are now the latest turn,
  and a `::notice::` reports when earlier turns exist rather than hiding them. Its cache-read footer and
  gate-provenance (`answeredBy`) views also now say when a result is not turn-addressable (a pre-layout
  dir) instead of silently omitting the cache-read ratio / labels.
- **`prune` no longer demotes an unmigrated pre-layout run dir to the junk tier.** Its real-run predicate
  keyed on `hasTurnDirs || events.jsonl`, reasoning only about what current writers produce — but `prune`
  ranks *history*, including the legacy dirs `migrate-run-dir` exists to preserve, so a legacy dir with no
  `events.jsonl` could be evicted ahead of an empty scaffold. It now also counts a `legacy` / `mixed` shape
  as a real run. (Distinct from the in-flight-migration deferral above — this is about which dirs count as
  real at all.)

- **A resumed turn was judged on the PRIOR turn's evidence — three wrong-verdict paths.** `events.jsonl`
  is append-only across turns with no per-turn marker, and three whole-file scanners decide a run's
  outcome: `scanEvents` (outputs-delete / host-path-leak → fail signals, and an authored
  `no_delete_in_outputs`), `findUngatedPathToolCalls` (→ a run-level `error` at hostloop), and
  `detectCapabilityUse` (→ `missing_capability`, a fail signal, which fires on the default lean image).
  So on any `--resume` — and every `critique` reflection turn — turn 1's delete, gated tool call, or
  capability use FAILED turn 2. A turn-start marker now scopes all three to the current turn.
  `resources.jsonl` had the same shape (turn 1's peak RSS judged against turn 2's `max_peak_rss_bytes`)
  and is archived per turn. Single-turn runs write no marker, so their `events.jsonl` is byte-identical
  and no cassette is affected. Missing marker ⇒ whole-file scan, i.e. fail-closed.

- **A resumed turn's telemetry included the PRIOR turn's events, and could produce a false PASS.**
  `timeline.jsonl` is append-mode with a fresh header per turn, but `readTimeline` returned every line
  after the first as an event — so on any `--resume` (and every `critique` reflection turn) the current
  turn's `toolDurations`/`skillActivity`/`subagents` folded in the previous turn's tool calls. Because
  the **`skill_tool_used` assertion** evaluates against that same `skillActivity`, a turn-1 skill window
  could satisfy a turn-2 assertion. The reader now returns only the current turn's segment. The file
  stays one append-only stream, so `critique`'s byte-offset turn-isolation proof is unaffected.

- **A resumed turn destroyed the prior turn's `trace.json`.** Because it is rebuilt and overwritten on
  every completion, the earlier turn's trace was deleted rather than preserved, so a `critique` lost the
  graded turn's trace entirely. Each turn now owns its own `turns/<N>/trace.json`, written once and never
  overwritten, and `critique` additionally writes **`trace.graded.json`** beside `result.graded.json`.
- **`stats --reindex` dropped every non-latest turn when rebuilding from the runs tree.** It read only the
  root `result.json` per run directory, so a resumed session's earlier turns vanished — and on a
  `critique` directory the root file is the *reflection* turn, so it was the **graded** rows that were
  lost. Every turn under `turns/<N>/` is now indexed as its own completion; `result.graded.json` — a
  root-level copy of the graded turn — is deliberately not matched, so it cannot double-count. A dir that
  has not been migrated is counted as `skippedLegacy` and reported with the remedy, never dropped
  silently.

- **An ambient `GIT_DIR` silently computed the wrong skill file set.** Git hooks export `GIT_DIR` (and
  `GIT_INDEX_FILE`) into every child process, and with `GIT_DIR` set but no `GIT_WORK_TREE` git stops
  inferring the work tree from `cwd` and treats `cwd` as the repo root. `gitTrackedSet`'s
  `rev-parse --show-toplevel` probe therefore still succeeded — so the not-a-repo raw-walk fallback never
  fired — while `git ls-files -- .` returned the **entire repo index as root-relative paths** instead of
  the directory-relative ones. Measured on this repo: 2 tracked files became 625 wrong ones. That set
  feeds both `skillHash` and the mount-copy filter, so any run invoked from a git hook (or from CI that
  exports `GIT_DIR`) got a wrong hash and a mount filter pointed at paths that do not exist under the
  skill dir. The visible symptom was the repo's own pre-commit hook reporting committed example cassettes
  as `[stale] skill files changed since record` on every parity sync. `skillCommit` had the same defect:
  `git -C <dir>` is overridden by an ambient `GIT_DIR`, so every skill dir resolved to that foreign repo's
  HEAD — recording a foreign commit as the skill's provenance and masking dirs that are genuinely in
  different repos. Both call sites now spawn git with `GIT_DIR` / `GIT_WORK_TREE` / `GIT_INDEX_FILE`
  stripped, via one shared helper so they cannot drift. `run-index`'s `gitInfo` and `doctor`'s worktree
  probe deliberately keep inheriting — they are asking about the *ambient* repo.
- **`stats --reindex` destroyed multi-turn history.** Every `--resume` turn — and `critique`'s task +
  reflection pair — writes to one `outDir`, so keying by directory collapsed N completions into one,
  silently changing run counts, pass rates and costs.
- **Host-loop sidecar failures never reached the verdict.** They were appended straight to `events.jsonl`,
  which no live drive re-reads, so a dying sidecar left the run green; a signal-only termination (OOM,
  `SIGKILL`) was recorded nowhere at all.
- **`result.json` was written non-atomically** at all three producers, so an interrupted write could leave
  the canonical record truncated.
- **Corrupt index rows were blind-cast**, letting one malformed row crash `stats` or fabricate a
  pass/cost value; `reindex` also followed symlinks out of the runs root.
- **`scaffold` turned unavailable artifact evidence into "no artifacts"**, permanently encoding a false
  "this run produced nothing" claim into a generated scenario.
- **`critique` treated a vanished turn-1 evidence file as genuinely empty evidence** rather than an
  integrity failure. A stream that was legitimately zero bytes at capture is still reported clean.
- **`critique`'s exit-code table omitted `1`.** Exit `1` is reachable on operator interrupt
  (SIGINT/SIGTERM); a sweep wrapper treating it as impossible misreads a cancelled run as a crash.
- Documented that after critique's resume, `result.json` is the **reflection** turn's result — the graded
  turn is archived as `result.turn-1.json`. Reading the wrong one yields a valid-looking wrong number.



## What's Changed
* release: 1.7.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/61


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.6.0...v1.7.0
