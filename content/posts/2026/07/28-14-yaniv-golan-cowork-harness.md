---
title: cowork-harness
date: 2026-07-28 14:43:10 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.13.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, cowork-harness, creates a scriptable test harness that accurately reproduces the behavior and limitations of Claude Cowork skills. It allows users to automate testing across multiple scenarios in CI environments without the need for a locked-down Desktop application. The tool supports various tiers of fidelity—replay, lint, live with a token and runtime requirements—providing flexibility based on the specific needs of the development process.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.13.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action, cowork-harness, creates a scriptable test harness that accurately reproduces the behavior and limitations of Claude Cowork skills. It allows users to automate testing across multiple scenarios in CI environments without the need for a locked-down Desktop application. The tool supports various tiers of fidelity—replay, lint, live with a token and runtime requirements—providing flexibility based on the specific needs of the development process.

## What's Changed


**Upgrade notes.**

- **`critique` verdicts are not comparable across this release — but the counts still are, and that
  distinction decides what to do with your history.** The evaluator now sees materially more of your skill,
  so a *per-item* verdict may flip for reasons that have nothing to do with your edits: do not diff
  individual findings across the boundary, and re-baseline anything that tracks a skill's progress
  report-to-report. **Do NOT discard your pre-upgrade reports.** Aggregate counts — above all the
  `not-adjudicable` count on identical prompts — remain the right way to measure what this release did,
  and your archived reports are the only "before" that exists. Pair that with the
  `citationResolved:false` (DROPPED) rate, which is the guard in the other direction: a much larger corpus
  could make the evaluator's citations sloppier, and nothing else would show it.
- **`skillMdTruncated` is gone from `critique-report.json`**, replaced by `evidenceBudget`
  (`corpusBytes` / `corpusCeiling` / `corpusCuts` / `corpusExcluded` / `trimRecord`). A harvester reading
  the old boolean should read `evidenceBudget.corpusCuts` instead — it is empty on every real skill.
- **An untracked skill file is no longer graded**, and the two cases behave differently — do not read one
  as the other:
  - **Untracked `references/**` or `agents/<skill>.md`** are simply excluded, named in
    `evidenceBudget.corpusExcluded`, and announced with a `::warning::`. **This does NOT force
    `not-adjudicable`** — and it should not: the agent never received those files either, so the
    evaluator's view now MATCHES the agent's. A finding like "the skill never explains X" against an
    excluded reference is correctly `grounded`; before this release the evaluator could see the file the
    agent never got and mark that true finding `already-covered`.
  - **An untracked `SKILL.md`** previously had its content **graded** (the packager read the host directory
    raw). It now reports `skillMdStatus: "untracked"`, withholds the content, and **does** force the same
    `not-adjudicable` downgrade as an unreadable one — coverage claims cannot be judged with no skill source
    at all.
  Either way, `git add` before critiquing to grade as-published.

### Fixed

- **Every `docs/*.md` pointer in the shipped skill was dead for a plugin install.** A plugin install
  materializes only `.claude/skills/<name>/**`; `docs/` ships in the npm tarball and not in that payload.
  The skill referenced `docs/` pages **25 times across 13 targets** anyway, so a consumer following one
  found nothing. This cost real time: `critique-evidence-package.txt` — the corpus the evaluator actually
  graded — was documented only in `docs/critique.md` and named nowhere a plugin user could see, so its
  behaviour got reverse-engineered from compiled `dist/` instead. All 25 are now repo permalinks that
  resolve for tarball and plugin users alike, a trimmed `references/critique.md` ships inside the payload
  covering what a plugin install cannot otherwise reach, and **`npm run check:skill-doc-links` fails CI on
  any new dangling reference** — the durable half, without which the next release re-creates them.
  Reported by a consumer.
- **`lint-skill --min-severity` exited 2 with no explanation.** The flag belongs to `lint`; the error now
  names the sibling command instead of leaving you to diff two help texts.
- **`index.jsonl` under-reported a critique's cost by ~39%.** A critique is four model workloads, but only
  the two graded turns produce a run and therefore a row — the two evaluator passes are direct API calls
  that produce neither. Anything summing the index missed them entirely (measured: $10.17 indexed against
  $16.67 actual across three runs), and the index is the only cost record that survives run-dir pruning, so
  spend trends built from it were systematically light. Each critique now writes one roll-up row carrying
  `critiqueTotalUsd`, and `--reindex` reconstructs it from the run dir's `critique-report.json` so a lost
  index recovers critique costs too. The roll-up's own `costUsd` is the **evaluator passes only**, so
  `sum(costUsd)` across all rows is exactly true spend — neither double-counted nor short. Roll-ups are
  excluded from `stats` aggregation, where they would otherwise add a phantom run and inflate `passRate`.
  Reported by a consumer.

  **Sharing a runs root across CLI versions:** an *older* CLI's `--reindex` deletes these roll-up rows —
  its supersede clause drops any prior row without a `turn`, which a roll-up is. Re-run `--reindex` with a
  current CLI to restore them from the run dirs.
- **A critique was indistinguishable from a plain `skill` run in the index**, which recorded the *inner*
  command for both turns and carried no `skill` field despite `--skill`. With three concurrent critiques of
  three skills against one plugin, every row read `scenario: skill-<plugin>` and the only way to tell them
  apart was opening each run dir. Rows now carry `critiqueRole` (`task` / `reflection` / `rollup`) and the roll-up carries
  `skill`. These are **additive-optional fields, not a new `command` value**: the row validator hard-codes
  the command allowlist, so widening it would make an older CLI quarantine every critique row and drop it
  from `stats`. The role derives from critique's own session-id shape, so `--reindex` marks rebuilt rows too.
- **`critique`'s task-turn timeout was 10 minutes**, which a sub-agent-dispatching skill routinely exceeds.
  The turn is killed *after* its model spend, so the consumer paid for a graded run and received an
  instrument failure instead of a critique — a reported case burned $11.05 that way. Raised to 30 minutes,
  matching the evaluator transport; `--timeout` still raises it further, and the byte cap and process-group
  kill remain the real runaway guards.


- **`critique` graded skills against a fraction of their own references.** The evidence package shared one
  8 KiB budget across ALL `references/**` files, filled in filename-sort order — so the alphabetically
  first file took what it needed and every later file was dropped whole. Measured across nine real runs on
  a six-skill plugin: the same first file was the sole survivor in 9 of 9, and **11 of 13 distinct
  reference files had never reached an evaluator in any run**, including a scoring rubric a sub-agent had
  opened in order to do the scoring. Skill-authored content (SKILL.md, every `references/**` file,
  `agents/<skill>.md`) now ships **whole** — bounded only by a **512 KiB sanity ceiling across all three
  combined**, which no real skill approaches (the largest measured is ~164 KB, about a third of it). A skill
  that does breach it is cut **loudly and by name** in `evidenceBudget.corpusCuts` — never silently, and
  never by refusing the run. The transcript is bounded separately at 128 KiB. Reported by a consumer.
- **The evidence corpus could contain files the agent never received.** Staging delivers git-tracked files
  only, but the packager read the host directory directly — so an uncommitted reference was absent from
  the mount and present in the evaluator's evidence. An agent saying "the skill never explains X" could be
  marked `already-covered` against a file it was never given. The packager now applies staging's own
  tracked-set filter and reports what it excluded.
- **`references/**` traversal was neither recursive nor symlink-aware**, so nested and symlinked reference
  files were dropped silently, with no omission marker.
- **The overall package trim did not converge.** It shaved a section by exactly the overflow and then
  appended a truncation marker, leaving the package marker-length over; it then shaved the next section by
  that amount and re-added the same marker, cascading through every section and exiting still over cap
  with the whole document mangled. It remains a belt-and-suspenders path that should never fire — the
  per-section budgets still sum under the cap, now pinned by a test — which is exactly why it had to be
  correct: nothing exercises it until something else has already gone wrong.
- **The overall trim destroyed the run record first.** It shaved from the last section backwards, which is
  the transcript — so a breach caused by oversized *skill* content was paid for by deleting *run*
  evidence. Trim priority is now explicit and independent of render order.
- **`writeSync` short writes and `EAGAIN` were unhandled at every stdout/stderr sink.** `verify-cassettes … | tail`
  died with `EAGAIN` instead of printing its verdict, and a short write on a pipe silently dropped the
  remainder of a JSON envelope. Every `writeSync` output site in `src/` now goes through `writeAllSync`, including critique's own JSON report — the largest single payload the tool emits, and the one its own code comment already flagged as at risk when piped to `jq`. (Sites already using async `process.stderr.write`, and two dev-only sinks under `scripts/`, are unchanged — the failure was specific to the synchronous idiom.)

### Documentation

- **`turn` vs `turns` in `index.jsonl` is now explained.** The names invite reading `turn: 2, turns: 1` as
  "turn 2 of 1". They are unrelated: `turn` is the position within a resumed session, `turns` is the count
  of agent turns *inside* that one run, and neither bounds the other. A critique roll-up carries neither,
  since it accounts for workloads that are not runs. Documented rather than renamed — a rename breaks
  `stats` and would need a schema version bump for no behavioural gain. Reported by a consumer.

**Cost note.** Sending the whole corpus costs more per critique, not less: roughly **+5% to +18%** on a
~$5.60 run, scaling with how much of your skill was previously being cut (a skill whose SKILL.md sat under
the old 64 KiB cap and had few references sees almost nothing; one that was heavily truncated sees the top
of the range). Evidence input was only ~14% of an evaluator pass's cost to begin with, which is why the old
caps were rationing the cheap term — but it is an increase, and a batch budget should carry it.

### Added

- **`session.json` now identifies its own run.** The resume manifest (written for `--session-id`/`--resume`
  runs) held only opaque ids, so the file whose name makes it the first thing you open in a run dir
  answered nothing — with several concurrent runs against one plugin there was no way to tell which was
  which without opening each turn's `result.json`. It now also carries `scenario` and `prompt`. These are
  **additive-optional**: nothing validates them, and a manifest written before this still resumes.
  `result.json` remains authoritative for identity; this is a signpost, not a second source of truth.
  Reported by a consumer.
- **`critique` reports progress.** Four `::notice::` lines on stderr at the phase boundaries (task turn →
  reflection turn → evaluator pass 1 → evaluator pass 2). Previously four model calls over 10–20 minutes
  produced no output at all until the finished report appeared, so a working run and a hung one were
  indistinguishable. stdout remains the machine channel.
- **`costUsd` now reports the evaluator passes' token split** (`evaluatorPass1Tokens` /
  `evaluatorPass2Tokens`, each `{input, output, cacheRead}`). The transport always handed the harness the
  full usage object and it was summed to a dollar figure and discarded — so the report said what a pass
  COST and never why, and "is this money evidence or thinking?" was unanswerable from any artifact the tool
  produced. That is the question that decides whether sending more evidence is cheap, which makes it the
  number to check first when budgeting a batch under the whole-corpus change above.
- **`evidenceBudget` in `critique-report.json`** — what the evaluator was actually shown, so the budgets
  are discoverable without reading compiled source. Includes `packageTruncated`, which is what carries the
  transcript's head+tail elision: that elision is what adds the evaluator's truncation caveat, and without
  the flag an elided package was indistinguishable from a clean one (`corpusCuts` is empty in that case and
  would otherwise imply nothing had been cut).
- **A no-reads signal** (`noSkillFilesRead`). When the graded turn Read no `references/` or `scripts/`
  file at all — neither the main agent nor any sub-agent — the report says so. Worded observationally on
  purpose: the underlying predicate counts the `Read` tool only, so `Grep` or `assets/` use produces an
  empty set having demonstrably reached the material, and calling that "progressive disclosure never
  fired" would be a false accusation about someone's skill.

### Changed

- **The overall evidence-package cap is 144 KiB → 768 KiB** (`critique --help` reports it). It stays a
  belt-and-suspenders bound: the per-section budgets deliberately sum under it, pinned by a test.
- **The transcript bound is 32 KiB → 128 KiB and now keeps head *and* tail** with an elided middle.
  A tail-only cut is the worst shape for a procedural skill, which puts its workflow steps last.
- **`critique`'s evaluator passes get a 30-minute transport timeout** (was the decider's 600 s default).
  That timeout is enforced with SIGKILL and no retry, so a kill during pass 1 discarded the whole critique
  *after* the graded turns had already been paid for.



## What's Changed
* release: 1.13.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/87


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.13.0
