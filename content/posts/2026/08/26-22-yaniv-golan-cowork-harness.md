---
title: cowork-harness
date: 2026-08-26 22:37:25 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action is a test harness for Claude Cowork skills that emulates the observable runtime contract closely enough to test them across multiple scenarios and in CI environments. It reproduces constraints like the sealed filesystem, default-deny egress, and MCP-only cross-boundary, providing evidence of what the agent actually did rather than just what it said. This helps in ensuring skill reliability without relying on a locked-down Desktop app and is not a guarantee but a strong signal for test outcomes.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action is a test harness for Claude Cowork skills that emulates the observable runtime contract closely enough to test them across multiple scenarios and in CI environments. It reproduces constraints like the sealed filesystem, default-deny egress, and MCP-only cross-boundary, providing evidence of what the agent actually did rather than just what it said. This helps in ensuring skill reliability without relying on a locked-down Desktop app and is not a guarantee but a strong signal for test outcomes.

## What's Changed


### Parity

- **Baseline `desktop-1.37937.1` (agent `2.1.246`).** `sync` had been refusing to write on three
  `spawn.env` deltas; all three are now classified.

  **Two new pinned keys.** The Cowork spawn sets `CLAUDE_CODE_PROMPT_CACHE_TTL="1h"` and
  `CLAUDE_CODE_SUBAGENT_PROMPT_CACHE_TTL="5m"` unconditionally — no gate, no session or deployment
  branch — so every first-party session receives them. They are **additive**:
  `ENABLE_PROMPT_CACHING_1H="1"` is still set alongside. They read zero times in agent `2.1.241` and six
  times each in `2.1.246`, so the contract went live one agent release after Desktop began setting it.

  **`MCP_TOOL_TIMEOUT` is now classified per SITE, not per key.** Its first-party construction is
  unchanged (still resolving to `180000`), but the third-party-only branch gained a second, settings-
  conditional construction of the same key whose value expression the const resolver cannot reach.
  Allowlisting the key — the obvious fix — would have been a silent contract loss: the allowlist is
  checked *before* the pin list, so the key would have vanished from the generated env entirely, and it
  is not a `REQUIRED_SPAWN_KEYS` member, so nothing would have hard-failed. Instead the 3p-only branch is
  located by content and its inner keys are classified by name without resolving their values, which is
  what the branch already meant. A brand-new key there still hard-fails.

  **`CLAUDE_PREVIEW_CLASSIFIER_FLOOR` is now inert on the shipping agent** — recorded, not changed. Agent
  `2.1.246` renamed the flag it reads to `CLAUDE_CHROME_CLASSIFIER_FLOOR` (and its consumer field
  `previewClassifierFloorEnabled` → `chromeClassifierFloorEnabled`) while Desktop still sets only the old
  name, so the classifier floor now falls through to its GrowthBook default. The key stays pinned: the
  baseline records what the spawn constructs, and a Desktop-side rename must surface as a diff line
  rather than as silence. Nothing in the harness reads it behaviourally. Together with the cache-TTL keys
  above this is the same lesson pointing both ways — Desktop and the agent version the spawn env
  independently, so "Desktop sets X" and "the agent reads X" are separately-dated claims.

  Also found in the same pass and recorded in [docs/fidelity-gaps.md](./docs/fidelity-gaps.md), with no
  harness surface: the deliberately-unmodeled remote device-tool family gained `device_fs` and
  `device_request_delete_permission` plus a folder-access announce mode — the Desktop half of the six
  `cowork_*` risk categories that had appeared in agent `2.1.237`'s auto-mode rubric.

  Also verified unchanged against the retained previous asar: the Cowork system prompt (the retained raw
  files for 1.32885.1 through 1.37937.1 are byte-identical on disk), both sub-agent appends, `tools[]`,
  the `canUseTool` chain, the mount modes, the egress contract, and the VM rootfs image.

- **All three committed example cassettes re-recorded against this baseline** — `example-pdf-skill`
  (`container`), `example-multiselect-gate` (`protocol`) and `hostloop-computer-links` (`hostloop`).
  The container one shows no behavioural change (transcript wording only). `verify-cassettes` is clean,
  and the recorded MCP inventory is the Cowork lane's own servers (`cowork`, `plugins`, `skills`,
  `workspace`) — no host inventory reached the fixtures, checked independently of the built-in scan
  because the 2026-08-04 leak hid from a `mcp__` grep and surfaced only through NAME fields.

- **Live end-to-end pass re-run against this baseline.** `npm run test:live` — **4 suites, 19 assertions,
  19 green, 0 skipped** — across `protocol`, `container` and `hostloop`, on agent `2.1.246`. Every
  `describe` in that lane is `skipIf`-gated on Docker, the staged-binary version and the token, so a gated
  case reports as skipped rather than passing vacuously; zero skips means the whole population executed.
  `DESIGN.md`'s scope note is re-stamped accordingly and now records that no baseline is unverified for
  want of a live run. Not claimed: the `boundary-check` sandbox proof and the example-scenario suite were
  part of the previous stamp and were not run here.

### Added

- **`question_context: {when_question?, matches}` — assert what a gate actually put in front of the user.**
  A regex tested against a gate's founder-visible payload FIELD BY FIELD — the question label, every option
  **label**, and every option **description**, each as a separate string. Matching per field rather than over
  one joined blob is deliberate and load-bearing: a pattern cannot straddle two fields, so
  `invoicing[\s\S]*Audit logging` will not match by stitching one option's description to the next option's
  label — a "sentence" nobody was shown. The neighbouring transcript keys' docs teach `[\s\S]` for spanning
  turns, so that is the habit an author brings here. `matches` is required NON-EMPTY: an empty pattern
  compiles to `//i` and would green any run that fired a gate at all. `question_asked` matches question text only and `question_options`
  compares labels only, so a sentence the model delivered inside an option's `description` was invisible to
  every assertion key — a false-negative generator for any skill that puts context there, which the tool's
  own schema invites. Measured on a consumer's paid run: a producer-authored sentence arrived verbatim in
  the question, reworded inside it, and relocated into the proceed option's `description` across three runs
  of one scenario; the third redded a lane on a run where the founder had in fact been told.

  Evidence is the **ask-time** `AskUserQuestion` payload, never a `tool_result` — a skill's producer
  typically also writes the same sentence into its own gate-state file, so `tool_result_matches` on that
  phrase grades true whether or not the model ever surfaced it. Unlike `question_options`, omitting
  `when_question` on a multi-gate run is **not** ambiguous: this key asks whether the text was shown at all.
  Zero gates recorded fails; unreadable gate evidence fails evidence-unavailable, never vacuously.

### Changed

- **`trace --view questions` now renders each gate's offered options — labels AND `description`s** — under
  an `offered:` block, sub-question-labelled on a bundled gate. It previously printed the question label
  alone, so the option `description` a skill routinely puts the deciding sentence in was reachable only by
  hand-reading `events.jsonl`; a reader who found nothing in the view could reasonably conclude the text was
  never delivered. The payload was always recorded — this was purely a rendering gap, and the same run dir
  answers the question either way. The row (`--output-format json`) gains `subQuestions[]` carrying the
  untruncated ask-time options; the text view caps each description at 240 chars, so nothing is lost, only
  wrapped. This pairs with `question_context`: the view is how you *find* the text, that key is how you
  *gate* on it.

- **The `tool_use` blindness of `transcript_contains`/`_not_contains`/`_matches`/`_not_matches` and
  `computer_links_resolve`/`_if_present` is now documented and guarded.** `semantic_matches` has carried a
  ⚠️ spelling out that its corpus excludes every `tool_use` — "a rubric claim about whether a tool was
  called is unassertable" — while the six keys with the identical blindness said only "the assistant
  transcript". A consumer wrote a `transcript_matches` against text living in a gate question; it could not
  have matched at any phrasing, and the recording fail-closed after the spend. The caveat is now a property
  of an enumerable set (`TOOL_USE_BLIND_KEYS`) enforced across every surface that documents a key — the
  docs tables, the zod `.describe()` behind `assertions --list` and the generated JSON schema, and the
  packaged skill reference — so a newly-added blind key cannot ship without it.
- **`question_asked`/`question_options`/`question_context` now warn that they match model-authored text.**
  Gate question text and option labels are composed by the model and reworded run to run. The `choose:`
  side already documented this (stable leading anchor, 1-based index); the assert side documented it
  nowhere. Guarded by `MODEL_AUTHORED_TEXT_KEYS`.
- **A bad regex in a NESTED assertion field is now caught at load, not after the paid spawn.** The pre-compile
  pass reached only top-level string keys, so every regex one level down — `artifact_text.matches`,
  `artifact_text.not_matches`, `path_denied.path_matches`, `skill_tool_used.skill`/`.tool`,
  `subagent_dispatch_healthy.type`, `subagent_output_contains.match`, `task_status.match`,
  `question_options.when_question`, and the new `question_context.*` — was first compiled inside the
  evaluator. All eleven are now validated at load, and `test/nested-regex-leaves.test.ts` reads `assert.ts`
  and fails if the evaluator compiles a nested leaf the load-time table does not carry, so the gap cannot
  reopen silently. `lint`'s double-quoted-regex warning also now covers nested `matches:` leaves.
- **`diff` with a single positional now names the missing operand** instead of printing bare usage. There is
  deliberately no one-argument form: `diff` is polymorphic over baselines, run dirs and cassettes, so it
  would need type dispatch plus a defined source for "the committed version".
- **The two cost keys are cross-referenced.** `RunResult.cost.usd` is one invocation's SDK
  `total_cost_usd`; the critique report's `costUsd.totalUsd` aggregates the task turn, the reflection turn
  and both evaluator passes. Reading the wrong one returns `undefined` rather than erroring, which reads as
  "no cost recorded". Kept as two shapes on purpose — collapsing them would destroy the per-phase split.

### Fixed
- **Two spawn-contract sentinels were weaker than their names implied; both now bite.**

  `checkSpawnContractFacts` pinned the `allowedTools[]` built-in head and the built-in→`mcp__` boundary
  but nothing between the boundary and the closing bracket — so `mcp__plugins__search_connectors` was
  added to the array and both checks stayed green. The `mcp__` membership is now pinned as a set, and the
  flag names the added and removed entries instead of reporting that something "moved". (That tool is
  declared only on the third-party deployment, so the first-party inventory the harness serves is
  unaffected — but the addition should not have been invisible.)

  `checkMountModeFacts` asserted each read-only mount with a single `regex.test`, while `uploads`,
  `.claude/skills` and `.projects/<uuid>` are each built at **two** sites — the VM-loop mount-set builder
  and host-loop `computeBashMounts`. Either site satisfied the check, so a one-lane `ro`→`rw` flip — a
  containment change on exactly one execution tier — passed green. It now compares the site count to the
  count carrying `mode:"ro"` and names the lane count in the flag. Its fifth fact — the delete-deny
  resolver `?"rwd":"rw"` — had the same shape and the same two-lane reality (it went 1 site to 2 in this
  release) and now guards a floor on that count: a lane losing the resolver flags, a lane gaining one
  does not.

- **All eight asar sentinels now carry a committed mutation case.** They are green on the previous
  release's asar too, so a green proves nothing on its own unless the checker is known to bite; five of
  them (`checkCodeTripwires`, `checkWebFetchFacts`, `checkEgressContractFacts`, `checkSyspromptMapFacts`,
  `checkNormalizationSanity`) had no such case. Each new one changes an **inner** character of its
  anchor, because a suffix rename still satisfies a substring regex — a mutation that cannot fail is not
  evidence — and asserts that the mutation actually applied.

- **`record --dry-run <dir/>` no longer announces a WARN as a refusal.** The batch arm labelled every
  advisory note `⚠ would-refuse (advisory)`, but `cassettePortabilityPreflight` can only ever return
  `ok`/`warn` — it has no refuse path at all — and `hostInventoryPreflight` returns `warn` whenever the
  target cassette already exists, which is every re-record corpus sitting at the default path. So the
  preview told operators the real `record` would refuse runs it would in fact accept, on the one arm whose
  design principle is that a guess must not gate. The label now follows the verdict kind
  (`⚠ would-warn (advisory)`), the "ADVISORY, not this run's verdict" footer is unchanged, and exit codes
  were never affected either way.

- **The 3p-branch rule refuses to blank W1.** W1 is the window every modeled first-party key is derived
  from, so a branch marker appearing there hard-fails instead of blanking; deleting real pinned keys from
  the derived env with nothing failing is the worse of the two outcomes.

- **`record --dry-run` now runs every pre-spend refusal the real record runs, and one refusal moved from
  after the paid run to before it.** The rehearsal re-implemented the checks by hand, so it drifted:
  `hostInventoryPreflight` shipped 2026-08-04 and the commit three days later titled *"make `--dry-run`
  refuse what the real record refuses"* swept in the two checks returning `string | undefined` and missed
  the one returning a `{kind}` verdict — for 19 days an operator could not discover that refusal without
  spending. Separately, the slug-collision refusal (*"refusing to overwrite … it belongs to scenario X"*)
  sat **after** `executeScenario`: you paid for the run and were then refused, though it is a pure function
  of path + `--force` + the existing cassette's name. Both now run in one shared pre-spend block.

  Refusals are also uniform now. `promptPolicyRejection` threw while `hostInventoryPreflight` called
  `fail()`, which `process.exit`s — and the dir-batch loop catches a throw per item but cannot catch an
  exit, so a host-inventory refusal mid-batch abandoned concurrent runs already paid for.

  Under `--output-format json` a directory batch carries those advisory verdicts in a `notes[]` array, kept
  separate from `refusals[]` so automation cannot read a guess as a binding verdict.

  **On a directory, the path-dependent verdicts are ADVISORY (`⚠ would-refuse`) and do not affect the exit
  code**, because a directory target takes no `--out`: the preview would have to guess the destination, and
  a guess must not gate. Measured on a real consumer, gating on that guess would have refused 26 of 27
  scenarios the real record accepts. Dry-run a single scenario file with the real flags for a binding
  answer. `--quiet` suppresses the notes; it never suppresses a refusal.

  Also new in the batch preview: the duplicate-cassette-path refusal the real batch already had.

### Upgrade impact

- **`--allow-host-inventory-fixture` no longer waives a MEASURED host-inventory finding.** It was one flag
  doing two jobs: bypassing the pre-flight refusal (a precondition the operator cannot check — "use only
  when the session has no personal MCP servers or plugins") *and* downgrading the write-time scan's refusal
  to a warning. So an operator who passed it to get past the undecidable precondition also switched off the
  scan that would have caught a real leak. It is now the pre-flight bypass only; the finished recording is
  still scanned, and a finding still refuses the write and quarantines the recording. Writing a flagged
  recording needs the new, narrower `--allow-host-inventory-findings`. **A batch recorder that passes the
  old flag on a new-fixture path will now abort on a genuine finding where it previously warned and wrote.**

  A `--dry-run` that reports what *would* be captured was considered and declined: the inventory does not
  exist until the agent has run, so a preview would either re-implement the scanner against a hypothetical
  (a second oracle free to disagree with the real one) or require the spend it was meant to avoid. Reasoning
  is in [docs/cassette.md](./docs/cassette.md).

  This does not break a covered surface ([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract)):
  no command or flag is removed and no exit-code meaning changes — one flag's consent narrows, and the
  capability it shed is reachable through the new one. So it ships in a minor.

### Documentation

Five gaps found by asking a consumer which harness properties actually changed an outcome on a real
working day, then checking whether the docs said so. Four of the five were documented only as features,
never as the failure they prevent — the sentence a reader needs to recognise their own situation.

- **The blocking gate is now stated as a blocker.** `AskUserQuestion` *blocks*: it is a question to a
  human and `claude -p` has no human, so a gated skill under a plain CLI run stalls or never reaches the
  code behind the gate. That made half the skill untestable, not merely awkward to test — the README had
  only "untestable headless unless something answers it", buried as the last of two afterthought bullets.
- **"Assert on the run, not the output"** — a new README section naming the class of claim the harness
  exists for (`subagent_tool_absent`, `dispatch_count_max`, `no_delete_in_outputs`, `subagent_file_write`)
  and why no output diff can reach it: a correct run and one that quietly handed a restricted sub-agent
  shell access produce byte-identical files. `subagent_tool_absent` did not appear in the README at all.
- **The raw-`events.jsonl` escape hatch is documented**, with verified `jq` recipes, in
  [docs/debugging.md](./docs/debugging.md). Every documented route into the event log went through
  `trace`, whose views are a digest — so the run dir's *evidence* surface is wider than any view's
  *observation* surface, and wider still than the assertion catalog. Concluding "it never happened" from
  a view that doesn't render the field is a false negative, and the doc now says so and shows the read.
- **Sub-agent delivery has a route.** The tier-qualified outputs contract — the reason a hand-off path
  that works on one loop lands in sandbox scratch on the other — was correctly documented in
  [docs/subagents.md](./docs/subagents.md) but filed under "read on demand", reachable only by someone
  who already knew the answer. It now has a "Common tasks" row keyed to the symptom.
- **Replay's cost claim carries a number.** "Zero spend" is the price; the wall-clock is what makes an
  always-on per-PR gate obviously affordable, and no doc stated it (well under a second per cassette).

- **The project's provenance is stated on every surface the framing travels to.** `README.md` (which
  renders on the npm page), `llms.txt`, both `.claude-plugin/marketplace.json` descriptions and `SKILL.md`
  now say the same thing: an independent project, not affiliated with, endorsed by, or supported by
  Anthropic; it bundles no Anthropic code; it is not Cowork. `SKILL.md` additionally tells the agent to say
  so when a user asks what it is. Nothing enforces the four staying in step, so an edit can still drop it
  from one of them unnoticed.



## What's Changed
* release: 2.3.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/159


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.2.0...v2.3.0
