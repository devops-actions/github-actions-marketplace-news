---
title: cowork-harness
date: 2026-08-28 01:39:06 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v2.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  cowork-harness is an unofficial tool that creates a scriptable and CI-friendly test harness to emulate the observable runtime contract of Claude Cowork. It helps developers test their skills in multiple scenarios headlessly, across many CI jobs, without relying on the locked Desktop app. The action automates the reproduction of constraints such as sealed filesystem, default-deny egress, and MCP-only cross-boundary, providing evidence of what the agent actually did during a run. This is particularly useful for ensuring that skills are compatible with Cowork's environment, even if they don't pass strict `claude -p` runs.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v2.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

cowork-harness is an unofficial tool that creates a scriptable and CI-friendly test harness to emulate the observable runtime contract of Claude Cowork. It helps developers test their skills in multiple scenarios headlessly, across many CI jobs, without relying on the locked Desktop app. The action automates the reproduction of constraints such as sealed filesystem, default-deny egress, and MCP-only cross-boundary, providing evidence of what the agent actually did during a run. This is particularly useful for ensuring that skills are compatible with Cowork's environment, even if they don't pass strict `claude -p` runs.

## What's Changed


### Fidelity

- **Path resolution: the shell and the file tools use DIFFERENT roots, and the harness now models that.**
  Measured on desktop-local Cowork 2026-08-27: `mcp__workspace__bash` starts every call at the bare
  session root (`/sessions/<id>`), while the agent process sits at the outputs dir, so a bare `Write`
  lands in `mnt/outputs` and is user-visible immediately. The two are different path spaces — a file the
  shell creates with a relative path is *not* where a relative `Write` puts one.

  `hostloop` ran its workspace bash at `${sessionRoot}/mnt/<firstFolder ?? outputs>`, collapsing the two.
  The replaced derivation came from the asar's `cwd: c.vmCwd` spawn argument, which is **not
  load-bearing on the cowork path** — only the `chat` branch prepends an explicit `cd ${vmCwd}`, which
  would be redundant if the argument worked. It reproduced a prompt claim rather than an observed
  behaviour. Both cwds now come from one function (`hostLoopCwds`) and are pinned together in a single
  test: a single-value assertion cannot express "shell and file tools disagree, on purpose", which is the
  contract every previous version of this bug flattened.

  **What it changes for you:** a skill that writes deliverables from a shell script using relative paths
  looked correct at `hostloop` and delivered nothing in production. It now fails here too.

- **`container` models production's VM-loop `web_fetch` swap.** When `coworkWebFetchViaApi` resolves on
  (true in every shipped baseline), the tier registers a workspace SDK-MCP server exposing **web_fetch
  only**, disallows the built-in `WebFetch`, and aliases the name to `mcp__workspace__web_fetch`
  (`VM_LOOP_TOOL_ALIASES`). Bash is deliberately untouched — "Bash is the only tool that truly diverges
  between loops" — which is why `container` keeps the built-in shell while `hostloop` replaces both.

  The three parts ship together by necessity: disallowing the built-in without the alias turns a fidelity
  fix into a regression, because the bare name stops resolving instead of landing on the workspace tool.
  The tool is advertised but deliberately **not** pre-approved — production's VM-loop registration passes
  the same approval hook the host loop does, so the call is gated at `can_use_tool`. Pre-approving it
  would make a scripted `webfetch:<domain>` answer, and `decide: deny` on it, silently inert.

  Its fetch is bound to the session egress allowlist and to URL provenance, exactly as the host loop's is.
  Both matter: this fetch runs in the harness's own process, outside the container network namespace,
  so the sidecar proxy never sees it and only these two gates constrain it. The handler's allowlist now
  defaults to **deny-all** rather than `["*"]`, so a caller that forgets to pass one gets nothing through
  instead of everything.

  The workspace handler now gates **dispatch** on the same set it advertises, not just `tools/list`. An
  unadvertised tool that still executed when named was a real hole: the VM-loop registration exposes
  web_fetch only, and a `bash` call arriving there must be refused rather than quietly exec'd into the
  container.

  **`microvm` is unchanged** and still offers the built-in `WebFetch` — `spawnMicroVm` does not receive
  the gate. **`chat` is unchanged too**: the swap applies to `run`/`record`, so `chat --fidelity container`
  still offers the built-in and the two surfaces differ at the same declared tier.

### Upgrade impact

- **At `fidelity: container` under `run`/`record`, `WebFetch` is no longer in the offered tool set.** An assertion naming it
  no longer describes a callable tool. `tool_not_called: WebFetch` is the dangerous direction: it now
  passes **vacuously** rather than failing loudly, so a scenario that was genuinely testing "this skill
  does not fetch from the web" silently stops testing anything. Rename to
  `tool_not_called: mcp__workspace__web_fetch`. The shipped `example-pdf-skill` scenario carried exactly
  this defect and is fixed.

  `verify-cassettes` grew a `replaced-builtin` note for this class: it reads a cassette's recorded init
  inventory and reports built-in names the current build no longer offers at that tier. It is a **note,
  not a finding** — the swap is gate-conditional, so a recording made with the gate off is legitimately
  different, and an init event carrying no `tools` key is *no evidence* rather than a missing surface.
  Neither should be told to re-record.

  This does not break a covered surface ([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract)):
  no command, flag, schema or exit-code meaning changes. The tier's modelled tool inventory is a fidelity
  property, and moving it toward production is the project's purpose — so it ships in a minor.

- **DEPRECATION: `fidelity:` becomes REQUIRED in the next major.** A scenario that omits it currently
  defaults to `container`, which models the **VM loop** — but production runs the **host loop** (gate
  `1143815894` is force-ON in every shipped baseline). So an omitted key silently measures the scenario
  against a lane real users are not on, and the two lanes differ in exactly the ways that bite: where a
  bare relative path lands, where the shell starts, and which tools are offered.

  Both `run` and the skill's `scenario.py` lint now warn (`fidelity-defaulted`). The check reads the RAW
  document, because Zod's `.default()` makes an omitted key indistinguishable from a deliberate
  `fidelity: container` — and those two deserve different treatment. Naming the tier explicitly silences
  it; `fidelity: container` remains a valid, non-warning choice.

### Fixed

- **The semantic judge was told which authored files were never delivered.** The authored-file capture
  deliberately includes the scratchpad, but production discards anything outside `mnt/` — "never reaches
  the user or your file tools". Unlabelled, a rubric like "the report was written" graded TRUE on a file
  the user never receives: a false green inside the one evaluator that reads free-form prose and cannot
  infer the convention. Scratch files are now tagged `— SCRATCH, NOT delivered to the user`, with a note
  explaining they are evidence of what the run DID and not that anything was delivered.

- **`sync` no longer refuses to write on the `subagentPromptServerOverride` gate.** Gate-ON only enables
  the lookup; the payload that would actually override is delivered **per session by the server** and
  appears in neither the asar, the fcache nor `config.json`. So gate state alone cannot separate
  "override active" from "gate on, no payload, fallback still correct" — the guard blocked forever
  rather than tripping, because it could never clear itself from its own inputs. It is now a
  non-blocking note that says what it can and cannot know.

  Settled by a live sub-agent probe instead: a real sub-agent's environment section matched the committed
  paraphrase on all four load-bearing claims, so no override was reaching that account. That is evidence,
  not proof — one account, one session, and a server rule can be segment-targeted. The note says so, and
  says to re-probe if the sub-agent append matters to what you are shipping.

### Documentation

- **[docs/scenario.md](./docs/scenario.md) now states where a relative path actually lands**, as a
  measured table per tier, replacing a sentence that was simply wrong for the file tools. The guidance
  that follows it is lane-dependent, because the correct answer inverts between lanes: on the desktop
  host loop the file tools are already rooted at `outputs/`, so writing `outputs/x.md` doubles to
  `outputs/outputs/x.md` and the user never sees it — a **bare filename** is right there. At
  `container`/`microvm` a bare name lands in the scratchpad instead. Addressing a connected folder by
  name never reaches it on either lane: it builds a same-named decoy inside `outputs`, reports success,
  and gives no signal.

- **[docs/fidelity-gaps.md](./docs/fidelity-gaps.md)** gained the path-resolution split, and its
  "VM tiers have no workspace tool aliases" entry is updated — closed at `container`, still open at
  `microvm`.

- The skill's undelivered-deliverables guidance no longer hardcodes the literal prefix `outputs/`, which
  was wrong on the lane production actually runs.

- **The product's vocabulary is mapped to this project's**, because one directory had four names and none
  of them was the one Cowork's UI shows. "Working folder" is the user-visible roots (`outputs/` plus each
  connected folder); "Scratchpad" is everything outside `mnt/`; `{{workspaceFolder}}` is a prompt token
  that renders to the *first* user-visible root. Also recorded: Cowork's **Scratchpad panel is an activity
  log, not a location listing** — it lists files as "wrote to" wherever they landed, so a file appearing
  there is not evidence it was undelivered.

- **`Write`'s tool result echoes the raw path it was given and never absolutizes** (read from the agent
  binary). Nothing in the harness parses a path out of a `Write` result; this is recorded so nothing
  starts, since such an assertion would be reading something production does not emit. Cowork's own
  chat-surface prompt claims the opposite, so the product's description of its own tool is wrong here.




## What's Changed
* release: 2.4.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/160


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v2.3.0...v2.4.0
