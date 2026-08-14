---
title: cowork-harness
date: 2026-08-14 22:10:54 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.23.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, cowork-harness, is a test harness designed for testing Claude Cowork skills. It automates the reproduction of the observable runtime contract closely enough to run tests headless and in CI environments across various scenarios. The key capabilities include reproducing both behavior and limitations such as sealed filesystem and default-deny egress. It provides a green test result when all conditions are met, ensuring that real Cowork runs would also pass.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.23.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action, cowork-harness, is a test harness designed for testing Claude Cowork skills. It automates the reproduction of the observable runtime contract closely enough to run tests headless and in CI environments across various scenarios. The key capabilities include reproducing both behavior and limitations such as sealed filesystem and default-deny egress. It provides a green test result when all conditions are met, ensuring that real Cowork runs would also pass.

## What's Changed


### Added

- **Platform baseline for Claude Desktop 1.30096.1 (bundled agent ELF `2.1.229`).** The agent ELF's
  `sha256` was verified against the official release manifest for 2.1.229. The modeled spawn contract is
  unchanged across the bump — `spawn.tools` stays 20 entries, `allowedTools` 19, the egress allowlist 15
  domains, the spawn-env key set 61 with 31 conditional spreads, and the Cowork system prompt is
  byte-identical (its fingerprint is recorded for 1.30096.1 in
  `baselines/prompts/cowork-system-prompt-fingerprints.json`). `sync` refused to write this baseline until
  the two sentinel defects below were corrected.

- **Two drift sentinels pinned in the synced baseline's `provenance.gates`**: the artifact-mount gate
  (`coworkArtifacts`) and the CIC `can_use_tool` handler (`cicCanUseToolEnabled`). Both are force-ON in
  production, and the artifact-mount gap documented in `docs/fidelity-gaps.md` rests on that fact — which
  was previously read from a live feature cache the baseline never recorded, so nothing would have
  noticed it changing.

- **`check:versions` guards DESIGN.md's live-verification scope note (invariant 11).** That note is the
  repo's disclosure of how much of the *current* baseline has actually been verified live, and every
  figure in it is derivable from `baselines/desktop-*.json` — yet it sat in unguarded prose and had
  drifted twice, the baseline list having been extended without recounting. Understating how much is
  unverified is the doc error least worth shipping, so it is now checked. Two forms, selected by whether
  the note's live-pass baseline is the newest one: with a gap, the listed baselines must run contiguously
  from wherever the list starts through the newest baseline, and both counts must match the list and the
  real `agentVersion` transitions; with no gap, the note must say so explicitly and carry no stale
  enumeration. Either way the named agent must be the newest baseline's. Because shipping a baseline flips
  the no-gap form into the gap form, a new release now forces the note to be rewritten rather than
  silently overstating coverage. The list's *start* is deliberately not derived — the note omits baselines
  covered by the live pass itself, and encoding that rule would only relocate the drift. A missing or
  unrecognisable note is an error, never a skip.

- **Cassettes now record the rootfs image they were recorded against**, closing the last gap in the
  agent-image provenance work. The image decides `missingCapabilityUse`, which `computeVerdict` fails
  on, so the rootfs is verdict-affecting — yet no cassette field named it, and a recording silently
  inherited whatever image happened to be on the machine. `environment.agentImage` now carries the
  resolved `ref` plus whichever identities exist: `configId` (the local config id, present for built
  **and** pulled images but not comparable across machines) and `registryDigest` (the registry manifest
  digest, pulled images only, and the only identity comparable across machines).

  The field is stamped only for the tiers whose capabilities actually come from that image —
  `container` and `hostloop`. `microvm` probes the Lima guest instead, so it records nothing rather
  than naming an image that had no bearing on the run. Additive: no `cassetteVersion` bump, absent on
  cassettes recorded before the field existed, and never backfilled — the absence is meaningful.

  `ref` is a verbatim `COWORK_AGENT_IMAGE` value, so a private registry ref (`registry.acme.corp/…`)
  would otherwise be committed into a public fixture with `grep`-clean transcript text. It is scanned
  by `verify-cassettes` and rewritten by redaction like every other user-controlled string; the digests
  are content hashes and are deliberately left intact.

- **`replay` warns when the rootfs image differs from the recording.** It compares `registryDigest`
  first — the only identity stable across machines, which is the case the field exists to serve — and
  falls back to the local config id only when neither side has a registry digest. A recording made
  against a pulled image and replayed against a local rebuild is reported as drift rather than passing
  silently. Advisory only: a legitimately re-pulled image is the common case, so this names the
  difference instead of failing the replay.

  The current image is inspected at most once per `replay` invocation, and only when a cassette
  actually recorded one — so replay stays usable with no container runtime present, and the
  `verify-cassettes` privacy scan never shells out.

### Fixed

- **The host-loop `canUseTool` chain sentinel could be widened silently.** Desktop 1.30096.1 inserts a
  fourth link into the chain — an allow carve-out that rewrites the tool's input and runs ahead of the
  existing deny. The sentinel was a prefix match with no terminator, so it accepted any chain that merely
  *started* with the expected calls: an inserted **synchronous** link would have passed unnoticed, and
  the block that surfaced this release only happened because the new link is `await`ed.

  The check now decomposes the chain with a real scanner (the assignment must be brace/paren-balanced,
  and `??` legitimately occurs inside a template interpolation in the chain's own log line) and asserts
  it end to end: the terminal operand must be a bare call to the saved original, every operand whose
  callee is an `async function` must be awaited, no link that can return an allow may precede the
  VM-path deny, and each link must resolve to a definition. The await rule is the load-bearing one — an
  un-awaited async link returns a Promise, which is never nullish, so `??` short-circuits and every later
  link *including the original callback* is skipped. Three and four link chains are both accepted so an
  older Desktop still syncs; a fifth is reported for classification.

- **The early-allow ordering check had never fired.** It searched for a containment helper by two
  readable names, neither of which occurs in any shipped asar — production mangles the call — so the
  guard was permanently inert and its test passed only because the fixture hard-coded a token that does
  not exist in the product. The helper is now identified by shape and resolved through the export map.

- **S6c no longer hard-blocks on a minifier rename.** It pinned the HIPAA-restriction call by its
  minified *member name*, so the rename `A.r()` → `t.hu()` failed a predicate that is otherwise
  byte-for-byte identical. The callee is now resolved through the chunk's export map and verified two
  hops to the reader that consults the restriction, with resolution failure treated as a miss.

- **The `protocol`-tier live suite had been silently skipping itself for many releases.** `live-matrix`
  required a staged agent binary for a baseline pinned years back, but protocol fidelity spawns the host
  `claude` from `PATH` and never resolves a staged binary — the requirement was never real for that tier.
  Because Claude Desktop prunes old staged agents on update, the gate went false as soon as a machine
  moved past that agent version, and the suite dropped out on every developer machine and in CI without
  naming itself. It now gates on what the tier actually uses and emits a skip notice identifying the
  failing precondition, since this is the only protocol-tier live coverage there is.

- **The `hostloop` uploads-are-`Read`-able live case no longer fails on the model's choice of exploration
  tool.** It asserted that neither native nor workspace bash ran at all, as a proxy for "the agent needed a
  workaround" — so a run where the agent listed the uploads directory with `ls` went red, while the next
  run, which used `Glob` instead, went green. In both the upload was `Read` directly at the advertised
  path and no outputs-delete fired, so the regression the case guards was absent either way. It now reads
  the recorded bash commands and fails only when one **names the uploaded file**, which is what reading or
  copying it as a workaround requires and what listing its directory cannot do. Verified against both
  recorded runs plus `cat`/`cp` mutations: the false red is gone and the workaround chain still trips it.

### Documentation

- **A full live end-to-end pass now covers baseline `desktop-1.30096.1` / agent 2.1.229**, across all
  three tiers (`protocol`, `container`, `hostloop`), superseding the `desktop-1.20186.0` pin. DESIGN.md's
  claim and its scope note are re-stamped accordingly, including the caveats: two `live-outputs-delete`
  cases skipped as model-behaviour misses, the tiers were covered across two invocations because the
  `protocol` suite was repaired mid-pass, and the suites are model-dependent enough that a single red is
  evidence of variance until a re-run says otherwise.

- **`docs/fidelity-gaps.md`'s artifacts section records the agent-side consent floor.** The server-delivered
  session flag no longer only decides Desktop's spawned tool list — the agent reads the corresponding
  spawn-env key itself and uses it to select its own artifact publish surface and a read-only mode. The
  agent also refuses artifact publishes, comment replies, comment-thread resolves and artifact database
  writes outright in a session with no answerable approval surface, and fails closed if it cannot confirm
  one. The section now also states why this is recorded rather than modeled: artifact operations are
  server-backed, on hosts outside the sandbox egress allowlist, so supplying the flag would offer a tool
  resolving against a service the sandbox cannot reach.

- **The same section's mount-kind list is corrected.** It named a synthetic root that is not a mount kind
  and omitted one that is, which mattered because the artifact-mount gap is stated in terms of what the
  harness does and does not mount.

- **`docs/maintenance.md` corrects what moves the floating agent-image `:2` tag.** It is a curated pointer
  moved deliberately by a manual publish with `immutable_only` unchecked — explicitly *not* something a
  release tag push moves.



## What's Changed
* release: 1.23.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/115


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.22.0...v1.23.0
