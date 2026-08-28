---
title: cowork-harness
date: 2026-08-28 09:14:38 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.5.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is an unofficial test harness designed to emulate Claude Cowork's observable runtime contract. It allows developers to script and automate the testing of skills across various scenarios in a headless, CI-friendly environment. The action supports multiple fidelity levels (e.g., replay, full) to capture detailed information about what the agent did, not just its behavior. This helps ensure that skills work as expected within the constraints defined by Cowork's runtime contract.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action is an unofficial test harness designed to emulate Claude Cowork's observable runtime contract. It allows developers to script and automate the testing of skills across various scenarios in a headless, CI-friendly environment. The action supports multiple fidelity levels (e.g., replay, full) to capture detailed information about what the agent did, not just its behavior. This helps ensure that skills work as expected within the constraints defined by Cowork's runtime contract.

## What's Changed


### Added

- **`cowork-harness assertions --list` gains a "Skill references (progressive disclosure)" family** for the
  two new keys, so they are not appended to a flat dump nobody reads.

- **A guard that a committed cassette's `tool_not_called` is actually violable by its own recording.**
  The tool surface at a tier is **gate-conditional**: at `container`, `mcp__workspace__web_fetch` is
  offered only when `coworkWebFetchViaApi` is on (17 of 138 measured container runs), and with the gate
  off `WebFetch` is offered instead. `examples/replays/example-pdf-skill.cassette.json` asserts
  `tool_not_called: "mcp__workspace__web_fetch"` and passes today only because it was recorded gate-ON —
  a re-record with the gate off would leave it naming a tool the run could never have called, so it would
  keep passing while verifying nothing, and nothing in the suite would notice. `verify-cassettes`'s
  `replaced-builtin` note keys on the recorded *inventory*, never on the assertions, and only covers
  built-ins being replaced, never the inverse.

  The guard checks every committed cassette's `tool_called`/`tool_not_called` against that cassette's own
  frozen init inventory, through the same glob engine the evaluator uses. It deliberately does **not**
  cover `subagent_tool_absent` (judged against the per-dispatch `declaredTools`, a different inventory)
  and cannot see alias-class vacuity (`tool_not_called: "Task"` names a tool that is in every inventory
  yet never emitted — the agent binary canonicalizes `Task` to `Agent`); both are recorded as separate
  work rather than left implied.

- **`referencesAccessed` — reference access through EVERY tool channel, not just the `Read` tool.**
  `referencesRead` counts one channel, and `critique`'s headline invited a reader to conclude the agent
  had opened no reference — a claim about *reading* that a one-channel count cannot support. An agent
  that `cat`s, `grep`s or globs a reference has reached it just as much. The new `RunResult` field (and
  its `subagents[]` twin) records each file with the channel(s) it was reached through: `read`
  (`Read.file_path`), `grep` (its `path` input), and `bash` (a `Bash`/`mcp__workspace__bash`
  command naming the path).

  All four channels apply the **same** `skillReferenceReadPath()` predicate, so a token only counts when
  it is rooted in the mounted plugin — the agent's own `node scripts/build.js` is not a skill-script
  access, and a non-skill filename never reaches `result.json` under a field claiming it is skill
  content. Redirection targets and every argument of a write verb (`rm`/`mv`/`mkdir`/`touch`/`chmod`/`tee`) is excluded, as is a verb that only inspects metadata (`ls`/`test`/`stat`/`echo`): those are files the command
  wrote or destroyed.

  It **deliberately under-approximates**. A `cd` into the skill dir followed by a bare
  `cat references/x.md`, a heredoc body and a `$VAR`-built path are all invisible, and there are tests
  pinning them as misses so a later widening is a visible change rather than a silent one.

  **Presence is the cannot-verify channel**, which is the one way it differs from `referencesRead`:
  `[]` means the drive ran and observed nothing (a real negative); **absent** means there was no
  observable drive, and must never be read as "none". Present on live *and* replay — cassettes freeze
  whole tool inputs, so the replay re-drive reconstructs every channel identically.

  `referencesRead` is unchanged in meaning and is now documented as this field's `read`-channel
  projection, produced by the same capture so the two cannot disagree.

  Scope is **main agent ∪ sub-agents**, via a single `unionReferenceAccesses()` derivation shared by the
  assertion keys, the critique report and `--probe dispatch` — a dispatcher-shaped skill does all its
  reading a level down, so judging the top-level list alone would report "never reached" on a run where a
  sub-agent read the file cover to cover. A **truncated cassette** (one that could never be driven)
  reports cannot-verify rather than an empty list, for the same reason.

- **`reference_read` / `no_observed_reference_access` assertion keys.** Gate on whether a skill's
  progressive disclosure actually works: a well-partitioned skill and one whose second half is dead look
  identical from outside. Regex (unanchored, case-insensitive — the same shared helper every regex key
  uses), main agent ∪ sub-agents, evaluated on replay as well as live.

  The negative key is named `no_observed_reference_access`, not `no_reference_read`, because the
  detector under-approximates by design: it proves nothing was *seen*, not that the file went unread.
  Both keys **fail evidence-unavailable** when the run recorded no observable access list — including
  the negative one, which is the direction that would otherwise pass vacuously off a missing field. The
  scenario linter rejects asserting both with the same pattern.

- **`critique` names why the GRADED turn errored** — `gradedErrorReason` in the JSON report and inline in
  the text NOTE. `taskResult: "error"` is a legitimate **gradeable** outcome and the critique still runs,
  but the report said only "the task run ended in error", so an exhausted quota or a dropped connection
  read as a defect in the skill under review.

- **`critique` reports which model produced the GRADED run** — `gradedModels` in the JSON report and
  `graded model(s):` in the text header, read back from the graded turn's own `result.json` and filtered
  of the agent's locally-fabricated `<synthetic>` entries. The report named the *evaluator's* resolved
  model and no other, so the model that produced the behaviour being graded appeared nowhere. It cannot
  be inferred from context either: the turns are a subprocess that inherits no model from whatever
  invoked `critique`, so an omitted `--model` silently grades whatever the spawned agent defaults to. A
  run with nothing recorded now says `graded model(s): unknown` rather than staying silent. The ids are
  **observed, not requested** — read from the model stamped on the graded turn's assistant messages, not
  from the flag.
- `isLiveModelId` (`src/types.ts`) — the agent-marker filter every consumer of `RunResult.models` must
  apply, now declared once beside the field it governs. It replaces **three** divergent copies, two of
  which disagreed: `src/run/provenance.ts` (which renders `provenance.model` on every JSON envelope)
  matched the angle-bracket **shape**, `scripts/eval-gate.ts` the `<` **prefix** — so a malformed or
  truncated marker such as `"<synthetic"` was dropped by one and rendered as if it were a model id by the
  other. The shared rule is the shape.

### Changed

- **Skill and docs updated for the tier refusal.** `SKILL.md` previously told authors a tier-mismatched
  `tool_not_called` "can silently void a web-fetch assertion" when moving a scenario between tiers — the
  harness now refuses it at load instead, so that guidance described behaviour that no longer exists. The
  skill's critique reference gains the `referencesAccessed` field, its channels, and the
  `[]`-vs-absent cannot-verify rule.

- **`subagent_declared_but_unused` documents that it fires only on a dispatch that declares a tool list.**
  It reads `subagents[].declaredTools`, populated from a `tools`/`allowedTools` key in the dispatch input.
  The `Agent` tool carries neither, so that list is empty and the key passes on every such dispatch —
  **0 of 1091 real dispatches** carry a non-empty list. The key is not wrong, but a green means "not
  applicable here", never "no fabrication", and neither its description nor its docs said so.

- **BEHAVIOUR CHANGE: `tool_not_called` and `subagent_tool_absent` naming a tool the tier does not serve
  are now REFUSED at scenario load.** `tool_not_called: "Bash"` at `hostloop` passed vacuously, always — that tier disallows the
  built-in shell and aliases it to `mcp__workspace__bash`, so the run could never have called `Bash`
  whatever the agent did. The assertion read as a guarantee and verified nothing. The inverse was equally
  broken: `mcp__workspace__bash` at `container`, where the built-in is served instead.

  The refusal is a `UsageError` at the point the tier resolves — after `fidelity: cowork` becomes a real
  tier, and before any staging, image pull or spawn, so no model spend is wasted. The message names the
  tool to assert instead, and names the sibling keys that behave differently (`tool_called` still fails
  normally; `subagent_tool_absent` is judged against a per-dispatch inventory this check cannot
  determine). `scenario.py lint` WARNs on the same set, before any run at all.

  **The table is closed to tools the harness itself removes or registers**, and never derived from the
  launch plan. `--tools` gates the built-in set alone — the agent binary's own help says so — while every
  sandbox tier separately passes `--mcp-config`. A launch-set-derived check would therefore have rejected
  `tool_not_called: "mcp__example-fs__write_file"` for a session using the `mcp.config` this repo ships an
  example of, while that tool was registered and callable. Globs are never refused, and the table
  under-approximates on purpose: `REPL` at hostloop is vacuous too and is not caught, which is the correct
  side to err on when the verdict is a hard refusal.

  There is **no opt-out**, deliberately. The repo's `allow_*` modifiers all cover cases where the harness
  might be wrong about a real signal; a fired reject here cannot be a false positive, so there is no
  legitimate scenario to rescue. If one is ever found, the table is wrong and the table should change.

  **`subagent_tool_absent` is covered for the same reason `tool_not_called` is.** It reads the tools
  sub-agents actually USED, not a per-dispatch declared list, so a tool the tier never serves makes it
  vacuous in exactly the same way — corroborated by the run population, where sub-agent `Bash` calls
  appear 20 times, all at `container` and never at `hostloop`. Covering one key and not the other would
  refuse an assertion at hostloop while silently greening the sub-agent form of the identical claim.

  `e2e/scenarios/canary-hostloop.yaml` carried exactly this defect and is fixed in the same change: its
  `tool_not_called: Bash` never proved anything, and its `tool_called: mcp__workspace__*` already carries
  the canary's stated purpose.

- **`critique`'s "no references were Read" headline now says what it observed.** It reads the wide
  signal, names the channels it looked through, and states its own under-approximation in one short
  clause instead of the load-bearing caveat that did all the work. Where the run recorded no observable
  tool stream it makes **no claim** rather than rendering a clean negative. The evaluator's evidence
  section moves with it (previously main-agent `Read`s only — a different population from the headline's,
  so widening one without the other would have handed the evaluator a prompt contradicting the report),
  and the grading prompt now tells the evaluator not to issue a finding whose only support is a path
  missing from that list. `--probe dispatch` prints the wide list too.

### Fixed

- **`tool_called: "Task"` could never pass and `tool_not_called: "Task"` always did.** The agent binary
  canonicalizes a set of legacy tool names — `Task`→`Agent`, `KillShell`/`KillBash`→`TaskStop`, and nine
  more — while the spawn tool list still declares the **legacy** spelling. So the init inventory echoes
  back `Task`, every actual dispatch is emitted as `Agent`, and a literal matcher could never connect the
  two. Measured across 506 kept runs: `Task` offered **506** times and called **0**; `Agent` called **188**
  times and offered **0**. The negative form was a permanent vacuous pass in the most common dispatch
  assertion there is, at every tier.

  All four tool keys (`tool_called`, `tool_not_called`, `subagent_tool_used`, `subagent_tool_absent`) now
  match either spelling, through the one shared matcher. Globs see both too — the **recorded name** is
  expanded rather than the author's pattern, so `tool_not_called: "Ta*"` and `"*"` are violated by a
  recorded `Agent`, which rewriting the pattern would not have fixed.

  Recorded data is unchanged: `toolCounts`, `context.tools` and every cassette keep exactly what the agent
  reported, the same verbatim posture `RunResult.models` documents. Only matching is alias-aware, so
  `tool_available: "Task"` still matches the inventory's literal `Task` and no committed cassette changes
  meaning.

  **Still vacuous, and now documented as such:** `tool_not_called` on a tool the *tier* never offers —
  `Bash` at `hostloop`, or `mcp__workspace__bash` at `container`. That is a separate class with a separate
  fix; the key's docs and the skill reference now warn about it rather than leaving it implied.

- **`critique` diagnosed an unanswered gate as an infrastructure failure, and named the wrong turn while
  doing it.** A graded run that stopped at an `AskUserQuestion` gate with no scripted answer exits 2 with
  a fully-formed `{ok:false, error:{category:"unanswered", …}}` envelope, but the report read only
  `results[0].outDir` and answered *"task turn exited nonzero without a parseable result envelope — it
  crashed before completing a gradeable task"* — under a header hardcoded to
  `INFRASTRUCTURE/PROTOCOL FAILURE (reflection turn)`, though it was the **task** turn that stopped and
  no reflection turn had been attempted. Both halves pointed at the wrong subsystem: a reader following
  the report would audit Docker and the staged agent over what is one scenario flag.

  The report now prefers the failed turn's own diagnosis, on both turns, carrying its message **and hint
  verbatim** (and only once — `UnansweredError`'s message already contains its hint, so appending it
  unconditionally printed the whole question, its options and its remedy tip twice). No remedy text is
  synthesized on top: there are 36 `UnansweredError` sites and only one is "the skill asked an unscripted
  question", so advice keyed on the category is wrong for nearly all of them.

  Two new fields carry the classification — `infraFailurePhase` (`task turn` | `reflection turn`) and
  `infraFailureKind` (the harness `ErrCategory`). The header keys on **which** category, not on merely
  having one: `unanswered` / `usage` / `boundary` render as `RUN FAILED (<turn>, <kind>)`; everything
  else renders as `INFRASTRUCTURE/PROTOCOL FAILURE (<turn>)` and it **fails closed** — `internal` is the
  CLI's catch-all for any unexpected throw (Docker down, container start failure, missing staged agent, a
  harness bug), so an unrecognized category is treated as an instrument failure rather than assumed
  ordinary.

- **A turn that exited 1 was reported as a bare exit code, so an exhausted quota looked like a crash.**
  A turn that RAN and errored exits `1` with a full result envelope whose top-level `error` is `null` —
  its cause lives in `results[0]`, not in an error object. Reading only the error object left the report
  saying `reflection turn exited with code 1 (expected 0)` and nothing more, for a run whose actual cause
  was an exhausted seven-day quota; it was findable only by opening `events.jsonl` by hand. The failed
  turn's `resultErrorKind` / `errorSource` / `resultSubtype` are now read and rendered — `usage_limit`
  as "the account's quota is exhausted; retry after the reset. This is NOT a harness or skill defect",
  `transport` as a retryable tail-end drop — matching how the run renderer has always shown them.
  `usage_limit` and `transport` join the ordinary/actionable set; `agent` does not, because for
  critique's own protocol turn an agent-level failure *is* the instrument breaking.



## What's Changed
* release: 2.5.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/161


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.4.0...v2.5.0
