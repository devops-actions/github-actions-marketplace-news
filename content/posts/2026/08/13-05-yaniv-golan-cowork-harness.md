---
title: cowork-harness
date: 2026-08-13 05:32:07 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.22.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **cowork-harness** is a testing tool that automates the testing of Claude Cowork skills by reproducing its observable runtime contract, including limits such as sealed filesystem and default-deny egress. It allows developers to script and automate end-to-end tests across various scenarios in a headless manner, making it suitable for CI pipelines without relying on the locked-down Desktop app. The tool provides options to test local skills with different fidelity levels (protocol, replay, live), each requiring varying prerequisites including token, runtime setup, and agent configuration.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.22.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

**cowork-harness** is a testing tool that automates the testing of Claude Cowork skills by reproducing its observable runtime contract, including limits such as sealed filesystem and default-deny egress. It allows developers to script and automate end-to-end tests across various scenarios in a headless manner, making it suitable for CI pipelines without relying on the locked-down Desktop app. The tool provides options to test local skills with different fidelity levels (protocol, replay, live), each requiring varying prerequisites including token, runtime setup, and agent configuration.

## What's Changed


### Added

- **Platform baseline for Claude Desktop 1.28929.0 (bundled agent ELF `2.1.227`).** The modeled
  first-party spawn contract is unchanged: `spawn.tools` stays 20 entries, `allowedTools` 19, and the
  egress allowlist 15 domains. The Cowork system prompt, the sub-agent append, `coworkSyspromptMap` and
  the mount-mode anchors all passed unchanged, and the VM rootfs image is byte-identical, so no
  provisioning re-capture. The ELF's SHA-256 matches Anthropic's official `linux-arm64` release
  manifest checksum. All three committed cassettes replay clean (re-stamped, not re-recorded — replay
  runs no live agent, so their recorded behaviour could not move).

  Two spawn-contract deltas, both classified rather than bypassed:

  - Desktop can now splice an **`Artifact` tool** into the session tool list, between `AskUserQuestion`
    and `ToolSearch`. It is selected by a **server-delivered session flag**, not a feature gate — the
    flag arrives with the session config alongside `memoryEnabled`/`skillsEnabled`, so it is invisible
    to gate diffing and can change without a Desktop release. It is off for a default first-party
    session, so the rendered tool list is unchanged and `Artifact` is **not** added to the pin.
  - Desktop constructs one new spawn-env key, `CLAUDE_CODE_COWORK_FRAME_ARTIFACTS`, gated on that same
    flag. It is **allowlisted rather than pinned**: a default session never receives it, so pinning
    would bake a value into the baseline that production does not send. `provenance.spawnEnvKeys` grows
    60 → 61 to record that Desktop constructs it.

  Also recorded: the `coworkRuntimeConfig` gate now serves a **1 h** (was 15 min) TTL for the host-loop
  `web_fetch` dedup cache. The harness reads that value from the baseline, so the change is carried
  automatically; the code-level fallback is unchanged and still mirrors Desktop's own absent-key default.

- **Guards for the conditional `Artifact` tool and its spawn-env key.** `sync` admits the new spread
  only while it still resolves to the frame-artifacts predicate. The check walks the real chain —
  condition → attended-turn wrapper → predicate — capturing each callee rather than hard-coding
  minified names, and matches the condition as a **whole expression anchored at both ends**. Fragment
  matching is not sufficient and was the defect in an earlier draft: appending `||!0`, flipping the
  cached arm, or replacing the trailing restriction all make `Artifact` unconditional while still
  containing the right call. A companion check asserts the env key stays gated on the **same**
  predicate as the tool, in both directions, because allowlisting a key is unconditional by
  construction — without it, making either unconditional or re-keying one of them would be absorbed
  silently. Fifteen mutations covering these paths are executed as tests.

- **Two drift sentinels** in the synced baseline's `provenance.gates`: the skill-argument collection
  guidance flag (on for a standard account) and the auto-mode permission rubric flag (dark). Neither
  flag name appears in the asar, so both carry kebab-case descriptors under the existing name caveat
  rather than names shaped like verified flags.

### Changed

- **The tools-list tail guard now pins the whole tail.** It previously anchored only on the first
  spread after `ToolSearch`, leaving everything past it unguarded — which defeated its own stated
  purpose, since a tool appended there was invisible to both it and the head check. That region already
  held a second conditional tool. The tail is now pinned through its closing bracket, with the trailing
  tool's name and its condition both **resolved** rather than shape-matched: swapping either would
  otherwise pass silently.

- **The CI boundary-parity job pulls the pinned agent-image digest instead of the floating `:2` tag.**
  CI previously certified whatever was published last while `doctor` certified the pin, so a green CI
  said nothing about the pinned image and vice versa. Both now validate the same bytes, and a pin naming
  a digest that was never pushed fails the gate rather than silently falling back to a rebuild.

### Fixed

- **The egress proxy answered nothing when a CONNECT upstream failed before the tunnel was
  established.** A transient failure on an **allowlisted** host — DNS, a TCP reset, an unreachable
  route — destroyed the client socket with no HTTP response and no log record anywhere. The client saw
  the proxy accept CONNECT and then vanish (`curl: (56) Proxy CONNECT aborted`), and container logs were
  empty, so an intermittent left nothing to diagnose. The asymmetry was accidental: the plain-HTTP
  forward path already answered 502 on the same class of failure. CONNECT now matches it and emits a
  structured `upstream_error` line.

  The 502 is written only *before* the tunnel is established — afterwards the socket is a raw tunnel and
  an HTTP status would corrupt the stream. No egress-log row is written either way: `allow` is recorded
  only after a successful connect precisely so a failed request cannot false-pass `egress_allowed`, and
  `deny` would be untrue since the host is allowlisted and nothing was blocked.

  **The egress proxy image tag moves to `cowork-egress-proxy:5`.** The tag is the cache key, so existing
  installs would otherwise keep serving the old proxy while `doctor` reported it healthy. No action is
  required — the image is rebuilt automatically when the tag is absent.

- **The two allowlisted boundary probes retry** (`--retry 2 --retry-all-errors`). A single-shot request
  through the proxy is exposed to the same ordinary transients, which failed a probe once in eight runs
  while the sandbox was behaving correctly. The off-list probes deliberately do **not** retry: they
  assert a 403 deny, and retrying a policy decision could turn a real enforcement failure into a later
  pass.

- **Release tags no longer move the floating `:2` agent-image tag.** Every release rebuilt both image
  variants and repointed `:2`, while nothing re-recorded `docker/agent-image.json` — whose digests are
  transcribed by hand from a log line that tag-push builds never emit. Pin and tag therefore diverged
  permanently after the first release. `docs/maintenance.md` already stated the intended contract (move
  `:2` in the same release that ships the updated pin); the workflow now implements it. `:2` remains
  movable by an explicit dispatch, which is how a deliberate image refresh has always been described.

### Documentation

- **`docs/fidelity-gaps.md` gains four sections.** *Artifacts — two mechanisms, neither modeled*
  (Cowork's per-artifact bind-mounts and the newer `Artifact` tool are mutually exclusive, the selecting
  flag is not observable locally, and the harness models neither); *HIPAA restriction is a process-global
  latch*; *Auto-mode permission rubric is not modeled* (dark, and scoped to sessions the harness does not
  model); and *Skill argument collection — the elicitation form branch is not reachable here*, which
  records that production splits between `AskUserQuestion` and an elicitation form while a harness run
  deterministically takes the former. That last one is an **open gap with a stated plan**, not a closed
  question. The `save_skill` section notes the tool is now additionally governed by the permission rubric.

- **`RELEASING.md` gains an agent-image checklist item.** The release process never mentioned the image
  pin, which is what let the tag drift go unnoticed. It also notes that an unchanged `Dockerfile.agent`
  still yields different bytes on a rebuild, since its `apt`/`pip`/`npm` installs are unpinned.



## What's Changed
* release: 1.22.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/114


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1.21.1...v1.22.0
