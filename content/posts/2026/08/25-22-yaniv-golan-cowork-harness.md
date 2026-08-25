---
title: cowork-harness
date: 2026-08-25 22:33:45 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action is a scriptable and CI-ready tool that reproduces Claude Cowork's observable runtime contract to test agent skills in headless environments across multiple scenarios. It provides evidence of what an agent actually did, not just what it said it did, by recording every run. This helps ensure that the tested skills are robust against constraints like the sealed filesystem, default-deny egress, and MCP-only cross-boundary access.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action is a scriptable and CI-ready tool that reproduces Claude Cowork's observable runtime contract to test agent skills in headless environments across multiple scenarios. It provides evidence of what an agent actually did, not just what it said it did, by recording every run. This helps ensure that the tested skills are robust against constraints like the sealed filesystem, default-deny egress, and MCP-only cross-boundary access.

## What's Changed


### Upgrade impact

Two behaviour changes can turn a previously-green run red. Neither breaks a covered surface
([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract)) — both make an assertion report
what it always documented — so they ship in a minor:

- **`no_scratchpad_leak` at `container` can now FAIL.** It was measuring containment against a root in a
  different path space, so every presented file classified `leaked: false` and the check passed
  vacuously. A scenario whose skill genuinely leaves a presented file in the scratchpad will now red —
  that is the leak the key exists to catch.
- **`baseline: desktop-1.11847.5` is now refused at `container`/`hostloop`/`microvm`.** It carries no
  `spawn` block, so those tiers cannot reproduce Cowork's toolset — a run on it launched an agent with no
  file or bash tools and still reported a verdict. Use a `sync`-recorded baseline, or `fidelity: protocol`.

### Fixed

- **`present_files_called` no longer reports "the tool was never called" about a run that called it, and a
  hostloop delivery scenario can be recorded with a host-path redaction policy at last.** The assertion
  read presence off `RunResult.presentedFiles`, which is a *classification* of each presented path
  (scratchpad? promoted? leaked?) and requires an absolute path to compute. At `hostloop` a presented path
  is a real host path, so the shipped redaction policy rewrites it to
  `[REDACTED:local-path:<hash>]/mnt/outputs/report.html` — correct, documented, and deliberately ordered so
  the mount tail survives — and the classifier then drops every entry as un-normalizable. The list came
  back empty and the assertion stated, as fact, that the tool had never been called.

  Because `record` replays the base and redacted cassettes and refuses to write when the verdict differs,
  this was not merely a wrong message: **no cassette asserting `present_files_called` could be recorded at
  that tier at all**, so the assertion had never executed on the replay lane. The refusal was right — the
  redacted cassette genuinely could not support the assert — but the defect it was reporting was in the
  harness, not in the recording.

  Presence now comes from `RunResult.presentFilesCalls`, a new count of the `present_files` invocations
  that carried a well-formed `file_path`, taken from the tool_use input's shape and never from a path's
  content, so redaction cannot alter it. Classification is untouched: `presentedFiles` still drops what it
  cannot resolve, and `no_scratchpad_leak` still reads it. A run recorded before the field falls back to
  the old `presentedFiles`-non-empty test, so no existing green changes.

  A run whose every `present_files` call carried an unusable path now reports **cannot verify** rather than
  "never called" — the tool *was* invoked, and the harness already knew it. (The malformed count is
  deliberately kept out of that message: the record self-check normalizes `[REDACTED…]` tokens out of
  failing messages but not digits, so an interpolated count that differed between the two replays would
  refuse a cassette that is otherwise fine to write.)

  Pinned as an invariant ([docs/invariants.md](./docs/invariants.md)) with the end-to-end record self-check
  as its test anchor — the case that could not be recorded, and so had never run in CI.

- **Guest paths are built from the tree the harness stages, not from a baseline's recorded mount layout.**
  `resolveMounts` returned `mountLayout.mntRoot` verbatim — or, when that field was absent and the recorded
  `sessionRoot` already ended in `/mnt`, the session root itself. But the staged tree is always
  `<sessionRoot>/mnt`: `stageWorkspace` creates it there and `dockerRunArgv` nests its read-only binds
  there. On a baseline recording anything else, `--plugin-dir` therefore pointed one directory **above**
  the staged plugin tree, so the plugin under test never loaded. `mntRoot` is now derived from the session
  root, and a recorded layout the harness cannot stage is reported as a fidelity divergence at spawn
  instead of silently composing a path no stager creates.

  Guest paths now anchor on `sessionRoot` — the bind target — rather than `cwd`, which is only where the
  agent's process starts (production's own working directory is a folder mount or `outputs`, so the two are
  not interchangeable even though every synced baseline records them equal). `dockerRunArgv` takes an
  explicit `agentCwd` for `-w`.

  Two more derivations of the same rule are gone: `prompt.ts` had a private `/sessions/<id>` +`/mnt`
  literal (so the prompt could describe a tree the runtimes had not staged), and **microvm** read the
  agent's root from the baseline when lima structurally mounts it at `/sessions/<sessionId>` — which put
  `CLAUDE_CONFIG_DIR` and `--mcp-config` at paths nothing stages. A baseline recording a cwd that tier
  cannot honour is now **refused**, not warned about: the guest `cd` would otherwise succeed at the wrong
  directory.

- **A baseline with no `spawn` block is refused at the sandbox tiers.** That block carries the tool set,
  pre-approvals, effort default and config-dir location, and the `?? []` fallbacks meant a run would launch
  an agent with **no Read/Write/Bash/Skill/Task at all** and still report a verdict. `fidelity: protocol`
  builds its own argv and is unaffected.

- **`no_scratchpad_leak` can see a container leak again — the session root was in the wrong path space.** The
  root that `presentedFiles`' promoted/leaked classification is measured from was derived by the caller as
  `<run-dir>/work/session`, a HOST path, and handed to every non-`protocol` tier. But the path space the
  agent reports in is per-tier: at `container` (the default) it runs inside the sandbox and reports
  `/sessions/<id>/…`, and only at `hostloop` does it run natively and report host paths. Measured against a
  host root, no VM path is ever inside the root, so every presented file classified `leaked: false` —
  including the handler's copy-failure branch, which returns the source path unchanged when a file is
  blocked-extension, a directory, or absent. `no_scratchpad_leak` evaluates at `container` and nowhere else,
  so the assertion that exists to catch that leak could not catch it, and `verdict.ts`'s delivery check read
  the same `leaked: false` as a successful delivery.

  Each runtime now reports the session root it actually launched the agent with, and the run consumes that
  instead of deriving a second one — the two can no longer drift into different spaces. `chat` sets it on
  both serving tiers as well; it never did, so a hostloop chat's `presentedFiles` was inverted in its result
  file. `protocol` and `microvm` serve no `present_files` and keep the cwd fallback.

  Independently, the classifier now fails CLOSED on a space mismatch: if the agent's cwd is not at or inside
  the session root, the presented batch counts as malformed (`no_scratchpad_leak` → cannot verify) rather
  than being graded against a root it cannot be compared to. `leaked: true` is not derivable in that state
  either, and a `leaked: false` verdict there is exactly the vacuous pass the key exists to prevent.

### Added

- **First live coverage for `present_files_called` / `no_scratchpad_leak`.** No scenario in the repo
  asserted either key, which is how a session root in the wrong path space could record `leaked: false`
  for every presented file without anything noticing. `e2e/scenarios/smoke-present-files.yaml` writes a
  file OUTSIDE `mnt/` and delivers it, so the promotion is real and the pair is non-vacuous; it runs in
  CI's live e2e loop. Measured on a live container run: `presentFilesCalls: 1`, promoted `true`, leaked
  `false`.

- **`RunResult.presentFilesCalls`** — the count of `present_files` invocations that carried a well-formed
  `file_path`, in `result.json` and [schema/run-result.json](./schema/run-result.json). Content-class, so a
  replay re-drive reproduces it; read by `run`, `replay` and `verify-run` alike, and absent (not `0`) on a
  result written before this release, which is what the assertion's fallback distinguishes. Use it to
  answer "did the agent deliver anything?" from a result file without interpreting `presentedFiles`'
  promoted/leaked classification.



## What's Changed
* release: 2.2.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/158


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.1.0...v2.2.0
