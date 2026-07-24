---
title: cowork-harness
date: 2026-07-24 06:07:53 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  cowork-harness is a scriptable, CI-friendly test harness that accurately reproduces Claude Cowork's observable runtime contract. It supports various testing scenarios and environments, including local skills and live tiers with multi-node setups and Docker containers. The tool helps developers automate their skill testing across different platforms and ensures consistent behavior with real Cowork runs.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

cowork-harness is a scriptable, CI-friendly test harness that accurately reproduces Claude Cowork's observable runtime contract. It supports various testing scenarios and environments, including local skills and live tiers with multi-node setups and Docker containers. The tool helps developers automate their skill testing across different platforms and ensures consistent behavior with real Cowork runs.

## What's Changed


### Added

- **`check:versions` closes the stale-pin gap a docs audit found.** Three new enforcement surfaces:
  every companion-skill `references/*.md` `(baseline desktop-X.Y.Z)` pin must match SKILL.md's
  `tracks-harness` baseline; `task-recipes.md` now carries the same guarded
  `` Tracks `cowork-harness X.Y.Z` `` stamp as the other references (and is a `bump-version` target);
  DESIGN.md's one present-tense "currently **X**, per `baselines/desktop-Y.json`" sentence must name the
  max committed baseline + its `agentVersion` (its dated verification-pass notes stay exempt). A new
  docs-index sync test keeps README's Documentation table and docs/README.md's Guides table from
  drifting apart (that drift is how `critique.md` went missing from the README table).

- **`doctor` warns when a *pulled* agent image is behind the published one.** For the
  `container`/`hostloop`/`cowork` tiers, a new advisory `image-freshness` check compares the local agent
  image's registry digest against the current published `ghcr.io/yaniv-golan/cowork-agent-base:2` (or
  `-full`) and warns — with a re-pull + retag remedy — when they diverge. Best-effort and never blocking:
  a locally-built image (no registry digest), an offline host, `docker buildx` being unavailable, or a
  custom `COWORK_AGENT_IMAGE` is a quiet skip, never a false "stale"; only a pulled image incurs a network
  probe. The `doctor --output-format json` envelope gains an `image-freshness` entry (the open
  `checks[].id` set — SPEC §12 — already permits this).
- `critique` now stamps `verdictProvenance` on every report (JSON key + text "verdict scope" line): the
  verdict is an advisory self-run, not an independent attestation.
- **`critique --skill <name>` — plugin-aware grading.** A multi-skill plugin root (`skills/<name>/SKILL.md`,
  no root SKILL.md) previously graded a missing file, downgrading every coverage finding to "not
  adjudicable". `--skill` selects the invoked skill's folder for the packager (selection only — the
  positional folder is still what both turns mount, and `fingerprint.skillHash` is unchanged: per-plugin,
  not per-skill); a multi-skill root with no `--skill` is refused **before any model spend**, naming the
  available skills; a single-skill plugin auto-selects with a notice. The evidence package now also
  carries the invoked skill's `agents/<name>.md` body and bounded `references/*.md` **content** (not just
  filenames), and the report carries an advisory `skillInvocationObserved` (false = the graded run's own
  `skillActivity` never mentions the selected skill).
- **`critique` persists run-dir artifacts.** Every critique writes `critique-report.json` (the
  machine-readable report); when the evaluator ran, `critique-evidence-package.txt` (the exact armored
  corpus it graded against — re-grade a disputed finding offline); on an instrument failure (exit 2),
  `critique-salvage.json` (the self-report + each evaluator pass's RAW reply captured **pre-parse**).
  New `--out <path>` also writes the selected-format report to a file. The two `not-built` limitations
  these close (`evidence-not-persisted`, `report-stdout-only`) are removed from the registry.
- **Per-critique cost across all four workloads.** The report's `costUsd` sums the task turn, reflection
  turn, and BOTH evaluator passes (whose usage the transport previously discarded), marked `INCOMPLETE`
  whenever any workload is unpriced. The header also carries the pinned `fidelity` plus the graded turn's
  recorded `gradedEffectiveFidelity`/`gradedBaseline`, and the graded run's resolved gate answers are
  echoed as copy-pasteable `--answer` lines (JSON: `gateAnswers`).
- **`critique` evaluator parse is per-item tolerant.** One malformed item in an `{"items":[...]}` reply
  previously discarded the whole document ("no valid JSON found", a broken discovery run). Valid items now
  survive; malformed ones are dropped AND counted (`droppedEvaluatorItems`, surfaced in both report
  formats). The integrity canary is recognized by its `idea` alone (a mutated echo still proves
  instruction-following) and stripped before dedup, so a full-document + canary-only-restatement reply no
  longer trips the ambiguity throw. Fail-loud preserved: garbage, or all-malformed-with-no-canary, still
  throws — now naming which field check failed.
- **Sub-agent research is observable end-to-end.** A sub-agent's WebSearch never enters the main
  `toolCounts`/`webSearches[]`; its query + result are now captured from the child session transcript as
  `subagents[].webSearches` (bounded, live/record lane only — absent on replay, and absence is never
  evidence of no research), surfaced by the new **`trace --view subagent-research`**, and packaged into
  critique's evidence as a "Sub-agent research" section so "researched" claims are groundable.
- Each critique item now carries a **`findingFingerprint`** (sha16 over the normalized
  idea + classification + recommendedAction, deliberately excluding the input-specific evidence excerpt) —
  clusters the SAME finding across DIFFERENT inputs, complementing `skillHash` (same skill across fixes).
  docs/critique.md gains a "Reproduction" section documenting the ≥2-run discipline.
- SKILL.md truncation is now reported distinctly: a readable-but-oversized SKILL.md marks the report
  `skillMdTruncated` ("the evaluator graded a cut copy") instead of being indistinguishable from a fully
  packaged one; only missing/unreadable still forces the mechanical "already-covered" downgrade — the
  `--help`/docs limitation wording now says so.

### Changed

- **Published agent images (`cowork-agent-base` / `cowork-agent-full`) now carry OCI metadata labels**
  (`org.opencontainers.image.{title,description,source,documentation,licenses}`), so their GHCR package
  pages render a description, repo link, license, and the "contains no Anthropic binary" provenance note
  instead of appearing bare. The `publish-image` workflow sets the `full` variant's title/description via
  `--label` so its page isn't mislabeled by the base image's baked-in defaults.
- `critique` evidence caps raised: SKILL.md 16KB→64KB, transcript 16KB→32KB, overall package 48KB→144KB
  (the overall cap sits above the worst-case per-section sum, agents/references/research sections included), so
  a flagship-sized (~51KB) SKILL.md no longer grades permanently truncated. Increases per-critique evaluator
  token cost on large skills (~2–2.5×).
- `sync`'s two code-tripwire warnings (the `getMcpSkillSources` caller-count and MCP-skills-capability
  checks) now carry a self-contained instruction — re-verify whether MCP servers can contribute skills and
  whether the harness must model MCP-contributed skill sources — instead of pointing at a reference the
  published repo does not carry.
- **Pinned sessions stamp their fidelity tier on `session.json`, and a cross-tier `--resume` fails loud**
  (pre-spawn, with a "re-run at `--fidelity <stamped>`" remedy). The agent's native conversation store is
  tier-LOCAL — container persists it under the work tree, hostloop under the host config dir — so resuming
  a session at a different tier would hand the binary a `--resume` for a conversation its store has never
  seen. Legacy stampless manifests (pre-dating the stamp) are let through with a warning; every manifest
  written from now on carries the stamp. `readSessionManifest` gains a required `expectedFidelity`
  argument.

### Docs

- README documents that the agent images are **published to GHCR** and can be pulled + retagged instead of
  built from scratch (`:2` floats to the latest release; `:2-<version>` pins an immutable per-release
  build), and that the harness resolves the *local* tag — so a stale local image shadows the published one;
  re-pull after upgrading. The `doctor` command row notes the new freshness warning.

### Fixed

- **hostloop uploads bullet advertised a non-readable path.** The dynamic "## Shell access" section
  rendered the uploads mapping's file-tool side as `dirname(upload.hostPath)` — the user's original
  source dir, which the path-containment gate does not allow — while the base prompt pointed at the
  correct staged dir. An agent following the bullet got "outside this session's connected folders" and
  worked around it via copy-into-outputs + `rm`, tripping a spurious `outputs-delete` fail. The bullet
  now advertises the staged uploads dir — the SAME hoisted value the path gate allows, so the prompt and
  the gate cannot disagree. (Live-verified: hostloop `--upload` + Read-tool read succeeds at the
  advertised path.)
- The task-turn timeout kill message now names `--timeout` and the 10-minute default; a "missing"
  SKILL.md report note now points at `--skill` / the invoked skill's folder (the multi-skill-plugin-root
  cause) instead of only stating the symptom.
- Shipped-doc corrections that induced field misdiagnoses: the cowork-harness skill's gotcha #8 now states
  that **production enforces** outputs delete-deny (EPERM + approval) and the harness gap is
  detection-only; docs/critique.md documents that a WebSearch produces **no search-host entries in the
  container egress.log** (an `api.anthropic.com`-only log is consistent with research working —
  live-verified with a first-party capture) and that sub-agent searches don't increment the main
  `toolCounts.WebSearch`; the shipped fidelity reference explains the hostloop Read-vs-bash path split
  including uploads readability.
- **`critique` now runs at `--fidelity hostloop` as well as `container` — the container-tier pin is
  lifted.** The pin existed because the reflection turn *resumes* the task turn and resume-continuity was
  only proven for the container Linux ELF; a live two-turn proof at hostloop's **native** agent binary
  (`test/live-contract.test.ts`, "resume-continuity proof at hostloop") cleared it, and a live
  `critique --fidelity hostloop` e2e validates the full protocol there. `microvm`/`protocol`/`cowork` stay
  refused, each with its own stated reason: the single `container-tier-only` limitation is replaced by
  three tagged ones — `microvm-tier-refused` `[unverified]` (a resume-continuity proof at the microVM guest
  would lift it), `protocol-tier-refused` `[not-built]` (protocol never plumbs a session id/`--resume`),
  and `cowork-tier-refused` `[deliberate]` (the synced loop gate would make the graded tier
  baseline-dependent, adding noise to skillHash-paired generation comparisons).
- **`skill` accepts `--allow-host-writes`** (and `critique` forwards it to BOTH turns) — the
  hostloop writable-connected-folder consent that previously only `chat` (its own flag) and `run` (the
  `allow_host_writes: true` scenario field) could grant; a plain `skill --fidelity hostloop --folder X`
  was refused with no way to consent at all. Folder-less runs (skill dir + uploads) still need no consent —
  uploads and skill/plugin mounts are read-only.
- **`critique`'s spaced flag parser no longer silently grabs the next flag as a value.** `critique
  <folder> --prompt --output-format json` (a forgotten `--prompt` value) swallowed `--output-format` as the
  prompt AND dropped the real flag, then ran a four-workload critique on the wrong input. The spaced form
  now fails loud and points at the equals escape hatch (`--prompt=<value>`) for a value that intentionally
  starts with `-`.
- **`critique`'s subprocess byte cap is now one combined stdout+stderr budget.** `boundedSpawn` kept two
  independent per-stream counters, so a looping or hostile child splitting output across both streams could
  buffer ~2× the documented cap before either tripped. It now charges both streams against a single budget
  and slices the terminal chunk to the remaining room, so captured output never exceeds the cap.
- **`critique`'s verbatim citation-grounding is now case-sensitive.** The mechanical check that drops any
  finding whose cited evidence is not a verbatim excerpt normalized whitespace AND folded case — so a
  case-altered (paraphrased) citation resolved as "grounded," weakening the principal defense against
  evaluator hallucination. It now matches case-exact; whitespace reflow stays tolerated (models reflow
  spacing when quoting — they don't change case).
- **critique's "Attached inputs" evidence no longer reports `(none)` when the uploads dir is unreadable.**
  `listAttachedInputs` caught every `readdirSync` failure identically, so an unreadable uploads dir
  (`EACCES`/`ENOTDIR`/…) collapsed to the same `(none)` as a legitimately-absent one — telling the
  evaluator "the agent correctly saw no file" when attachment presence was actually UNKNOWN. It now
  distinguishes `ENOENT` (absent) from a genuine read fault and surfaces the uncertainty loudly.
- **critique flags a partly-corrupt archived turn-1 transcript instead of grading it as clean.**
  `readTurn1Transcript` skipped malformed JSONL rows (resilient) but returned `degraded: false` on the
  first valid transcript record regardless — so archive corruption vanished from evidence health and the
  evaluator graded a silently-incomplete transcript as solid ground truth. It now scans the whole
  (turn-1-only) archive and sets `turn1SliceDegraded` when a malformed row was skipped or the archive
  doesn't hold exactly one transcript record; the transcript is still delivered, just flagged.
- **critique flags a crashed task turn instead of grading evidence from it.** `taskTurnInfraFailure` only
  treated a *killed* (timed-out / byte-capped) task turn as an instrument failure — a task that exited
  nonzero without ever printing a parseable result envelope (a crash after the early `[status]` line)
  slipped through, and its `[status]`-recovered run dir was reflected on and graded as a legitimate task.
  It now also flags a nonzero exit with no parseable envelope. Deliberately narrow: a completed run that
  reported a failing verdict (`ok:false` / `result:"error"` with a valid envelope) stays gradeable.
- **A nested unreadable output subtree no longer persists a partial file list as complete.** The
  `workspaceFiles` / `artifacts` list was recorded as UNAVAILABLE (`undefined`, the evidence-unavailable
  convention) only when the workspace ROOT was unobservable; a nested `EACCES`/`EIO` subtree left the walk
  partial (`walkComplete: false`) but still persisted the incompletely-enumerated list as if complete. An
  authored file inside the unreadable subtree then vanished with no signal, so an absence-sensitive
  consumer (`delivered_clean` / `ended_with_question`, the replay `diff`, `scaffold`, `file_exists`) could
  read it as absent — a silent false-clean. All three RunResult producers (run, partial-salvage, chat) now
  route through one shared `trustedWorkspaceFiles` gate that collapses a missing root OR any incomplete
  walk to `undefined`, and the run lanes emit a `::warning::` naming the unreadable subtree.



## What's Changed
* fix(security): fast-uri HIGH advisories + CodeQL URL-substring alert by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/64
* chore(deps): Bump the actions group across 1 directory with 3 updates by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/63
* feat(doctor): warn on stale pulled agent image; label GHCR images by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/65
* fix(critique): reject a flag-looking value in the spaced form (no silent positional-grab) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/66
* fix(critique): one combined stdout+stderr byte cap in boundedSpawn (was 2 independent caps) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/67
* fix(critique): make verbatim citation-grounding case-sensitive (was case-folded) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/68
* fix(critique): don't report "(none)" attachments when the uploads dir is unreadable by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/69
* fix(critique): degrade a partly-corrupt archived turn-1 transcript (was silently clean) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/70
* fix(critique): flag a crashed task turn instead of grading evidence from it by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/71
* fix(run): record workspaceFiles/artifacts unavailable on an incomplete workspace walk (#54) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/72
* release: 1.8.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/73


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.8.0
