---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-24 06:03:27 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.17.2
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic multi-agent CLI orchestration tool that automates the deployment and management of complex systems by orchestrating multiple agents to execute tasks in parallel. It solves the problem of managing distributed applications with many interconnected components, ensuring consistency and reliability. The key capabilities include defining workflows, managing dependencies between tasks, and monitoring agent performance.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.17.2**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic multi-agent CLI orchestration tool that automates the deployment and management of complex systems by orchestrating multiple agents to execute tasks in parallel. It solves the problem of managing distributed applications with many interconnected components, ensuring consistency and reliability. The key capabilities include defining workflows, managing dependencies between tasks, and monitoring agent performance.

## What's Changed


A patch release about proof: what a run recorded, and whether you can still check it afterwards.

## Receipts you can re-derive

A gate verdict is three-valued, but receipts stored only the outcome, so an auditor re-running the check offline could not tell a refusal from an abstention. Receipts carry the verdict now, and it re-derives without the run (#4182).

Spawn context was assembled from a dozen sources and hashed as one blob. Each part now gets its own content hash in a receipt, in prompt order, so a prompt that changed can be narrowed to the section that changed it (#4303). An agent working inside a subtree is handed that subtree's `.sdd/project.md` rather than only the root's (#4304). The breakdown surface that never got populated is gone (#4422).

A persistent-agent adapter carries state Bernstein never hashed, so replaying its inputs proves nothing. Those runs mark their artifacts `unverifiable` rather than `verified` (#4290), and `letta_code` declares itself as one (#4289).

The receipt ledger has a pure active-set closure (#4183). `LineageGate.check` verifies who wrote a permission-bearing file, not what the write grants — the two are different questions and it was answering the wrong one (#3768). Admission receipts were never written at all for an adapter whose name contains a space; the filename is slugged now (#4363). A CAS sidecar read skipped the anchored walk on an assumption nothing enforced (#3582).

## Runs that lied about themselves

A planning task that decomposed into nothing reported the run as successful. It fails now (#4401). Three `/status` surfaces counted live agents three different ways, so the same run read as busy on one and idle on another (#4360). A task stranded by a failed dependency stayed stranded after that dependency was retried and succeeded (#4376).

A `skip-worktree` CLAUDE.md left by a killed run survived `reset --hard` and poisoned every later run in that checkout (#4394).

## Models and transport

Every 429 was backed off as a rate limit, including standing account caps that no retry can clear — the agent spent its budget waiting for a wall to move (#4378). The last-green adapter table showed a never-probed adapter as merely stale (#4387).

The assembled system prompt now has a spawn-time budget: over a configurable share of the model's context window it warns, naming the sections responsible (#4377).

## Security

A resume whose grant moved is refused before the first side effect, not after (#3834). The skills and MCP catalog fetchers reject internal-host destinations (#4301, #4302).

## Also

RPM never published when the install smoke outran PyPI index propagation (#4383). The metric buffer dropped every target's lines when one target's write failed (#3710). Coverage baseline is 84.08%. Agent working notes under `scratch/` no longer ride along in unrelated commits.

Soundtrack: https://suno.com/s/mlHRUsFOZfhEUL96

---

## What's Changed
* feat(lineage): add active-set closure over the receipt ledger (#4183) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4384
* fix(adapters): slug receipt filenames so spaced adapter names can persist by @Rehan30g in https://github.com/sipyourdrink-ltd/bernstein/pull/4386
* Add issue-to-PR and PR-intake-review scenario recipes by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4379
* Keep git housekeeping off in the dogfood fixture helper by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4380
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4385
* Bound how long a failed metric target is retried by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4381
* feat(adapters): annotate last-green rows probed absent as (not probed) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4389
* feat: reject internal-host destinations in the MCP-catalog fetcher by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4390
* fix(tests): make plan-loader flag assertion path-independent by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4392
* fix(tests): stop asserting on Rich-wrapped output in ticket validate CLI by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4396
* fix(skills): reject internal-host destinations in the catalog fetcher by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4397
* fix(cli): harden run attestation projection by @Silentpartnercoding in https://github.com/sipyourdrink-ltd/bernstein/pull/4391
* fix(mypy): fix call-overload, attr-defined, and arg-type in core/config by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4388
* feat: declare letta_code's session_state as persistent-agent by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4400
* chore(ci): ratchet coverage baseline up to 84.08% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4402
* feat: mark replay verdict unverifiable for a run that used a persistent-agent adapter by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4404
* fix(cas): anchor sidecar metadata reads by @k4its1t in https://github.com/sipyourdrink-ltd/bernstein/pull/4399
* fix: every 429 is backed off as a rate limit, including caps a retry cannot clear by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4405
* fix(mypy): fix valid-type and call-overload in core/git by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4403
* feat: scope spawn project-context to the task's target subtree by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4406
* fix(mypy): fix call-overload and assignment in core/integrations by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4407
* feat: carry the three-valued gate verdict into receipts and re-derive it offline by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4408
* feat: record a per-part content-hash receipt for spawn-context assembly by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4409
* refactor: drop the unpopulated context_parts breakdown surface by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4422
* feat: refuse a resume whose grant moved, before the first side effect by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4412
* fix(git): clear stale skip-worktree CLAUDE.md in pre-startup hygiene (#4394) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4414
* fix(tasks): fail zero-yield planning task instead of reporting success (#4401) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4415
* fix(ci): make PyPI index propagation timeout message explicit (#4383) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4419
* feat: lineageGate.check verifies who wrote a permission-bearing file, never what the write grants by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4421
* fix(adapters): classify standing account/quota caps separately from transient rate limits (#4378) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4417
* fix(status): make all three /status surfaces agree on the live agent count by @Rehan30g in https://github.com/sipyourdrink-ltd/bernstein/pull/4413
* fix(mypy): fix valid-type shadowing in core/preview/manager.py by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4411
* fix(tasks): cascade unblock stranded tasks when dependency succeeds or retries (#4376) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4418
* chore: stop tracking agent working notes under scratch/ by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4423
* fix(status): unify live-agent classification across summary, agents count, and cli (#4360) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4420
* feat(tokens): enforce spawn-time system prompt budget (#4377) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4416
* release: v3.17.2 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4425

## New Contributors
* @k4its1t made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4399

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.17.1...v3.17.2

