---
title: cowork-harness
date: 2026-07-19 06:24:43 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is a scriptable test harness designed to simulate and reproduce the observable runtime contract of Claude Cowork's skills. It helps in testing local skills without using the locked Desktop app, across various scenarios and CI jobs. The action supports different fidelity tiers with varying requirements including Node.js version, Python (for linting), and a running runtime for live tests. It is designed to mimic the limitations of Cowork, such as sealed filesystems and default-deny egress, ensuring green tests reflect real-world behavior.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

This GitHub Action is a scriptable test harness designed to simulate and reproduce the observable runtime contract of Claude Cowork's skills. It helps in testing local skills without using the locked Desktop app, across various scenarios and CI jobs. The action supports different fidelity tiers with varying requirements including Node.js version, Python (for linting), and a running runtime for live tests. It is designed to mimic the limitations of Cowork, such as sealed filesystems and default-deny egress, ensuring green tests reflect real-world behavior.

## What's Changed


### Added

- **`no_lost_write_back: true` scenario assertion** — gate a scenario on "the agent didn't emit an
  interactive artifact whose Submit is lost under Cowork". It runs the shipped static Tier A analyzer
  (`analyze-artifact`, deterministic, no headless DOM) over the files the run authored — diffed against the
  pre-run manifest — so a lost relative `fetch`/XHR/`sendBeacon`/`<form method=post>` write-back becomes a
  per-scenario verdict, not just an out-of-band `analyze-skill` scan. A lost write-back on an **added**
  agent-authored source (`outputs/` or the scratchpad) fails; a **pre-existing** file the skill only modified
  on a read-write connected mount is advisory (not the skill's to own); `-suspect` findings surface but pass.
  Honest evidence-unavailable semantics: could-not-verify (fail-closed, never a silent clean) on a `--resume`
  scratchpad walk or an authored candidate that couldn't be analyzed. Runs on every live sandbox tier
  including **microvm** (its outputs are snapshotted from the VM into the run dir — see the #52 entry below).
  **Live/verify-run only** — skipped-loud on replay (a cassette embedding the key never
  hard-fails its replay); `verify-run` recomputes the authored set from the kept work dir. Only `true` is
  valid (omit to skip).
- **`tool_result_matches` / `tool_result_not_matches` scenario assertion keys** — the case-insensitive regex
  siblings of `tool_result_contains`/`tool_result_not_contains`, evaluated per captured tool result (subject
  to the same 10 KB per-result assertText cap). Useful for catching an error-signature *family* (e.g. a
  script's non-zero exit swallowed by its wrapper, but the message still printed) that a literal substring
  match can't express. Same evidence-unavailable wording as the `_contains` pair: a bad regex fails the
  assertion with a compile error, and a no-match against a display-truncated result is reported as
  could-not-verify rather than a silent pass/fail.

- **A folder-grant refusal for `request_cowork_directory`, ported from Desktop 1.22209.0.** Cowork now
  refuses (pre-prompt) a mid-session folder grant that targets a security-sensitive home-directory path —
  `.ssh`, `.aws`, `.gnupg`, `.kube`, `.docker`, `.claude`, `.config/{gcloud,gh,powershell}`, the darwin
  `Library/{Keychains,LaunchAgents,LaunchDaemons,Application Support,Cookies}` paths, or a protected shell
  dotfile (`.zshrc`, `.netrc`, etc.) — either directly, as a descendant, or as an ancestor whose grant would
  incidentally expose one (e.g. requesting the home directory itself). The harness's `hostloop` canUseTool
  gate ports this byte-faithfully, denying with Desktop's own message. **Currently dead code in a stock
  run**: no built-in workspace/cowork server registers `request_cowork_directory` yet (a pre-existing,
  separately tracked gap), so this only fires for a scenario that supplies its own `mcp_config` registering
  a matching tool name. Ported ahead of that gap closing so the refusal semantics are ready the moment it
  does. Two GrowthBook feature-gate ids Desktop 1.22209.0 introduced for a related "auto mode always-allow"
  tool-approval feature are pinned as drift sentinels (`sync`'s `PINNED_GATES`) without being behaviorally
  modeled — this harness has no persistent per-tool permission concept to model them against.

### Changed

- **`cowork-harness status <run-dir>` now resolves the newest session under a run-dir root.** Previously
  `status` only worked against the exact per-session out-dir printed at run start; pointing it at the root
  passed to `run --run-dir` failed with "no status.json". It now scans up to two levels under a directory
  lacking its own `status.json` for the newest session that has one, and reads that instead.
- **`doctor`'s two staged-agent checks are now titled distinctly** — "Staged agent binary (VM/container
  ELF)" vs. "Staged native agent binary (hostloop)" — so a failure on either is attributable to the right
  one instead of reading as an ambiguous duplicate.
- **The run-completion footer now prints a `→ result: <run-dir>/result.json` pointer**, on both success and
  failure, since the run directory is always kept on disk. Suppressed on the replay lane, which never
  writes a `result.json`.
- **The `on_unanswered=fail` unscripted-gate error now also mentions `on_unanswered: llm` as a secondary
  escape valve.** Previously it suggested only `--answer "<regex>=<choice>"`, which is the right primary
  fix but the wrong tool for a gate whose wording drifts run-to-run — a regex chases a moving target. The
  added line explicitly says "in the scenario YAML" (`--on-unanswered llm` is rejected on the CLI in favor
  of `--decider-llm`) and notes the tradeoff (non-deterministic, one model call per gate) so it doesn't
  read as unconditionally preferable to fixing the script.

### Fixed

- **Silent false-green on a missing workspace root (`#52`).** When the workspace root (`outDir/work/session/mnt`)
  couldn't be walked — the canonical case is a **microvm** run, whose outputs stage into the VM work tree, not
  into the run dir — `RunResult.workspaceFiles`/`artifacts` persisted as `[]`, **indistinguishable from a run
  that genuinely wrote nothing.** A consumer reading `result.json` (e.g. skill-creator-plus) saw "zero
  artifacts, clean." They now persist as **`undefined` (unavailable)** — the same convention replay already
  uses for "no live filesystem to scan" — with a loud `::warning::` naming the reason. Applied across the
  success, partial-salvage, and chat lanes; the walk's `complete`/root-absent health (F18) is now *consumed*
  at the call site rather than discarded. A genuinely-empty run (root present, no files) still correctly
  reports `[]`; only an unobservable root flips to unavailable.

- **microvm outputs are now observable — root-cause fix for `#52`.** A microvm run's outputs already live on
  host disk (`VM_WORK_HOST` is mounted writable into the VM at `/sessions`), just at a different path than the
  run dir the post-run pipeline walks. The run now **snapshots the session-root tree from the VM mount into
  `outDir/work/session`** (mirroring how `hostloop` snapshots connected folders) — rm-before-copy,
  symlinks copied verbatim (`dereference: false`), fail-loud if the tree is unexpectedly absent — plus captures
  the pre-run manifest on this tier. Result: **`workspaceFiles`/`artifacts`, `file_exists`, `artifact_json`,
  `user_visible_artifact`, `no_lost_write_back`, `no_unexpected_files`, and `input_unmodified` now work on
  `microvm`** instead of being evidence-unavailable — verified live to be identical to `container`. It's also
  fidelity-positive: real Cowork's VM outputs are host-observable too. (`no_scratchpad_leak` /
  `present_files_called` stay `container`-only — they key off the `present_files` tool, not workspace
  observability.) Doc/message sweep: the "use container/hostloop" carve-outs for these keys are removed.

- **`sync`'s non-macOS guard no longer blames Claude Desktop for a limitation that's actually this
  harness's own.** The error previously read "sync requires macOS (the Cowork Desktop app is macOS-only)"
  — false, Desktop ships a Windows build too; only this harness's `sync` tooling doesn't support non-macOS
  install layouts yet. The message now says so.
- **The web_fetch provenance-miss denial is synced to Desktop 1.22209.0's wording.** The message now notes
  that a URL surfaced in a WebSearch result also counts as provenance, and tells a subagent that can't ask
  the user to continue without the page and report the blocked URL rather than stall. No logic change —
  Desktop's underlying provenance rules are unchanged between releases, only the wording moved.
- **The hostloop path-gate no longer emits a spurious "cwd mismatch" warning when the run-dir is reached
  through a symlink** (e.g. macOS `/tmp` → `/private/tmp`). The diagnostic now compares the wire and
  spawner cwds after best-effort realpath canonicalization, so the same directory reached via two spellings
  no longer false-alarms; the path-gate's actual allow/deny decision was already realpath-rooted and is
  unaffected.
- **`verify-cassettes` no longer flags `claude.com` as a `domain` PII finding on every MCP-session
  cassette.** The scanner's capability-manifest exclusion (`isCapabilityManifest()`) recognized only two
  structural forms (the `system/init` event and the `initialize` registry `control_response`); it missed
  the MCP `initialize` handshake itself — both Claude Code's own `control_request` (`clientInfo.websiteUrl`)
  and the configured MCP server's `control_response` (`serverInfo`) — which fell through to the full
  `domain`/`currency` net on every recording that talks to an MCP server. The only previous workaround,
  `--allow-domain 'claude\.com'` in CI, was a class-scoped (not location-scoped) allow that would have
  silently cleared a genuine `claude.com`-hosted leak anywhere else in the same cassette. Both handshake
  forms are now recognized (shape-matched on the response side, since `serverInfo` is server-authored, not
  Claude Code's own fixed string), and the CI gate no longer needs any `--allow-domain`/`--allow-email`
  flag to pass on the committed example cassettes.
- **`hostloop`/`cowork` runs and `doctor --tier cowork` no longer hard-block when the pinned VM/container
  ELF was pruned by a Desktop update but a patch-newer sibling is staged.** At that tier the ELF is
  bind-mounted into the bash sidecar for parity and is not run by any harness-spawned process (the native
  binary is the agent), so a same-major.minor patch bump is now auto-tolerated (loud note, advisory sha) —
  matching the native binary's existing policy. The sha-pinned strictness is unchanged for
  `container`/`microvm`, where the ELF is the executed agent.
- **`doctor --tier cowork` now mirrors the resolved loop** (`decideLoopFromBaseline`) for both agent
  binaries, so it neither false-greens nor false-not-readies. When `cowork` resolves to host-loop it
  tolerates the ELF patch bump and requires the native binary (the executed agent there); when it resolves
  to VM-loop it keeps the ELF strict like `container` **and** stops requiring the native binary that a
  VM-loop run doesn't use. Previously the tier's checks were unconditional, disagreeing with the actual
  run on a VM-loop-resolving baseline.

- **`analyze-skill`: a `<script>…</script>` pair inside a docstring or comment no longer aborts a whole
  file to could-not-verify.** The lexical block extractor could pull English prose out of a docstring or
  comment as a phantom "script block"; its parse failure short-circuited the entire file to a
  could-not-verify (exit 3), discarding the verdict already computed for the file's real, parseable
  write-back block. The per-block analysis now accumulates: a block that fails to parse with no
  `fetch`/XHR-`open`/`sendBeacon`/`axios`/`.post()` write-back hint is discounted as prose, while one that
  carries a hint — or any block large enough to trip the analysis cap — is still reported as a
  could-not-verify surfaced alongside any finding. A candidate whose every isolated `<script>` block is
  unparseable stays a could-not-verify (fail-closed), never a silent clean pass. Several follow-on gaps in
  that accumulation are also closed. First: whenever at least one `<script>` block was discounted as
  prose, a parseable sibling block (or an already-flagged `<form method=post>`) no longer vouches for
  write-back surface OUTSIDE every extracted block (top-level `.js`/`.ts` code, an inline `on*=` handler,
  or surrounding template markup) — any write-back hint left in that un-analyzed remainder is now its own
  could-not-verify, reported alongside any finding rather than silently passed; a source with no
  discounted block, or an inline-handler write-back with nothing else in play, is unaffected. Second: the
  write-back hint check (and the earlier candidacy check) now also recognizes optional-call spellings —
  `fetch?.(`, `xhr?.open?.(`, `$.post?.(`, `navigator?.sendBeacon?.(` — so a source whose only write-back
  uses `?.` is neither missed as a candidate nor discounted as prose inside an unparseable block; that
  optional-call matching is also linearized (no more quadratic backtracking on a long non-matching
  whitespace run). Third: a member-spelled write-back inside a block that DOES parse —
  `window.fetch(...)`, `globalThis.fetch(...)`, `self.fetch(...)`, or the same spelling inside a same-file
  fetch-wrapper's own body — is now classified the same as a bare `fetch(...)` call instead of going
  unrecognized and falling through as clean; a bare `sendBeacon(...)` identifier call (e.g. a locally
  bound alias of `navigator.sendBeacon`) is now recognized the same way as the member-spelled
  `navigator.sendBeacon(...)`. Fourth: a `.post(...)`/`.put(...)`/`.patch(...)` call on a receiver outside
  the known `axios`/`$`/`jQuery` set — the common miss being an axios instance,
  `const api = axios.create(); api.post("/api/save", data)` — targeting a relative URL is no longer
  invisible; it is now reported as an advisory finding (never escalated to an error, since the receiver
  isn't provably a write-back client and could be unrelated code; `.delete(...)` is deliberately excluded
  from this, since it's common on non-HTTP collection types). Fifth: the axios/`$`/`jQuery` verb set
  recognized on the whitelisted identifier itself is widened from `.post(...)` alone to
  `.post(...)`/`.put(...)`/`.patch(...)`/`.delete(...)`/`.postForm(...)`/`.putForm(...)`/`.patchForm(...)`
  (the last three are axios v1's multipart form-data verb aliases; `.delete(...)` is INCLUDED here,
  unlike the any-receiver advisory case above, since the literal `axios`/`$`/`jQuery` identifier has no
  ambiguity about what it means); a bare config-object call — `axios({method:"POST", url:"/api/save",
  ...})` — and `axios.request({...})` are both recognized, whether the config argument is an inline
  object literal or a hoisted identifier (`const cfg = {...}; axios(cfg)`). This is not exhaustive: axios's
  alternate `$.ajax({...})`-style config-key vocabulary, and any computed-member, whitespace-separated, or
  aliased/re-exported spelling, remain a documented, lexically/structurally invisible accepted class (see
  the relevant doc comments in `analyze-artifact.ts`) — as does a `formaction`/`formmethod` override on a
  submit button that redirects an otherwise-remote `<form>` back to a relative, in-scope URL.
- **`analyze-skill`: a delete/remove flow that claims success now classifies as a lost write-back (error),
  not just a suspect (advisory).** The success-claim vocabulary that distinguishes a lost write-back (an
  unconditional "it worked" toast) from a merely-suspect one gained delete-flow words (`deleted`,
  `removed`, …) alongside the existing `saved`/`submitted`/`persisted`/`completed`/`success`. A relative
  `DELETE` write-back whose only success signal is a "Deleted!"/"Removed!" toast — no `resp.ok`/status
  check — is now flagged at error severity like its save-flow equivalent, since under Cowork it resolves
  non-ok against Cowork's own origin and the false confirmation is identical.

### Documentation

- **Documented an `analyze-skill --runtime` recipe for agent-generated artifacts.**
  `analyze-skill --runtime <run-dir>/work/session/mnt/outputs` confirms interactive-artifact write-backs in
  HTML the agent *generates during a run* — content the source-only static scan can't see until a run has
  happened. Notes the tier-specific output paths and the microvm/replay caveats.



## What's Changed
* docs: analyze-skill --runtime recipe for agent-generated run-time artifacts by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/51
* fix: microvm workspace false-green + make microvm outputs observable (#52, complete) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/54
* test: remove redundant jsdom --runtime spawn (real fix for the CI timeout flake) by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/55
* release: 1.2.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/56


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.2.0
