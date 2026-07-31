---
title: cowork-harness
date: 2026-07-31 22:13:38 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.14.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, cowork-harness, automates the testing of Claude Cowork skills without using the locked Desktop app. It creates an environment that closely reproduces the observable runtime contract of Cowork across multiple scenarios and CI jobs, including limitations such as sealed filesystem, default-deny egress, and MCP-only cross-boundary. The action supports various tiers of fidelity, from quick `replay` runs to full-fidelity testing with a real model using Docker or Lima for sandboxing.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.14.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action, cowork-harness, automates the testing of Claude Cowork skills without using the locked Desktop app. It creates an environment that closely reproduces the observable runtime contract of Cowork across multiple scenarios and CI jobs, including limitations such as sealed filesystem, default-deny egress, and MCP-only cross-boundary. The action supports various tiers of fidelity, from quick `replay` runs to full-fidelity testing with a real model using Docker or Lima for sandboxing.

## What's Changed


### Added

- **`critique` accepts `--fidelity cowork`.** It was refused on the grounds that `cowork` resolves
  dynamically and "would make the graded tier baseline-dependent" — conservative rather than necessary.
  The determinism that actually matters is *within* a critique: both turns must run at the same tier,
  because a cross-tier `--resume` is blocked fail-loud by the session-manifest fidelity stamp. So
  `cowork` is now resolved **once, before either turn is spawned**, and both turns receive the resolved
  literal — the invariant is preserved exactly, and the literal `cowork` never reaches a child. This is
  the same argument that lifted the container-only pin to `container|hostloop` in 1.12.0. The resolution
  reads the pinned baseline's loop gate exactly as a plain run does, echoes `[loop] cowork → <tier>` to
  stderr, and is reported as **`requestedFidelity`** next to the tier that ran, so a report never reads
  as though you named the tier yourself. It also accounts for `--dotenv`: the child CLI loads that file
  before deciding, so its `CLAUDE_FORCE_HOST_LOOP` is read here too (read, **not** applied — loading the
  file into critique's own env would hand every variable in it to the evaluator's spawned CLI). An
  unreadable baseline is rewrapped into a sentence naming both the cause and the escape hatch, rather
  than surfacing a bare `ENOENT` — a worse diagnostic than the refusal it replaces would have made this
  a net regression for the person hitting it. `microvm` and `protocol` stay refused, each with its own
  reason. **`chat` still refuses `cowork`** — its fidelity is fixed at parse time with no gate
  resolution at all, which is a differently-shaped change; deliberately out of scope here.
  The related gap on the **tier** axis — `stats` averaging runs from different tiers together without
  saying so — is closed in this same release; see *"`stats` warns when an aggregate spans more than one
  fidelity tier"* below. It was reachable by passing different `--fidelity` values explicitly and was not
  introduced by this change.

- **Scenarios can declare which Cowork lane's delivery contract to test against — `lane: local|remote`.**
  Cowork runs a session in one of two lanes, chosen per session by the user ("Run this task: In the cloud /
  On your computer"), with cloud the default for new sessions — and they disagree about what *delivered*
  means. On `remote`: location delivers nothing (a remote container has no auto-delivering outputs
  directory and is reclaimed at session end), so `user_visible_artifact` fails as unverifiable rather than
  passing on a file the user never receives; `present_files` is not served at all, because a local MCP
  server cannot reach a remote session; and the two `present_files`-shaped assertions fail as can't-verify.
  Default `local` leaves every existing scenario unchanged. Orthogonal to `fidelity` (isolation tier) and
  `execution` (where the run happens) — a `lane: remote` scenario still runs locally. Scoped to delivery
  semantics: the remote device bridge (`device_bash`/`device_commit_files`) stays deliberately unmodeled,
  since emulating it faithfully would mean real command execution and real writes on the operator's
  machine on behalf of a simulated session. **A `lane: remote` scenario that also asserts
  `present_files_called`, `no_scratchpad_leak` or `user_visible_artifact` is rejected at LOAD time** —
  those keys cannot pass on that lane, and an authored assertion that can never pass should cost a config
  error rather than a paid run that fails at assertion time.

- **`ended_with_question` now consults the lane too.** This pre-existing `warn` signal treated the presence
  of an `output`-class file as evidence the run produced something, and stayed quiet on that basis. That
  reasoning holds only where location delivers: on `lane: remote` an `output`-class file has reached nobody,
  so it no longer suppresses the warning — which is the lane where "the agent ended by asking a question
  instead of finishing" matters most. Behaviour on `lane: local` (the default) is unchanged.

- **A run now warns when the skill produced deliverables it never delivered.** New `warn`-severity verdict
  signal `undelivered_deliverables`: files the run produced but never got to the user. **What counts
  depends on the lane**, because what "delivered" means does: on `local`, where the outputs directory
  delivers by location, a candidate is a file written outside every user-visible root; on `remote`, where
  location delivers nothing, every produced file is a candidate — a file sitting in `outputs/` included. It
  fires without any assertion being written — which is the point, since `present_files_called` covers the
  positive case only when an author thought to ask for it, and the runs that most need this are the ones
  where nobody did. Observed motivating case: a real run created 23 files, delivered 3, and reported
  success. On a remote Cowork session an undelivered file is destroyed with the workspace; on a local one
  it persists but stays invisible — either way the user does not get it. **Silent when the evidence cannot
  answer the question** — no workspace walk, a tier that runs no scratchpad walk, absent delivery
  telemetry, or a resumed turn (where the scratchpad still holds files delivered on an earlier turn,
  because `present_files` copies rather than moves) — since "cannot tell" must never read as "clean".
  Opt out per scenario with **`allow_undelivered_deliverables: true`** when a skill legitimately leaves
  intermediates, caches or downloaded inputs behind; the signal is warn-only and never fails a run alone.
- **`result.json` gains `scratchpadEvidenceComplete`** — whether a complete scratchpad walk observed this
  run. It is what lets the warning above distinguish "nothing was left undelivered" from "we could not
  tell", so a consumer reading the absence of that signal knows which of the two it means.
- **`present_files` is served at the `hostloop` tier.** Real Cowork registers the tool unconditionally and
  `alwaysLoad`, and its handler has both a VM branch and a host-loop branch — and production runs host-loop
  mode. The harness served it only at `container`, so its parity-claiming tier was one `alwaysLoad` tool
  short of production's toolset, which can change how a model interprets "deliver this". The hostloop
  handler mirrors production's own host-loop branch: it validates and **passes the path through without
  promoting** (there is no scratch→outputs copy at that tier). Every path is checked with `lstatSync`
  (symlinks and non-regular files rejected outright) then `realpathSync` + containment under the session's
  outputs dir or a connected folder; one rejected path aborts the whole call, as production does, rather
  than partially succeeding. `present_files_called` now works at `container|hostloop`.
  `no_scratchpad_leak` stays container-only on the merits — hostloop never promotes, so there is no copy
  to leak — and its message now says that instead of implying the tool is missing.
- **`workspaceFiles[].class` gains `scratchpad`** — files the agent wrote outside every user-visible root,
  the class the field previously left unimplemented. This is what makes the warning above computable: the
  verdict sees only `RunResult`, and the undelivered side of the ledger reached it from nowhere. Existing
  consumers filter by class and are unaffected; the visible-root walk is deliberately not widened, so
  `no_unexpected_files` (which walks the same prefixes itself) cannot change verdict as a side effect.

- **`stats` can query and group by skill generation.** `--skill-hash <prefix>` and `--label <tag>` narrow
  to one generation of the iterate-across-fixes loop, and `--group-by scenario|skill-hash|label` splits a
  scenario per generation instead of aggregating across them — the A/B comparison in one command instead
  of a hand-written `jq` pipeline. The index has carried `skillHash`/`runLabel` since they were added *for*
  a group-by step; until now nothing could query them. `--skill-hash` matches the 12-char prefix the index
  stores or the full hash from `result.json` (6-character floor). `--last <n>` now windows per **group**,
  which is unchanged at the default grouping.
- **`stats --runs` lists the individual runs behind each summary** — timestamp, verdict, `runId`,
  `skillHash`, `runLabel`, cost, duration, and `(pruned)` when the run dir is gone — so which generation a
  run belonged to is visible without opening its `result.json`. No command listed individual runs before
  (`list` lists platform baselines; `stats` only aggregated). It selects exactly the rows the summary above
  it aggregated, through the same filter path, and adds a `runs` array to the JSON envelope only when asked.

- **`stats` warns when one aggregate spans more than one skill generation.** Runs from before and after a
  skill change accumulate in the same scenario directory, so a plain `stats <scenario>` could silently
  average pre-fix and post-fix runs into one line. Each summary now carries `distinctSkillHashes`, and a
  window > 1 emits a `::warning::` on stderr naming both remedies. Rows lacking the grouped-on field (the
  `chat` lane, a run that mounted no skill) are excluded from grouping and reported as `hashlessRuns`,
  never bucketed under a blank key.
- **The single-run verdict footer reports the run's cost.** Previously only a `--repeat` batch printed a
  total, leaving the open-ended lane — where spend is least predictable — silent. Absent cost telemetry
  prints nothing rather than `$0.0000`, and the replay lane is suppressed (a replay carries the *recorded*
  cost of the original paid run; printing it would misreport fresh spend).
- **`--max-budget-usd` works without `--repeat`.** On a single run it is a **pre-flight** refusal: if the
  scenario's own cost history exceeds the cap, the run is refused before spending — on the plain, the
  directory-sweep, and the `--matrix` paths alike, and for a sweep every scenario is checked before any of
  them runs. There is no live cost signal to abort a run mid-flight on — `cost.usd` arrives only with the
  SDK result message — so with no priced history it warns loudly and proceeds uncapped rather than
  pretending the cap is enforced. `--allow-budget-stop` still requires `--repeat`: it modifies a batch
  verdict. `critique` still rejects the flag, now for an accurate reason: it spends across four workloads,
  so a cap pre-flighted from single-run history would gate on the wrong number.

- **`lint` flags `lane: remote` against the assertion keys the runtime rejects.** *(Author-time
  enforcement of the load-time rule described under the `lane` axis above — same three keys, checked
  before you spend rather than at load.)*
  `present_files_called`, `no_scratchpad_leak`, and `user_visible_artifact` are refused at scenario
  **load** time on that lane — it serves no `present_files` and delivers nothing by location, so these
  keys can only ever report cannot-verify. The linter previously said nothing, so the first signal was a
  run that refused to start. New finding tag `lane-remote-incompatible-key` (ERROR). The tier rules
  (`container-only-key-off-container`, `present-files-key-off-tier`) are suppressed on `lane: remote`,
  since the lane check fires first regardless of tier and their "use a different tier" advice cannot help
  there. `manifest-needs-snapshot` is suppressed too, but only for `user_visible_artifact` — the one key
  that is both manifest-backed and lane-rejected — since the ERROR above already covers it and a
  redundant INFO about a key the scenario can never load with would just be noise.

- **`stats` warns when an aggregate spans more than one fidelity tier, and `--group-by fidelity` splits
  it.** `container` and `hostloop` runs of one scenario were averaged together silently — the same
  unlike-things gap the skill-generation warning covers on the other axis, and the one the 1.14.0
  `--fidelity cowork` entry named as still open. Each summary now carries `distinctTiers` and `tiers`,
  computed over `effectiveFidelity ?? fidelity` — the tier that actually **ran** — a total key, so nothing
  is ever excluded from this grouping. The warning names the tiers and the remedy, and fires independently
  of the skill-generation warning. `--group-by fidelity` splits per effective tier, and `totalUsd` splits
  with it — per-tier cost in one command. A `--fidelity` filter on `stats` was considered and deferred: a
  flag is covered surface (removing it later would be a MAJOR bump), and its only unique capability —
  comparing generations within a single tier — has no demonstrated workflow yet. `stats --runs` gains the
  same field per row: `RunListEntry.fidelity`, computed by the same `tierOf` helper the summary grouping
  keys on, so a listed run's tier can never disagree with the summary aggregating it. Total by
  construction — every row has one — unlike `skillHash`/`runLabel`, which are conditionally omitted.
  JSON-only: the text-mode run line (`formatRunLine`) is unchanged.

### Changed

- **The supported Node floor moves from 20 to 22.** Node 20 reached end-of-life on 2026-04-30 and
  receives no security patches; `engines` and `doctor` both claimed it was fine. `doctor`'s Node check
  **fails** on 20 and its title reads `Node ≥ 22`, so `doctor` exits 1 and any script gating on it stops.
  Other commands are not gated on the Node version and behave as before. For anyone installing the
  harness **as a dependency**, `engines` is advisory: npm warns (`EBADENGINE`), pnpm honours
  `engineStrict` (default off) for dependencies, Yarn 1 enforces (`--ignore-engines` bypasses), Yarn
  2+/Berry does not check it. Installing on Node 20 therefore keeps working and `doctor` is the gate that
  reports the problem. (Measured against pnpm 10.33: it warns and proceeds by default, including for a
  project's own `engines`; set `engine-strict=true` to make it fail. pnpm's own documentation still
  describes the project case as unconditional — the observed behaviour is what is stated here.)
  **Upgrade to Node 22 or 24 before taking this release.** The agent sandbox's own pinned Node is
  unchanged: it tracks what Cowork ships, not what is current.

- **CI runs on Node 24 (Active LTS), with a dedicated job pinned to 22** so the declared floor is
  exercised rather than assumed; that job gates the merge context. The packaged Action installs Node 24 —
  note it uses a composite action, so steps after it in your job also see Node 24.

- **If you copied the CI recipe from the shipped skill, update the runner in YOUR repo.** The recipe in
  `references/ci-recipe.md` pinned `node-version: '20'` and now pins `'24'` — but that only fixes the
  copy we ship. A workflow pasted from an earlier release still runs Node 20 in your repository, where
  this release's CLI will fail `doctor` and warn `EBADENGINE` on install. Bump `node-version` to `'22'`
  or `'24'` wherever you pasted it.

### Fixed

- **`stats` under-reported a `critique`'s cost by 65–84%; it now reports a group `total=`.** A critique's
  three index rows partition its spend disjointly — the two graded turns carry their own, and the roll-up
  row's `costUsd` is the two evaluator passes *only*, set that way so the sum is exact and double-counts
  nothing. But `stats` dropped every roll-up row before any filter ran, so the one consumer that sums
  `costUsd` never saw the partition. A live critique costing **$1.0588** was reported at **$0.368**
  unfiltered and **$0.1708** under `--label`. `critiqueTotalUsd`, added in 1.13.0 for exactly this, had
  writers, a type guard and tests — and no reader. Root cause: one predicate answered two different
  questions. *"Is this a run?"* is correctly **no** for a roll-up (it has no verdict or duration, and
  counting it drags `passRate` toward 1); *"does this carry spend?"* is **yes**, and the same gate said no.
  Those are now separate predicates. **Every count, rate and percentile is unchanged** — cost `p50`/`p95`
  stay per-run, since the median of a graded turn, a reflection turn and an evaluator pair is not a typical
  run cost. The new **`totalUsd`** is the figure that prices a critique whole. It is `undefined`, never
  `$0.0000`, when nothing was priced, and new **`unpricedRuns`** counts rows with no cost telemetry so a
  total that is a floor says so. **`--max-budget-usd` is deliberately untouched**: its pre-flight asks
  "will my next RUN breach this cap", so it still reads run-only history — feeding it evaluator spend would
  have refused runs costing a fifth of the cap. Text output appends `total=$X` after the cost percentiles
  (and `(N unpriced)` when relevant), so a consumer scraping the existing line keeps matching.
- **A `--label`-filtered total is now complete.** `--label` reaches a critique's task turn but deliberately
  not its reflection turn (labelling it would inject a near-always-green row into the labelled group and
  inflate `passRate`), so a label-filtered set held turn 1 + the roll-up and silently dropped turn 2 — 19%
  light. Rows are now re-admitted by shared `runId`, since a critique is one session. Those re-admitted
  rows count toward **cost only** — never `runs`, `passRate` or any percentile — so the pass-rate property
  the labelling rule protects is preserved exactly. Expansion applies only to the identity filters
  (`--label`, `--skill-hash`) and never re-admits a row excluded by `--scenario`/`--since`/`--baseline`/
  `--branch`. `--skill-hash` needed nothing: all three rows already carry the hash.

- **The egress proxy binds loopback by default, instead of the wildcard.** An unqualified `listen(0)`
  bound `*:<port>`, and on macOS `SO_REUSEADDR` lets that coexist with an existing `127.0.0.1:<port>`
  listener — so the ephemeral allocator could hand the proxy a port an unrelated long-lived process
  already held on loopback, and the kernel would route every `127.0.0.1` connection to the **more
  specific** listener. The proxy silently received nothing; the caller waited for a
  `200 Connection Established` that never came. Root-caused from an intermittent test failure (~0.13% per
  proxy start on a machine with 21 parked loopback listeners), reproduced 12 times, and verified at 0
  failures in 5600 iterations after the change. A collision is now a loud `EADDRINUSE` rather than a
  silent steal. The two places a guest dials the proxy over a real interface — the microVM host proxy and
  the Docker sidecar — pass `host: "0.0.0.0"` explicitly, so production behaviour is unchanged. **The
  sidecar image tag moves to `cowork-egress-proxy:4`** so existing installs pick up the new CMD.

- **The egress-proxy image builds on a supported Node base, and existing installs actually receive it.**
  It was built `FROM node:20-slim`. Both `ensureProxyImage` and `doctor` reuse that image on **tag
  existence alone**, so changing the Dockerfile would have reached nobody who had already built it —
  their machine would keep serving egress from an end-of-life base while `doctor` reported it healthy.
  The tag therefore moves to **`cowork-egress-proxy:4`** (via `:3`, which never shipped — see the egress
  bind fix below), which makes the next run rebuild it automatically. **Reclaim any old images with
  `docker image rm cowork-egress-proxy:2 cowork-egress-proxy:3`** — nothing removes them for you. If you pin `COWORK_PROXY_IMAGE`, rebuild that image yourself. **If you bring the proxy up
  via `docker/compose.yml`** rather than letting the CLI manage it, that service is built under compose's
  own project namespace and is not covered by the tag bump — rebuild it explicitly with
  `docker compose -f docker/compose.yml build egress-proxy`.

- **`--compact`/`--demo` suppress the `[status] <outDir>` line, and now say so.** The line is a raw host
  path, which those shareable-output modes exist to withhold — but `SKILL.md` stated the line was printed
  unconditionally and neither flag was documented in the skill at all, so backgrounding a run with
  `--compact` and capturing stderr looked like the harness had no liveness signal. `status.json` is still
  written either way; `cowork-harness status` also accepts the run-dir root.
- **A corrupt `skillHash`/`runLabel` in `index.jsonl` is quarantined.** Both became load-bearing once
  `stats` could filter and group on them; a wrong-typed value is valid JSON and would previously have
  reached `buildStats` and thrown.
- **`SKILL.md` documents where a run's cost lives** — `result.json` → `cost.usd` (the SDK's
  `total_cost_usd`), noted as a different source from summing `modelUsage[].costUSD`, which is what
  `trace --view usage` reports and which can legitimately differ.

- **The verdict footer prints `warn`-severity signals. It never did.** Only `fail` signals were rendered,
  and only in the branch a failing run takes — so on a green run every warn (`undelivered_deliverables`,
  `ended_with_question`, `scan_unavailable`, `exec_infra_error`, `prompt_asset_missing`) reached
  `result.json` and no surface a human reads. That is backwards for a severity whose entire purpose is to
  fire when *nobody authored an assertion*: the runs that most need the warning are the ones where nobody
  will go looking for it. Warns now render on pass and fail alike, prefixed `·` (never `✗` — a warn does
  not change the verdict, and marking it like a failure would teach readers to skip it) and never
  truncated, since the message *is* the finding. `non_deterministic` is excluded because the meta line
  already carries it. Found by running this release's own new signal live and watching it not appear.

- **`undelivered_deliverables` described the wrong lane's failure on `lane: remote`.** The candidate set
  is lane-dependent — on remote nothing is delivered by location, so a file under `outputs/` counts — but
  the message text was written for the local case only. A remote run therefore named `outputs/report.md`,
  asserted it was "written outside every user-visible root", and prescribed "write deliverables under
  `outputs/`" as the fix for a file already sitting there: self-contradictory, and the remedy is not even
  true on that lane. The explanation now branches on the same predicate that selects the candidates, and
  both variants name `allow_undelivered_deliverables` so the reader is told how to silence it. The
  pre-existing tests asserted only the signal *code*, which is why the prose could be wrong and green.

- **`lint` no longer errors `present_files_called` on `fidelity: hostloop`.** *(The author-time linter
  catching up with the runtime change above — a separate code path in the bundled `scenario.py`, not a
  second fix to the same one.)* The harness has served
  `present_files` at `container` **and** `hostloop` since the host-loop handler landed, but the linter
  still treated the key as container-only and hard-failed a scenario the runtime accepts. The key set is
  now split: `present_files_called` is flagged only on `protocol`/`microvm` (new finding tag
  `present-files-key-off-tier`) and is clean on `container`, `hostloop`, and `cowork` (which resolves to
  one of the two). `no_scratchpad_leak` keeps its container-only ERROR on the merits — hostloop serves the
  tool but passes a validated path through without promoting, so there is no scratch→outputs copy to leak
  — and its message now says that instead of implying the tool is missing.

- **Every `trace --view` help list now derives from one catalog.** `src/cli.ts` carried the view list in
  three places — the top-level command catalog, `trace --help`'s `SUBCOMMAND_USAGE.trace`, and the
  no-target usage error — and two of the three had drifted, omitting the `subagent-research` view even
  though the `--view` validator accepted it. All three now interpolate one `TRACE_VIEWS` constant, moved
  above the module-load `HELP` template literal so the interpolation can't throw a temporal-dead-zone
  `ReferenceError` at import time. `SUBCOMMAND_USAGE.trace` is now a real multi-line template literal
  rather than one line with embedded `\n`s. A guard test fails on any hardcoded `--view` pipe-list left in
  the source, and pins the usage string's per-view explanation lines against the same constant.

### Documentation

- **`docs/fidelity-gaps.md` records the file-delivery lane split.** Cowork has two file-delivery tools —
  `mcp__cowork__present_files` on the desktop-local sandbox this harness emulates, and the agent-native
  `SendUserFile` (`files: string[]`, required `status`, optional `caption`/`display`) on remote
  cloud-container sessions. Probing a remote session and diffing against this harness reads as "wrong tool
  name AND wrong schema"; it is neither, and adopting `SendUserFile` would green skills that then fail on
  real desktop-local Cowork. Verified against the pinned baseline's spawn allowlist and `present_files`
  handler, the agent binary's `SendUserFileTool` schema and enablement gate, and a live-recorded init
  toolset. The entry names the discriminator (`CLAUDE_CODE_ENTRYPOINT`) and the guidance that holds on
  both lanes: never hardcode a delivery tool name in a `SKILL.md`. The rule is stated where an author
  actually forms the belief, not only in that one page: **SKILL.md Gotcha 24** (the installed payload —
  `docs/` is repo-only), both assertion catalogs, `references/fidelity-and-answers.md`'s tier discussion,
  and the `no_scratchpad_leak`/`present_files_called` descriptions themselves, so `assertions --list` and
  `schema/scenario.schema.json` carry it too.

- **The assertion tables — in the docs, the shipped skill's own references, and `llms.txt` — are rescoped
  to match the lint fix above**, describing `present_files_called` as working at `container|hostloop`
  rather than `container` alone. This also reverses stale `user_visible_artifact` guidance for a skill that
  delivers via write-to-cwd→`present_files`: docs previously said that pattern "false-reds" at `hostloop`;
  it actually **passes** there, because the agent's cwd at that tier already *is* the outputs dir (no
  promotion needed to make the file user-visible) — the false-red note now names only `microvm`/`protocol`.

- **Five factual corrections:** the documented Node floor (was 20, is 22, matching `engines`/`doctor`);
  README's default egress-proxy image tag (was `:3`, is `:4`); CONTRIBUTING's CI stage count (was
  seven-stage, is eight with the floor job); the agent's documented working directory in both the
  DESIGN.md mermaid diagram and README's ASCII twin (said `/sessions/<id>/mnt`; the spawn contract sets it
  to `/sessions/<id>`); and `docs/debugging.md`'s `stats` index-key recipe (the index key is the skill
  folder's basename, not the raw `$SKILL` path). Also fixes a stale `src/assert.ts` comment claiming
  `WRITE_BACK_SOURCE_EXTS` mirrors `analyze-artifact.ts`'s `SOURCE_EXTS` — it's a deliberate superset, not
  a mirror — replaces a stale baseline-version pin in DESIGN.md with a pointer that can't rot, and rewords
  a DESIGN.md paragraph lead-in that read like a command into a description of the sync extractor.

- **Two dead anchors fixed** — README's `lane:` link and `examples/README.md`'s flakiness link, both stale
  after `docs/scenario.md`'s headings moved — found via a repo-wide sweep of all 96 in-repo anchor links
  across README.md, CONTRIBUTING.md, DESIGN.md, SPEC.md, `examples/README.md`, and `docs/*.md`, which
  turned up no others broken. `examples/README.md`'s npm-package caveat now also names `matrices/`,
  `answer-policies/`, and `probes/` as trees that need a source checkout (confirmed via
  `npm pack --dry-run` that the published tarball ships only `examples/README.md` and
  `examples/replays/`). The `doctor` blurb in `examples/README.md` and `docs/README.md` now states that a
  bare `doctor` defaults to the `container` tier and that a Keychain-only login downgrades its auth check
  to a warn specifically at `protocol`; the trigger-accuracy-sweep row now notes that `run` skips a
  subdirectory non-recursively.

- **Contributor-workflow corrections:** CONTRIBUTING's pre-push checklist gains a `Typecheck` bullet
  (`npm test` strips types; `npm run typecheck` is the only path that checks test files); CONTRIBUTING.md
  and RELEASING.md now point at the `format:write` script instead of the raw `prettier` invocation;
  README's local command list drops the "Stage 1"/"Stage 2" numbering now that `boundary-check` is no
  longer part of `npm run ci`; and `python/README.md` clarifies that its `.env` precedence chain describes
  the CLI only — the Python API has no `dotenv` parameter.



## What's Changed
* chore(deps): Bump docker/login-action from 03c851098f316948386b8ff87f424ddf8c01536e to 371161bbe7024a29a25c5e19bfcbc0804fe9ad2c in the actions group by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/85
* chore(deps-dev): Bump the npm-minor-patch group with 2 updates by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/84
* release: 1.14.0 — move the host runtime off end-of-life Node 20 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/90
* release: 1.14.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/91


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.13.2...v1.14.0
