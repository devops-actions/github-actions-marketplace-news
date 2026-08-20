---
title: cowork-harness
date: 2026-08-20 06:15:45 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.25.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, cowork-harness, provides an automated test harness that reproduces Claude Cowork's runtime contract closely enough to test skills. It allows developers to run and test their skills across various scenarios without the need for a locked-down Desktop app, ensuring that tests are accurate and reliable. The action supports multiple fidelity tiers, including free demos, global installs, linting with Python, and live tiers that require specific resources such as Claude Desktop and a token.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.25.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action, cowork-harness, provides an automated test harness that reproduces Claude Cowork's runtime contract closely enough to test skills. It allows developers to run and test their skills across various scenarios without the need for a locked-down Desktop app, ensuring that tests are accurate and reliable. The action supports multiple fidelity tiers, including free demos, global installs, linting with Python, and live tiers that require specific resources such as Claude Desktop and a token.

## What's Changed


### Added

- **Platform baseline `desktop-1.32885.1` (agent `2.1.234`).** The Cowork system prompt is
  byte-identical to the previous baseline, the egress allowlist is unchanged at 15 domains, and the
  spawn contract still derives the same 22 env keys — but the **host-loop sub-agent append gained a
  sentence**, so `baselines/prompts/desktop-1.32885.1/subagent-append-hl.md` is a newly re-derived
  paraphrase and `spawn.subagentAppendHostLoop` now points at it. The added text tells a host-loop
  sub-agent that its shell commands start at the VM session root and that anything written outside
  `<root>/mnt/` — `/tmp` included — stays inside the sandbox, invisible to both the user and the
  sub-agent's own file tools. That is the host-loop split-filesystem fact the harness already models;
  it is now stated to the model. The `vm` branch is unchanged and keeps its existing asset.

  Worth knowing for anyone re-deriving this: the branch fingerprints decode `\uXXXX` escapes before
  hashing, so this is a real content change and not the codegen-escape artifact that moved both
  fingerprints a release earlier — the `vm` branch, which an escape change would also have moved,
  did not budge.

  **Live-verified against this baseline on 2026-08-19** across `protocol`, `container` and `hostloop`:
  the example-scenario suite 6/6, the `boundary-check` sandbox proof with all six constraints enforced,
  and `npm run test:live` at 4 suites / 24 assertions (20 green, 4 skipped). Three of those four skips
  passed on a re-run — the model-variance the suite skips loudly for rather than failing. The fourth,
  `live-outputs-delete`'s "a whole-line `#` comment is prose, not an executable delete", skipped in all
  three runs made against this baseline and so has **not** been green here; by that suite's own rule a
  skip persisting across runs means the agent has stopped being willing to run the pinned command, which
  makes it scenario-maintenance debt rather than a guard defect. Recorded rather than rounded away.

- **A `--repeat` rollup now names the ARM it ran, so a one-armed batch can't be banked as an A/B.**
  `--ablate-skill --repeat 5` produces 5 control runs and zero treatment runs — correct for a
  single-arm flag — and summarized them as `repeat "<skill>": PASS — 5/5 passed (100%)`, which reads
  as a completed comparison. A consumer made exactly that read twice, producing 10 baseline runs and 0
  treatment runs across two prompts before catching it at analysis. The verdict line now carries the
  arm: `repeat "<skill>": PASS [ABLATED — control arm] — 5/5 passed (100%)`. A partially-ablated batch
  (no flag produces one today; a resumed or hand-assembled run set could) reads
  `[MIXED ARMS: 2/3 ablated]` rather than being rounded to either arm, and a normal batch carries no
  tag at all — a label on every batch is noise, which is how the ablated one would come to be ignored.
  `--matrix`'s per-cell rollup lines get the same label, since that is where the largest batches run.

  **The flag combination stays legal.** Refusing it would ban a real measurement — "how variable is my
  no-skill baseline?" is a question these flags compose correctly to answer — and the output was never
  dishonest, only unlabeled at the one line a human reads. (Contrast `--ablate-skill --resume`, which
  *is* refused: there ablation does not take effect at all, so `ablated: true` would be a lie.)

- **A `[provenance]` banner on every run verdict — "which experiment actually ran?"** Three separate
  multi-run measurements by one consumer were silently scoped to the wrong thing, and in every case the
  run record already held the answer: a whole finding measured on `claude-sonnet-5` because the session
  file omitted `model:`; a 10-run "A/B" that was 10 `--ablate-skill` control runs and zero treatment
  runs; an answer that read exactly like skill output, from a run where the skill was offered and never
  invoked (the model read the mounted `SKILL.md` as a file instead). `models`, `ablated`,
  `context.availableSkills` and `skillsInvoked` were all in `result.json` and none of them were
  anywhere a human looks, so checking meant hand-written scripts against the record — which nobody runs
  until a result looks wrong, i.e. after the money is spent.

  The footer now prints one line beside the verdict, on passing AND failing runs and on the replay lane:

  ```
  [provenance] model=claude-opus-5  skill=offered,NOT-invoked  ablated=false
  ```

  `model` drops `<…>`-wrapped agent markers first — `<synthetic>` marks a locally fabricated turn, not a
  model, and an unfiltered join reads as a two-model run. `skill` has four states, and
  `offered,unknown` / `unknown` mean **evidence unavailable**, never "no": a banner that exists to
  prevent false confidence must not manufacture any. `ablated=false` prints too — the value is that the
  line is on every run.

  The same derived object rides in the `--output-format json` envelope as `results[].provenance`
  (beside `verdict`), so a consumer never re-derives the marker filter or the evidence-unavailable
  states. A `--repeat` batch gains an aggregate `provenance:` row on its rollup, reporting models and
  skill states as **sets** — a batch silently spanning two models is the multi-run form of the same
  defect, and collapsing to the first run would hide it. `--compact` (and `--demo`) suppress the line,
  matching the `[status]` contract.

### Changed

- **`verify-run --output-format json` now emits `results[]` with a per-result `verdict`, matching
  `run`.** The two commands answered the same question — "did my assertions pass?" — in structurally
  different envelopes: `run` nested everything under `results[].verdict`, `verify-run` was flat
  (`pass`/`assertions[]`/`signals[]`, no `verdict`, no `failures[]`). The cost was not a missing field
  but a **silent false green**: the defensive jq idiom from `run`'s own docs —
  `.results[]? | .verdict.failures[]? | select(.kind=="assertion")` — returns `[]` when `.results` is
  null, and `[]` reads as "no failures" in the query whose entire purpose is detecting failure. Run
  against a **failed** `verify-run`, it reported success. This matters most where `verify-run` is
  promoted hardest: as the cheap, token-free iteration path in CI.

  `results[]` always holds exactly one entry — `verify-run` judges one run dir, which is the same shape
  `run` emits for a single scenario. **Additive**: the flat `pass`, `assertions[]`, `signals[]` and
  `answerCoverage` keys are unchanged, so an existing consumer reading them is unaffected; `ok` still
  mirrors the verdict. A cross-command regression test runs the real documented query against a real
  failing envelope, so restoring the flat-only shape as a "simplification" fails the suite rather than
  silently reopening the false green.

### Fixed

- **The outputs-delete live suite was refusing to run, and a refused case verifies nothing.** It handed
  the agent a byte-pinned destructive command wrapped in prohibitions ("run this EXACTLY as written… do
  not modify it… do not run any other command") plus an unexplained sentinel, and asserted the command
  came back verbatim. The agent increasingly declined — over the framing, not the file operation — and a
  declined case SKIPS. Measured across 27 case-runs the refusal rate was **41%**; every case was refused
  at least once and the worst sat at 67%, so the suite could report success having verified almost
  nothing.

  It now asks for **ordinary tasks** whose completion requires the file operation — write two poems and
  delete one; write a poem and rename it. The agent has no delete tool, so a deletion must go through
  Bash, which is exactly the path the scanner watches, while a benign creative task gives it no reason to
  refuse. Measured 9 of 9 runs complied, zero refusals. The two form a polarity pair: one must trip the
  guard, one must not.

  Because the task is real, the run is now also asserted on its **effect** — exactly one poem file
  survives in `mnt/outputs` — where the pinned suite only ever proved the scanner had recorded an
  *intent* to delete. What is given up is byte-exactness: the agent picks its own filenames and command
  form, so assertions are on shape plus effect. Command-form distinctions that cannot be asked for
  naturally ("emptying a file is not a delete", "a commented-out `rm` is not a delete", the `mv`
  spellings) moved to `test/execute.test.ts`, deterministically and for free — including the
  `mnt/`-prefixed `mv` bytes the live case depended on, which no unit test had covered.

  Two intermediate attempts are recorded in the file's header so they are not retried blind: explaining
  the request (stated purpose, what the marker is for) made refusals **worse**, and retargeting one
  case's destination away from `/tmp` helped that case only.

- **A fixture shrinking could red an unrelated test.** `replay-json-pipe-truncation` multiplied a seed
  cassette to exceed the 64KB pipe buffer, with the copy count hard-coded at 10 and justified as
  "~15KB/result". The real figure was ~5.5KB, so the total sat just under the buffer and a routine
  re-record of the seed tipped it under — reddening the suite for a reason unrelated to the truncation
  bug it exists to pin. The count is now derived from a measured result at ~2x the buffer; the
  `> 65536` assertion stays as the tripwire.

- **`replay --help` now says that `--allow-failing` waives the skill-drift gate too.** `--assert-from`
  forces that gate on precisely so a re-asserted block cannot be frozen against a recording whose skill
  sources have moved — but the gate is the verdict, and `--allow-failing` waives the verdict wholesale.
  Nothing downstream re-checks drift. So `--assert-from --write --allow-failing`, which is the natural
  incantation when your asserts are legitimately failing (that being why you are re-asserting), persists
  the block against a drifted recording with no warning. Behaviour is unchanged — the flag is an explicit
  override and stays one — but it is now stated where it is reached for.

  The same block documents that text mode writes to stderr and nothing to stdout (a passing replay is 0
  bytes), and names `verdict.failures[].kind` as the way to separate your own failing asserts from
  injected drift/corruption findings, which the exit code collapses.

- **`verdict.failures[].kind` said "your assertion failed" when the cassette was corrupt.** That field is
  the documented way to tell an author's own failing `assert:` from something the harness injected — and
  seven cassette-corruption paths (duplicate `request_id`s with differing bodies, malformed control-out
  lines, a truncated recording) pushed their pseudo-assertions without the `source` stamp that drives it.
  `computeVerdict` falls back to `a.source ?? "assertion"`, so every one of them was reported as an
  authored assertion, in direct contradiction of the contract written above the field. A consumer asking
  "did MY assertions pass?" with the documented `select(.kind=="assertion")` query got a yes-it-failed on
  a cassette that was simply unreadable.

  They now stamp `cassette-format`, whose definition widens from "a cassette too new to interpret" to
  cover corruption as well — the shared property is that the cassette itself cannot be interpreted. No
  enum changed; `cassette-format` was already a member.

  **The guard that was supposed to catch this could not see it.** It scanned for the `{} as Assertion`
  cast shape, and all seven pass a real assertion key (`{ replay_protocol_fidelity: true }`), so they
  never matched — the suite stayed green while the sites shipped unstamped. It now keys on
  `assertions.push(` itself, which in these files is by construction an injection (an author's own
  asserts are evaluated elsewhere and never reach that call), and carries a mutation check proving the
  matcher rejects a bare push. Its site count is now counted rather than inherited: the old comment said
  2 in `cli.ts`; there are 3.

- **A stale sub-agent prompt pointer can no longer ship with a green `sync`.** The prompt assets a
  baseline points at (`spawn.subagentAppendHostLoop` / `spawn.subagentAppend`) are hand-authored, so
  `sync` carries the previous release's values forward untouched — while the drift sentinel compares the
  shipping app's text against a recorded fingerprint and never looks at those pointers. Recording a new
  fingerprint therefore cleared the sentinel whether or not the pointer moved, and a host-loop sub-agent
  would silently receive the previous release's paraphrase with every check green.

  A new coupling check closes it: when the newest recorded fingerprint differs from the one before it on
  an axis, the newest baseline's pointer for that axis must differ from the previous baseline's. Both
  inputs are already-committed data, so there is no new field to fill in — and nothing to copy-paste into
  compliance, which is what sank an earlier attempt at this. Verified by simulating the real failure: the
  check fires and names the exact edit required.

  Its limits are documented where it lives, not glossed: the committed asset is a deliberate paraphrase,
  so this enforces coupling and cannot verify faithfulness; it is dormant between fingerprint moves; and
  back-filling an older fingerprint entry equal to the newest silently disarms it.

  Alongside it, the per-tier branch-selection assertions were unfrozen from a pinned `desktop-1.20186.1`
  to `latest`. Pinned, they asserted real hl-vs-vm content semantics that could never observe a repoint
  of the CURRENT baseline — coverage in appearance only for the pointer production actually renders.

- **`verify-cassettes` stopped flagging the agent's own built-in skills as operator inventory.** The
  host-inventory scan keys off a closed roster of skills the product itself ships; that roster still held
  a single entry (`deep-research`) while the agent grew fourteen more. The first fresh `protocol`
  recording after a sync therefore reported 14 `host-inventory` findings on a cassette carrying no
  operator inventory at all — the exact false positive that pushes people toward a blanket
  `--allow-host-inventory`, which would disable the check that matters.

  The roster is now current, established three ways rather than assumed: the recording was made against
  a **managed (fresh) config dir** whose session stages no plugins or skills, so nothing from the
  operator's own config could have been enumerated; every name appears as a literal in both the staged
  agent ELF and the host CLI; and ten personal/plugin skill names from the same machine are **absent**
  from that binary, so the check discriminates rather than matching everything. The known cost is
  unchanged and inherent to a name-keyed set: an operator whose own skill shares one of these bare names
  is no longer flagged — the same trade the built-in *agent* roster already makes.

- **A minified `$` in the shipping app could make `sync` refuse a perfectly healthy Desktop release.**
  Several spawn-contract sentinels pinned a minifier-assigned binding, callee or member name with
  `\w+`. `\w` is `[A-Za-z0-9_]` — it cannot match `$`, which is a legal JavaScript identifier
  character that minifiers use freely. Claude Desktop 1.32885.1 named the empty-`ANTHROPIC_*`
  blank-sentinel helper `$s`, and the sentinel asserting that helper runs on the spawn env stopped
  matching. Nothing about the spawn contract had changed: re-deriving it against the new app produced
  the same 22 keys with the same values.

  An audit of every regex in the sync module found **11 such atoms across 7 patterns**, all in the
  spawn family, of which only one was firing — the other six were latent purely because their bindings
  happened not to draw a `$` this build. All of them are now `[\w$]`, including the captured env-object
  binding, which previously admitted a *trailing* `$` only and so would still have missed a
  `$`-initial name even with its callees widened.

  **The whole class fails closed** — an unresolvable value flags and refuses to write, rather than
  writing a wrong one — so the cost was a false refusal on a good release, never a silently incorrect
  baseline. That is also why six of the seven went unnoticed for so long, and why the fix ships with a
  guard rather than just a widening: a new test asserts the module contains **zero** regex atoms that
  cannot match a `$`-initial identifier, and backs that structural invariant with behavioural fixtures
  that drive the real sentinels using `$`-named bindings. The fixtures also assert the sentinels still
  *fire* when the contract genuinely breaks, so the widening cannot be mistaken for weakening them.

  Ships with one relaxation on the release checker: `check-versions`' DESIGN.md gap-form regex now
  accepts the singular *"1 baseline has shipped since"* — this release is the first N=1 gap on record,
  and the count is still verified against the enumerated list, so the singular form is not a loophole.

### Documentation

- **Three claims about the committed example fixtures were wrong, and are corrected.** `docs/protocol.md`
  said all three golden protocol vectors were "extracted verbatim" from
  `example-multiselect-gate.cassette.json`. `initialize.json` cannot have been: it carries an
  `appendSubagentSystemPrompt` holding the VM sub-agent text and a session id present in no committed
  cassette, while a `protocol`-tier run renders no sub-agent append at all and that scenario has been
  `fidelity: protocol` for its entire history. It is a real captured frame, from a container-tier run
  that was never committed. The other two do come from that scenario, but "verbatim" has a shelf life —
  one still matches field-for-field, the other carries a `request_id` regenerated on every re-record.

  `examples/replays/README.md` described a fixture as "`protocol`-tier (no Docker/agent needed to
  replay)", implying the tier is the reason. Replaying any cassette needs neither Docker nor a staged
  agent whatever tier it was recorded at — replay reads recorded frames and spawns nothing, which is why
  the token-free CI lane replays the container, protocol and hostloop fixtures side by side. The same
  file called that fixture "synthetic"; that was true of its hand-written capability catalog and stopped
  being true when it was re-recorded hermetically for this release's baseline sync.

- **`docs/maintenance.md` now names the repoint step.** The per-release procedure walked a maintainer
  through updating the paraphrase asset, appending a `subagentAppendVersions` entry and re-running
  `sync` — and never said to repoint `spawn.subagentAppendHostLoop` at the new asset. Those pointers are
  hand-authored, so `sync` carries the previous release's value forward untouched, and writing the
  fingerprint entry clears the sentinel whether or not you repoint. Skipping it ships a host-loop
  sub-agent the previous release's paraphrase with `sync` green. That is the step that was missed on
  1.32885.1 and caught by eye.



## What's Changed
* release: 1.25.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/120


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.24.0...v1.25.0
