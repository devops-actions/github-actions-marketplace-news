---
title: cowork-harness
date: 2026-08-07 22:22:40 +00:00
tags:
  - yaniv-golan
  - GitHub Actions
draft: false
repo: https://github.com/yaniv-golan/cowork-harness
marketplace: https://github.com/marketplace/actions/cowork-harness
version: v1.20.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The cowork-harness action is a scriptable, CI-friendly test harness that reproduces Claude Cowork's observable runtime contract closely enough to test skills without the locked Desktop app. It creates a sandboxed environment, simulates the agent and its constraints (e.g., sealed filesystem, MCP-only cross-boundary), and can run tests in various fidelity tiers such as replay or live with different requirements like token-free or with real resources.
---


Version updated for **https://github.com/yaniv-golan/cowork-harness** to version **v1.20.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cowork-harness) to find the latest changes.

## Action Summary

The cowork-harness action is a scriptable, CI-friendly test harness that reproduces Claude Cowork's observable runtime contract closely enough to test skills without the locked Desktop app. It creates a sandboxed environment, simulates the agent and its constraints (e.g., sealed filesystem, MCP-only cross-boundary), and can run tests in various fidelity tiers such as replay or live with different requirements like token-free or with real resources.

## What's Changed


### Upgrade notes

- **`record --dry-run` now refuses what the real `record` refuses, so a batch preflight can no longer
  green a scenario the paid run rejects.** It already ran the real loader; it now also applies the
  scenario-level refusals — `on_unanswered: prompt` (previously enforced in the single-file arm only,
  never in a directory batch) and the new unsatisfiable-assert pairing. A directory dry run reports
  **every** offender rather than stopping at the first, since the point of previewing N scenarios is to
  learn about all N in one pass, and exits 1 when any is refused. `--quiet` still mutes the readiness
  preview and never a refusal. Caught by a founder-skills consumer who noted that the refusal shipped on
  the execution path only — while `record --dry-run` is what we document, in four places, as the
  token-free way to validate a scenario, and is what their CI and re-record script call.

- **Two `COWORK_*` env vars are removed from the covered surface, and this is deliberately NOT a major
  bump.** `COWORK_EGRESS_PROXY` and `COWORK_DOCKER_NETWORK` leave the documented env-var set that
  [SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract) covers, and
  [RELEASING.md](./RELEASING.md#versioning-semver)'s rule reads "a removal … means a **major** bump".
  The exception is taken knowingly: both knobs were **provably inert** — every container-like tier built
  its egress sidecar before the env branch could execute, and `microvm` never read them at all (see
  *Fixed*, below) — so no run's behaviour changes in either direction, and no configuration that worked
  before stops working. Setting either variable was a no-op before this release and is a no-op after it.
  Recorded here rather than left silent, so the contract is departed from on purpose and once, not by
  accident. `COWORK_PROXY_IMAGE` is genuinely live and unchanged.

  Note for anyone auditing this later: `npm run check:surface` does **not** catch a removal like this.
  It compares the current code against the committed snapshot, which was regenerated in the same
  commits — so it reports `+0 -0 ~0`. The removal is visible only by diffing
  `test/fixtures/surface-baseline.json` across the release boundary
  (`git diff v1.19.0..v1.20.0 -- test/fixtures/surface-baseline.json`).

- **Four scenario shapes that lint clean today may newly fail `cowork-harness lint --strict
  --min-severity WARN`** (the invocation the CI recipe teaches). None is a false alarm — each is a
  scenario that was already not testing what it looked like it tested:
  1. A presence assertion paired with its absence sibling → new `assert-contradiction` ERROR (and the
     run itself is now refused): `questions_count_max: 0` with a gate-presence key, `no_hook_blocked`
     with `hook_blocked`, or `no_path_denied` with `path_denied`/`vm_path_denied`.
  2. `gate_answers_delivered: true` paired with `gate_answer_count_min: 0` → the zero floor no longer
     counts as a companion. **Most likely to already be in an existing corpus.** Fix: raise the floor to
     `1`, or drop `gate_answers_delivered`.
  3. `tool_called: "askuserquestion"` (or any wrong-case spelling) alongside `gate_answers_delivered`
     → the glob is case-sensitive and never matched the gate; it no longer silences the rule.
  4. `tool_called: "Ask.*Question"` → a regex-shaped value, already rejected at scenario load by the
     tool-glob schema, no longer silences the rule either. Use `Ask*Question`.

  Conversely, `gate_answers_delivered: false` **stops** warning — if you carry a suppression for it, it
  can go.

### Added

- **`record --dry-run` reports the batch cost estimate, with or without `--max-budget-usd`.** The
  summed worst-case cost from prior-run history was already computed on every batch preflight and then
  discarded unless it happened to exceed a cap — so the only way to learn what a re-record would cost
  was to bisect `--max-budget-usd` until it refused. It is now printed on the passing path (text) and
  carried as `estimatedCostUsd` + `unpricedScenarios` in the `--output-format json` payload, and the
  refusal path is unchanged. A total summed over partially-unpriced history is labelled a **LOWER
  BOUND** and names the scenarios contributing $0, so a fresh corpus's `$0.0000` can never read as
  authoritative.

- **`doctor` checks the agent image against a digest this release pins, offline.** The check previously
  asked GHCR what the floating `:2` tag pointed at *at that moment*: it needed network and
  `docker buildx` (degrading to `unknown` when either was missing), and it could only ever establish that
  two digests differ — never which one the harness expected, since a floating tag can be repointed in
  either direction. It now compares against `docker/agent-image.json`, **per variant**, so a
  `cowork-agent-full:2` user is checked against the full-parity image rather than the base one. The
  remedy is digest-addressed (`docker pull …@sha256:…`), because pulling `:2` cannot satisfy a pin to an
  older revision. A locally built image and an unpinned image both stay quiet skips, and a stopped Docker
  daemon reports `unknown` rather than a confident "built locally".

- **The agent image can be published at an immutable `:2-r<N>` revision tag without moving `:2`.**
  `docker/agent-image.json` carries the image's own revision counter (deliberately not the harness
  version — a version-keyed co-tag encodes something that was never the image's identity, and
  republishing at an existing version would repoint a tag a pin depends on). A manual
  `publish-image.yml` run now defaults to `immutable_only`, publishing `:2-r<N>` for both variants and
  leaving the floating `:2` untouched, so no existing consumer's next pull changes. Release tag pushes
  are unaffected. The workflow refuses to repoint an existing `:2-r<N>` and fails **closed** when it
  cannot enumerate tags — an inconclusive check must never read as "tag absent". See
  [docs/maintenance.md](./docs/maintenance.md#publishing-an-agent-image-revision).

- **`run` / `skill` / `record` now refuse an unsatisfiable assertion pairing before spawning, and
  `lint` reports it as `assert-contradiction` (ERROR).** Three pairs, each one assertion requiring a
  record to exist next to its sibling requiring none to, on a single evidence channel:
  - `questions_count_max: 0` with `gate_answer_count_min: >= 1`, `question_asked`, or
    `gate_answers_delivered: false` — a delivered gate records at least one question.
  - `no_hook_blocked` with `hook_blocked` — one hook-event list.
  - `no_path_denied` with `path_denied` or `vm_path_denied` — one path-denial list.

  Previously each cost a live run to discover. Where the evidence is absent both halves fail
  evidence-unavailable rather than passing, and the denial keys are hostloop-only so a wrong tier fails
  both too — no combination produced a silent both-pass, only a guaranteed one. Each negative key
  **on its own** is unaffected; `questions_count_max: 0` in particular remains the supported way to
  declare a gate-clean scenario.

  This is a **command-level** refusal, not a schema change: `schema/scenario.schema.json` still accepts
  the document, so the covered input contract ([SPEC.md §12](./SPEC.md#12-versioning--the-10-compatibility-contract))
  is untouched and no cassette is affected.

### Changed

- **Platform baseline `desktop-1.26832.0` (agent ELF `2.1.222`), with no behavioural change to the
  modeled spawn contract.** The ELF's SHA-256 matches Anthropic's official `linux-arm64` release
  checksum. The Cowork system prompt, the sub-agent append, `coworkSyspromptMap`, the mount-mode
  anchors and the egress allowlist are all unchanged — the whole sentinel set passed. All three
  committed cassettes replay clean (re-stamped, not re-recorded — no live agent runs at replay tier, so
  their recorded behaviour could not move).

  Desktop constructs one new spawn-env key, `CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC`. It is
  **allowlisted rather than pinned**: both of its construction sites sit inside the
  `accountType === "3p"` object literal and are further conditional on `telemetry.disableNonessential`,
  alongside `DISABLE_GROWTHBOOK`/`DISABLE_TELEMETRY`, which are allowlisted for the same reason. Pinning
  it would bake a third-party-provider key into a baseline that describes the first-party spawn.

  Two gate movements worth naming, neither of which changes emulated behaviour.
  `scheduledTaskToolsApprovableByAutoMode` flipped to force-on, but Cowork spawns with
  `CLAUDE_CODE_DISABLE_CRON=1` regardless and the scheduled-task tool set is unchanged. And
  `coworkRuntimeConfig` began *serving* `skillsSyncIntervalMs`/`pluginsSyncIntervalMs` (20 min) plus
  `pluginsFullSyncStalenessMs` (1 h) instead of letting them fall back to code defaults — the code
  reading them already shipped. Cowork therefore re-syncs host skills and plugins into a live session
  roughly every 20 minutes; the harness stages once per run and never re-stages, which is a deliberate
  divergence — it stages from a git-tracked, immutable-per-run source, so there is no mid-run mutation
  for it to observe.


- **The agent image's base layer is pinned by digest.** `docker/Dockerfile.agent` builds
  `FROM ubuntu:22.04@sha256:3b06811b…` instead of the floating `22.04` tag. This Dockerfile has no
  `COPY`/`ADD` — every byte comes from the base plus apt and pip — so with a floating base, rebuilding
  an unchanged recipe produced a different image and "the recipe didn't change" said nothing about the
  contents. Rebuild locally to pick this up; the toolchain versions are unchanged (verified: Ubuntu
  22.04, Node 22.22.3, numpy 2.2.6 / pandas 2.3.3 / openpyxl 3.1.5, `LANG=C.UTF-8`, uid-1000 `ubuntu`).

### Fixed

- **`lint`'s `vacuous-gate-assert` rule was wrong in four ways, two of them silent.** The rule exists to
  catch a `gate_answers_delivered` that guards nothing, and it read only assertion **key names**, never
  their values:
  - It fired on `gate_answers_delivered: **false**`, whose premise is the opposite — that assertion
    demands a confirmed delivery *failure*, so zero gates fails it. A correct negative-path scenario was
    told, in a build-failing warning, that it passed vacuously.
  - It accepted `gate_answer_count_min: **0**` as the presence companion. `delivered >= 0` always holds,
    so the pairing everyone reads as "and a gate must actually fire" asserted nothing — a silent
    false-green wearing the correct idiom's clothes.
  - It matched `tool_called` with a case-insensitive `re.search`, but that field is a **glob**
    (anchored, case-sensitive, only `*`/`?` special). Valid globs that do pin the gate
    (`Ask*Question`, `*Question`, `**/AskUserQuestion`, `**/*`) were flagged anyway, while
    `askuserquestion` — which can never match — silenced the rule. The matcher is now a port of the
    harness's own glob engine, with a differential test against it.
  - Its remedy only ever said "add a presence companion". For a scenario that is gate-clean **by
    design** every branch of that was wrong, and the correct fix — drop the key, it asserts nothing
    there — was never named. The fix line now carries both branches, and when a scenario already
    declares `questions_count_max: 0` the finding says the key is *inert here, drop it* rather than
    telling you to add a gate.

  Thanks to the founder-skills consumer whose report surfaced the one-sided remedy; the other three came
  out of investigating it.

- **`expect_denied` could not tell an empty egress channel from an allowed host.** The expansion into
  `egress_denied` assertions was duplicated in the live run and the verify path, and both reported a bare
  `expected <host> to be denied` even when the proxy had recorded nothing at all — so a tier whose shell
  could reach no host read identically to one that correctly denied the host you asked about. The two
  copies now share one helper with three distinct outcomes, and the verify path passes its
  `egressMissing` signal through, so a `result.json` with no `egress` field reports evidence-unavailable
  rather than a failed assertion. Assertion *outcomes* are unchanged — only the message, and only in the
  cases that were previously indistinguishable.


- **Two documented networking overrides never worked.** `COWORK_EGRESS_PROXY` and
  `COWORK_DOCKER_NETWORK` sat behind values the caller always supplies — every container-like tier builds
  its egress sidecar before spawning, so the env branch could not execute in any tier, and `microvm`
  never read them at all. README advertised both as working knobs, which is worse than an undocumented
  dead branch: the docs vouched for a promise the code could not keep. They are removed rather than
  wired up — redirecting a run at a proxy or network the harness did not create would silently move the
  boundary `boundary-check` exists to prove. `COWORK_PROXY_IMAGE`, in the same README bullet, is
  genuinely live and unchanged.
- **The golden host-loop snapshot asserted a container that does not exist at that tier.** It was built
  from the container-shaped helper, so it pinned a full agent env and a `claude -p …` argv for a sidecar
  that has neither — the same "test a shape nothing runs" defect that let host-loop bash egress die
  unnoticed. It now models the real sidecar: proxy env only, `sleep infinity`, and the ELF bound
  read-only for parity. `SPEC.md` §3.4 and `dockerRunArgv`'s own doc comment both claimed no agent binary
  is bind-mounted there, which was false since the host/VM split; both now say what actually happens —
  no agent *argv* runs in the sidecar, but the ELF *is* bound.


- **`hostloop` `bash` had no egress at all — a regression dating to v0.21.0.** The VM sidecar that `bash`
  runs in via `docker exec` was spawned with an empty env on a Docker network with no route off-box, so
  shell commands could reach **neither allowlisted nor denied hosts**: both failed identically with a DNS
  error. The allowlist was not enforced there so much as bypassed by being unreachable — while
  [docs/boundary.md](./docs/boundary.md), [docs/scenario.md](./docs/scenario.md),
  [docs/session.md](./docs/session.md) and [docs/fidelity-gaps.md](./docs/fidelity-gaps.md) all described
  the allowlist as enforced at this tier, one of them recommending it for testing egress policy. The
  native host/VM process split introduced the gap by replacing the sidecar's computed env with a literal
  and orphaning the `egressProxy` parameter that fed it — the parameter kept being passed in and was
  simply never read. `bash` at `hostloop` now reaches the same allowlist as `container`, through the same
  proxy.

  A sixth `boundary-check` probe (`hostloop-bash-egress`) pins it, and it consumes the runtime's own env
  builder rather than a hand-assembled copy — the distinction that matters, since every hand-built check
  stayed green throughout the regression. It asserts an allowlisted host is reachable **and** an off-list
  host refused; the reachable half is load-bearing, because a sidecar with no egress also refuses
  everything and is otherwise indistinguishable from working enforcement.


- **The egress proxy intercepted the sandbox's own loopback traffic.** The spawn env set
  `HTTP_PROXY`/`http_proxy` (and the HTTPS pair) with no `NO_PROXY`, so a proxy-honouring client asking
  for `http://localhost:PORT` had the request diverted to the allowlist proxy — which lives in a
  *different* container, where `localhost` means the proxy itself — and answered `403`. A skill that
  started a local server and curled it failed against an unrelated process. Cowork's allowlist is a
  public-egress filter that does not stand between a process and its own loopback, and the harness
  already encoded that intent at the microvm tier (the guest firewall explicitly accepts `lo` and
  `127.0.0.0/8`) while the proxy vars defeated it. The spawn env now sets
  `NO_PROXY`/`no_proxy=localhost,127.0.0.1,::1`, scoped to loopback only. A fifth `boundary-check` probe
  (`loopback-not-proxied`) pins the behaviour and carries a positive control, so it cannot pass merely
  because nothing was proxied.
- **`boundary-check` tested a proxy configuration nothing actually ran.** Its probe passed only the two
  UPPERCASE proxy vars, and curl honours `http_proxy` in lower case only for `http://` URLs (the
  CVE-2016-5385 mitigation) — so plain-HTTP probes went unproxied. The probe and the agent spawn now
  derive their proxy env from one shared definition and cannot diverge.


- **A blank `COWORK_AGENT_IMAGE` or `COWORK_CONTAINER_RUNTIME` produced an empty ref instead of the
  default.** Both were resolved with `process.env.X ?? "default"`, which passes `""` straight through, so
  a bare `COWORK_AGENT_IMAGE=` in a `.env` or a shell export made every container invocation fail with an
  opaque runtime error. A blank or whitespace-only value now falls back to the default. Both are resolved
  in one place (`src/runtime/agent-image.ts`) rather than at the 7 and 10 call sites that previously
  duplicated the expression, so the default and the override semantics can no longer drift apart.

- **`doctor`'s stale-image warning claimed a direction it never measured.** The check compares the local
  pulled digest against whatever `ghcr.io/…/cowork-agent-base:2` points at now, which establishes that
  the two differ — not that the published one is newer. `:2` floats and can be repointed either way. The
  detail now reads `local <image> no longer matches the current published <ref>`; the `warn` status and
  the re-pull remedy are unchanged, as is JSON output (`state` already carried this).



## What's Changed
* build(image): pin the agent base layer + guard the workflow properties CI cannot check by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/104
* refactor(image): resolve the agent image and container runtime in one place by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/105
* build(image): publish an immutable :2-r<N> revision without moving :2 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/107
* docs(releasing): drop the last claim that the live suite runs on release PRs by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/106
* fix(publish): immutable_only was inverted and moved :2 anyway by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/108
* feat(doctor): check the agent image against a pinned digest, offline by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/109
* build(deps): Bump docker/login-action from 4.5.2 to 4.6.0 in the actions group across 1 directory by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/97
* chore(deps-dev): Bump fast-uri from 3.1.4 to 3.1.5 by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/99
* chore(deps): Bump undici from 7.28.0 to 7.29.0 by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/98
* build(deps-dev): bump postcss from 8.5.19 to 8.5.25 by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/101
* build(deps): bump the npm-minor-patch group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/102
* build(deps-dev): bump jsdom from 29.1.1 to 30.0.1 by @dependabot[bot] in https://github.com/yaniv-golan/cowork-harness/pull/96
* release: 1.20.0 by @yaniv-golan in https://github.com/yaniv-golan/cowork-harness/pull/110


**Full Changelog**: https://github.com/yaniv-golan/cowork-harness/compare/v1...v1.20.0
