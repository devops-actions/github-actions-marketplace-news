---
title: Bernstein — Multi-Agent Orchestration
date: 2026-07-26 06:39:13 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.10.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic CLI orchestration tool that automates the scheduling and execution of coding agents like Claude Code, Codex, Gemini CLI, and others. It uses plain Python to schedule tasks, ensuring reproducibility end-to-end. Each task runs in its own git worktree, isolated from shared mutable state, and results are checkable after the fact through a lineage spine and replay journal. The tool supports 40+ CLI agent adapters and can also wrap arbitrary commands with prompts. It provides an opt-in HMAC-chained audit log for auditing purposes and includes an air-gapped install profile.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.10.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic CLI orchestration tool that automates the scheduling and execution of coding agents like Claude Code, Codex, Gemini CLI, and others. It uses plain Python to schedule tasks, ensuring reproducibility end-to-end. Each task runs in its own git worktree, isolated from shared mutable state, and results are checkable after the fact through a lineage spine and replay journal. The tool supports 40+ CLI agent adapters and can also wrap arbitrary commands with prompts. It provides an opt-in HMAC-chained audit log for auditing purposes and includes an air-gapped install profile.

## What's Changed


A correctness release, and an unusually honest one.

One defect class runs through it: **a check reporting success on work it never
evaluated**. Fourteen distinct instances were found. Some were in the product,
some were in the tests, and several were in the machinery that was supposed to
be catching the others. The most consequential is the one this release exists
to close, and it is worth stating plainly because it means the previous release
was gated less thoroughly than its checks suggested.

Alongside that, the MCP server surface was corrected end to end, a run that
finishes nothing now says so, and the documentation stopped claiming
capabilities the code cannot reach.

## Behaviour changes (read before upgrading)

- **A run that finishes nothing no longer reports success (#3010, #3029, #3056,
  #3060).** A run whose tasks never reached a terminal state could report
  `HEALTHY` and exit 0, and the exit code was correct only under `--quiet`.
  Three things changed. A run whose task set stops moving self-stops after a
  settle window instead of idling. Tasks that never finished are marked failed
  with an explicit reason before the report is written, so the retrospective
  reports the failure rather than an empty success. The exit code is derived
  from the run's real health in every output mode.

  **A quiescent run carrying a failed task now exits non-zero where it
  previously exited 0.** Any scheduler or script treating exit 0 as "the run
  happened" rather than "the run succeeded" will start seeing failures it was
  previously blind to. That is the intended correction, and it can turn a green
  pipeline red on first upgrade.

  The stop is conservative at every branch: a working agent, a claimable task,
  an empty backlog, a retry backoff, or an active hold all prevent it. The
  criterion is absence of *progress*, measured as an unchanged task-set
  fingerprint across consecutive ticks, not absence of *completions*.

- **A liveness watchdog no longer reaps a still-working agent (#3012, #3029).**
  Heartbeat staleness could fire while the agent's log was seconds old, killing
  work in flight and recording it as a failure.

- **`bernstein approve` over MCP is an approval gate rather than a
  force-complete (#3081, #3107).** It previously completed any task in any
  state. It now refuses outside the states where approval is meaningful, and
  the refusal names the current state.

- **An explicitly named container runtime fails closed (#3039, #3047).**
  `--sandbox podman` previously degraded to worktree isolation where
  `--sandbox docker` refused. Both now refuse. If you passed an explicit
  runtime and relied on the silent fallback, you will now get an error.

## The gate that was not gating

`ci-gate-stub.yml` was satisfying the required `CI gate` context on diffs that
carried code. Measured on a live pull request: the check concluded **success in
eleven seconds** while all four Ubuntu test shards, both Windows shard sets and
nineteen other checks were still pending. Branch protection requires only
`CI gate` and `review-bot-ack`, so the shards are not required directly, which
made the bypass total.

Twelve of sixteen open pull requests had their green gate sourced from the stub
rather than from a real run. **#3053** closes it. Every merge in this release
was afterwards verified by fetching the workflow run by id, confirming its path
is `ci.yml`, and requiring at least four Ubuntu shards with a `success`
conclusion. Shard *existence* is not shard success, and an early probe that
confused the two produced nine false positives before it was corrected.

Three related holes were found and are tracked rather than fixed here: the
second required context can also be satisfied by an unconditional step on
merge-group events (#3114), the shard runner reports a file as passing when it
ran zero tests (#3068), and the review tracker counts a bot that never ran as
zero findings (#3067).

**#3038** adds structural guards so this class is caught rather than
rediscovered: collection completeness, required-context presence, and
type-check scope.

## Tests that were not running

- **Seven test files had never run in CI**, including the adversarial lineage
  suite (#3043, #3026, #3046). They are collected now, and a guard fails when a
  test file is collected by no lane.
- **A repo-wide invariant test only ran when its own subject file was touched.**
  Pull-request lanes select tests by impact, so a violation could merge clean
  and rot on the default branch. This is the mechanism that left `main` red
  before this release started; **#3126** fixes it.
- **A test could replace the pytest process** with `os.execv` and the run
  reported success with zero tests (#3059).
- `mypy` now actually checks `src` and is gated (#2981, #3003).

## MCP

The server surface was wrong in ways that made documented paths fail on first
use. All of these ship fixed:

- `bernstein_context` was silently dropped at the default tool tier because it
  had no tier entry (#3073, #3089). The tier table is now the single source, and
  the default tier advertises 14 tools.
- `bernstein_task_handle` rejected the identifier `bernstein_run` returns, so
  the documented polling path failed immediately (#3074, #3092).
- The Tasks extension was both mis-gated and undeclared, so `bernstein_run`
  returned the wrong wire shape and the task handlers were unreachable (#3079,
  #3103). A third defect surfaced while fixing it: `Task.ttl` is required and
  the SDK serialises with `exclude_none`, so every task response was being
  stripped of a mandatory field and rejected by the client.
- The strict tool schemas were enforced but never advertised, making every
  constrained argument a first-call failure (#3082, #3104).
- `bernstein_stop` accepted any path and wrote a shutdown file there, with no
  containment check (#3080, #3106). It is now bounded to the project root.
- A 401 from the remote transport carries the protected-resource metadata URL,
  so the OAuth metadata the server already served is discoverable (#3075, #3094).
- Connect-time instructions describe the run control loop rather than the
  project (#3076, #3091), and state plainly that the HTTP transport validates
  arguments less strictly than stdio (#3088, #3101).

## Verifiability and lineage

- Output provenance is keyed by a canonical artifact URI, so one output named
  two ways is one lineage node (#2991).
- A declared output that never landed on the chain is itself recorded, so "the
  agent said it would produce this and did not" is a verifiable fact rather than
  a silent absence (#3034).
- Release receipts are recorded when a held claim is surrendered and when a task
  returns to the pool (#3045, #3126).
- Per-artifact health, attribution and production events (#3002).
- A chain-head re-read taken outside the append section is refused rather than
  documented against (#3129, #3149). The head read also re-points the append
  path's `(path, size)` fast path, so a call made outside a section let a writer
  land between the read and that bookkeeping, leaving the recorded size
  describing bytes the head does not cover, and the next append landing on a
  stale head. That is the chain fork #2791 closed, reachable by a second route.
  A concurrency test that had compared two claims written from the same read now
  asserts against the recorded predecessor instead.

## Cluster, sandbox, platform

- Leaderless MESH topology over the signed claim journal; two nodes reduce the
  same journal to byte-identical state (#2988). Peer keys are pinned so a node
  cannot assert someone else's identity (#2999).
- A worker preflights its workspace before claiming, and a claim stranded by a
  failed spawn is re-queued instead of sitting in `claimed` forever (#3027).
- Real microVM guests via libkrun behind the existing sandbox interface (#2974).
- Isolation downgrades are surfaced and audited rather than applied silently
  (#3028).
- Stop delivery is separated from the reap guarantee (#3055).

## Documentation accuracy

The README described modality support the code cannot reach. `agent_kind` is
accepted and validated by the team manifest but no scheduler reads it, every
bundled adapter declares git-diff output, and `artifact_spec` is absent from
every operator-facing loader. The claims are now scoped to what is reachable,
with the substrate described accurately, and a machine-checked guard fails in
**both** directions: it catches the overclaim today, and once reachability lands
it catches the now-stale correction and names the block to delete (#3127, #3132).

One project description now appears across every surface, and several stale
facts went with it: three image and package manifests pointed at GitHub
organisations that do not exist, the adapter advisory said "30+" against 46, and
the shipped Helm chart declared version 1.6.3 (#3148).

## Contributors

Thanks to the people outside the core team whose work is in this release.
Derived from `git log v3.9.0..main`:

- **@Maqbool61** shipped `bernstein-bench`, a runnable, reproducibility-gated
  evaluation harness where every posted score carries its own proof (#3099). The
  submission bundle commits the receipt hash at emit time, so a score cannot be
  separated from the material it was derived from, and the verifier names the
  exact task whose replay diverged rather than returning a bare failure.
- **@aeoess** (Tymofii Pidlisnyi) superseded the showback canonical vectors with
  an anchored set generated against two independent reference implementations
  rather than against our own code (#2994).
- **@AshSgDe29071999** removed a duplicate `--fresh` option that made
  `bernstein run` emit a Click warning on every invocation (#3030).
- **@chrstphe** (Christophe) added the MCP Toplist rank badge (#3019).
- **@pollychen-lab** (Polly Labs) corrected the qwen scoped install hint (#3011).

## Known issues

`Trivy (filesystem)` reports one high-severity finding on the default branch: a
frontend dependency in the shipped dashboard bundle, already present in v3.9.0.
It is not a required check and does not gate merges. The remedy is a major
version bump of that dependency, tracked in #3097 rather than rushed into this
release.

---

<details>
<summary>Full commit list</summary>

## What's Changed
* chore(deps): update sigstore/cosign to v3 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2950
* chore(deps): update dependency mkdocs-material to v9.7.7 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/2962
* chore(deps): update dependency sigstore/cosign to v3.1.2 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/2964
* publish: gate MCP registry listing on the ghcr image existing by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2967
* ci: key main CI concurrency by SHA so merged commits keep a real pass/fail signal by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2965
* chore: remove the Cloudflare surfaces built on a control-plane API that never existed by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2972
* feat(sandbox): boot real microVM guests via libkrun behind the existing monitor seam by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2974
* docs: promote 132 feature-matrix rows to full pages and wire up nav orphans by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2975
* feat(adapters): drive Codex on Cloudflare through the sandbox bridge by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2976
* chore(ci): ratchet coverage baseline up to 81.95% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2978
* fix(janitor): fail closed on unevaluated artifact-mode completion signals by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2979
* feat(lineage): first-class signed-write path so the v1 recorder can retire by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2982
* feat(adapters): gate adapter admission on verifiable conformance receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2985
* fix: make 15 capability-matrix rows reachable or remove them by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2984
* docs(ci): reconcile merge-queue runbook with the shipped ruleset and release path by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2983
* fix(ci): make mypy actually check src, and gate it in CI by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2981
* feat(distribution): provenance-verified release update advisory by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2987
* feat(delegation): recompute per-hop authority narrowing from receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2986
* fix(adapters): stop the admission preflight breaking injected adapters by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2989
* feat(lineage): key output provenance by canonical artifact URI by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2991
* feat(tasks): complete artifact-mode tasks on a signed lineage receipt by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2990
* feat(cluster): implement the leaderless MESH topology over the signed claim journal by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2988
* chore(deps): update dependency platformdirs to v4.10.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/2993
* feat(lineage): per-artifact health, attribution and production events by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3002
* fix(tests): realign completion-seam assertions and de-platform the glob test by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3000
* chore(typing): resolve the mypy third-party import backlog by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3003
* feat(cluster): pin MESH peer keys so a node_id cannot be asserted by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2999
* fix(tests): make the CLI tip assertion independent of the random tip draw by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/2998
* docs: regenerate adapter last-green table from canary receipts by @github-actions[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3004
* fix(qwen): use scoped install hint by @pollychen-lab in https://github.com/sipyourdrink-ltd/bernstein/pull/3011
* fix(cli): clarify the seed-vs-plan error on load_plan by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3016
* docs(ci): correct concurrency policy for per-SHA main runs by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3033
* Add MCP Toplist rank badge by @chrstphe in https://github.com/sipyourdrink-ltd/bernstein/pull/3019
* chore(deps): update gcr.io/oss-fuzz-base/base-builder-python docker digest to 6a6927b by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/2992
* test(showback): supersede seed canonical vectors with anchored set; add nfc-rejection, nano-string and supplementary-plane classes by @aeoess in https://github.com/sipyourdrink-ltd/bernstein/pull/2994
* fix(docker): replace nonexistent CLI subcommands in shipped compose files by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3020
* feat(cli): first-class `bernstein task complete` completion front door by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3021
* fix(sandbox): accept sandbox: <runtime> string shorthand in seeds by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3025
* fix(spawner): surface and audit sandbox isolation downgrades by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3028
* ci: guard against gate signals that report on unevaluated work by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3038
* fix(cluster): worker workspace preflight + re-queue stranded claim on spawn failure by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3027
* fix(worktree): gitignore agent-control state in worktrees by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3022
* fix(cli): remove duplicate --fresh option on run by @AshSgDe29071999 in https://github.com/sipyourdrink-ltd/bernstein/pull/3030
* fix: derive run cost estimate from the resolved model, not a fixed sonnet rate (#3013) by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3024
* feat(lineage): record declared outputs that never landed on the chain by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3034
* docs: tighten module docstrings by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3051
* fix(mcp): advertise bernstein_context at the default tool tier by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3089
* docs(mcp): make connect-time instructions state the run control loop by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3091
* fix(mcp): advertise the protected-resource metadata URL on a 401 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3094
* fix(tests): assert current worktree git call signatures and collect the file by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3044
* fix(reliability): stop reaping a still-working agent and reporting a no-output run HEALTHY by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3029
* chore: remove unreferenced scripts and generated scan baselines by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3050
* fix(audit): record a release receipt when a held claim is surrendered by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3045
* fix(platform): separate stop delivery from the reap guarantee by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3055
* fix(security): derive agent task-scope enforcement from the task route table by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3041
* chore(ci): ratchet coverage baseline up to 82.07% by @github-actions[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3098
* fix(sandbox): fail closed for every explicitly named container runtime by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3047
* fix(ci): stop the CI gate stub satisfying the gate on mixed diffs by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3053
* fix(skills): route injected completion skill through the task-complete CLI by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3040
* fix(packaging): correct the catalog run command and publish the homepage in server.json by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3061
* feat(mcp): bernstein_task_handle accepts the id bernstein_run returns by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3092
* test(wal): pin the byte-coverage contract for the single-byte-flip property by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3095
* fix(orchestrator): give a run that finishes nothing a terminal state by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3060
* fix(action): plan mode passed an option `bernstein run` does not declare by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3102
* fix(mcp): contain the bernstein_stop workdir to the project root it names by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3106
* feat(eval): ship bernstein-bench — runnable, reproducibility-gated evaluation harness (#2932) by @Maqbool61 in https://github.com/sipyourdrink-ltd/bernstein/pull/3099
* fix(mcp): advertise the enforced tool schema as the tool inputSchema by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3104
* fix(audit): record a release receipt when a task is returned to the pool by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3126
* docs(mcp): state that the streamable HTTP transport validates arguments more weakly than stdio by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3101
* test: collect six uncollected test files and gate tests/integration by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3046
* fix(mcp): gate the task-handle response on the call, declare taskSupport by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3103
* ci: cut scheduled job volume on lanes that fire above their yield by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3128
* docs(readme): scope the modality claims to what is reachable today by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3132
* fix(mcp): make bernstein_approve an approval gate instead of a force-complete by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3107
* docs: state one project description across every surface, fix stale facts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3148
* fix(audit): make the chain head a record embeds the head it is written with by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3129
* ci: classify a queued merge group from its own base SHA by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3031
* fix(audit): refuse a head re-read taken outside the append section by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3149
* chore(release): v3.10.0 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3152

## New Contributors
* @pollychen-lab made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3011
* @chrstphe made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3019
* @aeoess made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/2994
* @AshSgDe29071999 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3030

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.9.0...v3.10.0

</details>

