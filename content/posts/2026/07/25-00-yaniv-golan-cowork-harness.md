---
title: cowork-harness
date: 2026-07-25 00:14:50 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.9.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This action automates the testing of Claude Cowork skills in a headless, scriptable, and CI-friendly environment. It reproduces the observable runtime contract closely enough to test skills across various scenarios without relying on the locked Desktop app. The main purpose is to reduce the cost and complexity of skill development by allowing for automated testing with limited or no access to the Desktop app itself.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This action automates the testing of Claude Cowork skills in a headless, scriptable, and CI-friendly environment. It reproduces the observable runtime contract closely enough to test skills across various scenarios without relying on the locked Desktop app. The main purpose is to reduce the cost and complexity of skill development by allowing for automated testing with limited or no access to the Desktop app itself.

## What's Changed


### Added

- **`schema/critique-report.json`** — a descriptive, test-pinned schema for `critique`'s JSON report /
  `critique-report.json` artifact, so automation consumers (budget pacers gating on `costUsd.complete`,
  harvesters) parse field names/shapes from a schema instead of prose. Deliberately **not** a SPEC
  §12-frozen surface (unlike `doctor.json`) — critique is EXPERIMENTAL and additive field changes are
  expected; the schema says so in its own description, and a two-way sync test pins it against the
  actual report builder on every branch (findings / infraFailure / evaluatorError).
- **`gradedSkill` in the critique report** (text header + JSON): the resolved `skills/<name>` the
  packager graded under `--skill`/auto-selection. Load-bearing for multi-skill plugins:
  `gradedSkillHash` keys the whole mounted plugin, so pairing by hash alone cross-pairs critiques of
  *different* skills — pair by `(gradedSkillHash, gradedSkill)`. Docs updated accordingly.

### Docs

- Truncation→DROPPED mechanics: a finding whose `evidence` quotes SKILL.md text past the packaging cap
  fails citation-resolution and lands in DROPPED (the check runs against the *cut* copy) — documented
  next to `skillMdTruncated` so a back-half DROPPED skew on an oversized skill has its cause named.
- `findingFingerprint` direction-of-inference: high-precision, LOW-RECALL — a match proves
  reproduction; a mismatch does NOT prove non-reproduction (the same finding reworded fingerprints
  differently). The Reproduction section says so before anyone concludes "didn't reproduce".
- Evaluator cost share: the two evaluator passes were ~3/4 of a measured e2e total — the
  calibrate-then-`--evaluator-model` strategy is now in the cost section and `critique --help`, with
  the armor-verification-is-default-evaluator-only caveat.
- SPEC §12 now names the critique report explicitly under **NOT covered**: `schema/critique-report.json`
  is descriptive (parse against it, not prose) but not the compatibility contract while critique is
  EXPERIMENTAL — its surface-baseline presence is for change visibility, and it is the promotion
  candidate on the `doctor.json` template once critique stabilizes. README, llms.txt, and the shipped
  skill point at the schema and the `(gradedSkillHash, gradedSkill)` pairing rule.

### Fixed

- **critique's "Attached inputs" evidence no longer reports `(none)` when `mounts.json` is corrupt.**
  `listAttachedInputs` derived connected-folder names from `loadVmPathContext`, which returns `null` for
  BOTH an absent `mounts.json` (legitimately no mounts) and a present-but-unparseable one (the folder map
  is UNKNOWN). Uploads already distinguished these (the ENOENT-vs-read-fault split), but folders — which
  have no fixed-layout fallback — silently collapsed to `[]`, so a corrupt `mounts.json` rendered `(none)`,
  telling the evaluator "the agent correctly saw no connected folder" when the truth was unknown. It now
  surfaces a corrupt `mounts.json` as an explicit UNKNOWN note, completing the same
  confabulation-vs-correct guard the uploads path already applies.
- **`diff` no longer treats two tool inputs that differ only past the ~2000-char cap as the same call.**
  `canonicalizeInput` truncated a tool input's canonical JSON to a 2000-char cap and used that truncated
  string as the tool-sequence equality key, so two `Write`/`Bash` calls sharing a long identical prefix
  but differing only in the dropped tail compared as `op: "same"` in `diffToolSequence` — a false "no
  change" that could flip the advisory `diff` exit code to 0. A truncated key now folds in a
  `#<len>·<sha16>` hash of the full canonical string, so the key depends on the entire content while the
  visible prefix stays readable in the hunk; both diff sides canonicalize identically, so the comparison
  stays consistent.
- **`COWORK_VM_GATEWAY` is now validated as a canonical IPv4 literal.** The L2-microVM gateway override was
  interpolated verbatim into a root-run guest `iptables -A OUTPUT -d <gateway>` command (via `sh -c`), so a
  malformed or hostile value could inject shell syntax into privileged provisioning — or, more mundanely,
  leave the firewall in an unknown state. `vmGatewayIp()` now rejects anything that isn't a canonical IPv4
  literal (digits-and-dots only, octets 0–255, no leading zeros), failing loud instead of reaching the
  shell. Operator-set env var, so this is defense-in-depth; no valid gateway value is affected.
- **The `agent.stderr.log` sink is now flushed before the teardown secret-scrub reads it.** The stderr sink
  was piped fire-and-forget and never awaited, so bytes still buffered when `scrubRawRunLogs` read the file
  could land raw *afterwards* — a persisted-secret leak in a narrow teardown window. `LiveAgentSession` now
  pipes it with `{ end: false }` and ends+awaits it in the same session-teardown drain that already flushes
  `events.jsonl` / `control-out.jsonl`, so the session generator resolves only after the sink is fully
  flushed — the scrub always sees the complete log.
- **`critique` no longer prints raw host paths in its report or diagnostics.** The text report's `run dir:`
  line, the `inspect <dir>` hints, the write-failure diagnostics, and the echoed skill-folder path all
  printed absolute `$HOME`-rooted paths, so a shared report or screenshot leaked the username + filesystem
  layout (it landed in a video frame). critique was the one rendering path in the CLI that never called
  `tildeify`, while `skill`/`run` scrub unconditionally. Every human-facing path is now collapsed to `~`;
  the JSON report and persisted-artifact paths stay raw (machine data a consumer feeds back to a tool). The
  `--demo` rejection is unchanged — it was never the fix — but its reason now notes the report already
  collapses paths.
- **`critique` fails fast on a missing or non-directory skill folder.** A typo'd/absent positional folder
  previously minted a session and spawned the task turn before infra-failing (exit 2), leaving a stray run
  dir behind. `resolveCritiquedSkillDir` now `existsSync`/`isDirectory`-checks the folder up front — before
  any session is minted or spawned — so a bad path exits 2 immediately with nothing left on disk. A
  present-but-`SKILL.md`-less folder still defers to the packager's degraded flow, unchanged.
- **`critique`'s report header and stderr diagnostics now say `critique:` (were `skill-critique:`).** A
  leftover label from the `scripts/skill-critique.ts` instrument; the invoked command is `critique`.
  Cosmetic, no schema change.



## What's Changed
* release: 1.9.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/74


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.9.0
