---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-28 17:47:09 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.18.2
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic multi-agent CLI orchestration tool that automates and orchestrates complex workflows, ensuring consistency across different environments. It simplifies the management of microservices, pipelines, and tasks by providing a comprehensive framework for defining and executing multi-step processes efficiently.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.18.2**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic multi-agent CLI orchestration tool that automates and orchestrates complex workflows, ensuring consistency across different environments. It simplifies the management of microservices, pipelines, and tasks by providing a comprehensive framework for defining and executing multi-step processes efficiently.

## What's Changed


Sixty-four commits since the last patch, most of them the machine finding its own mistakes. That is the arrangement working, not failing.

## Receipts that outlive what they describe

A finished run's journal now maps onto a signed TRACE 0.2 Trust Record through the install Ed25519 identity, behind the optional `bernstein[trace]` extra (#4666). The record names its own signing key — the subject is a self-certifying `did:key` URI — states the runtime it was produced under, and binds a delegated execution to its parent by the hash of the parent's own signed record; three vectors minted from real runs verify offline (#4692). Sealed audit segments carry content-addressed hash tiles beside them (#4629). A refused read-set emits a receipt that verifies with no network and no repository (#4650). Journal verification is bound to plan rendering, so an approval binds to the rendering the reviewer actually saw (#4655). Task context packs are byte-deterministic, content-addressed containers (#4646), and sequential evaluation statistics gain time-uniform bounds computed in exact arithmetic (#4651).

## The swarm stops stepping on itself

Migration checkpoints record chunk completion, so a restarted migration no longer re-spawns finished work and the reduce step can run at all (#4541). A re-run reuses a chunk whose task is still in flight instead of spawning a second owner for the same files (#4624). A run whose planning failed closes instead of idling to its wall-clock timeout (#4529). Fair scheduling caps the age boost, so an old task can no longer starve a fresh urgent one (#4675). Drain stops re-admitting a dead agent from a previous run's `agents.json` (#4479), and any unmerged agent branch is rescued to `refs/rescue/<run-id>/` before a forced delete (#4677). A spawn supervisor that exhausted its respawns records the failure on park, where a pruned store used to lose it (#4637). Issue-intake runs have no coordinator, so they now share a claim vocabulary two of them can read off each other's comments (#4521).

## `bernstein pr` says what happened

A description built from a git command that failed used to report that the branch changed nothing. It now reports the failure, and provenance is computed only from a diff that exists (#4669). The anchoring step no longer exits non-zero after the pull request is already open (#4686), and the description is composed against the base the request merges onto (#4693).

## Adapters, plugins, volunteers

The goose adapter passes through the model it was told to use — a role bound to a specific model had been running on whatever the CLI defaulted to — parses the stream, and reports usage like the other adapters (#3679). Aider writes a per-spawn analytics log (#3674). Declared third-party trigger and reporter entry points load at runtime, and a malformed entry is named in a warning rather than becoming a silent no-op (#4531). Volunteer runs gain a second independent reviewer (#4685) and issue comments filtered so the model receives what the reviewer read (#4652).

## Housekeeping

Modules nothing reached are gone, with the documentation rows that advertised them (#4683, #4643). The team-hub page documented a loader that had been deleted as unreachable; it now documents the manifest parser that ships, and deleting a file the drift playbook names as a doc's source of truth fails on the pull request that deletes it rather than on the push afterwards (#4696). Committed coverage shards and scratch files are out of the tree, ignored by shape rather than by name (#4695). Context-file staleness on a pull request is attributed to that request's own commits (#4634), and CONTRIBUTING documents how milestones are targeted, which had been folklore (#4285). Three gates were failing for reasons no code change could fix: the lint gate called `ruff` outside `uv run` on a project that never activates its virtualenv (#4547); a required status check filtered its trigger on paths, so every pull request outside the filter waited forever on a run that never started (#4556); and a completion signal named its test by a path written when the task was planned rather than one that exists (#4554).

## Contributors

- **Chirag Honnyal** — branch rescue on drain (#4681), the priority age-boost cap (#4680), spawn-supervisor failure records (#4662), staleness attribution (#4664).
- **Amir Fathi** — swarm checkpoint completion (#4618), the drain liveness check (#4621), the reaper patch-target fix (#4688).
- **Sujeito Operator** — a producer for the parked-session store (#4636), in-flight chunk reuse (#4625).
- **Jesus Esquer** — agent timeout extension reaching the spawned process (#4608), reaper caller coverage (#4613).
- **Abishek N** — the deterministic TaskContextPack container (#4694), dead-module removal (#4696).
- **Atirna** — plugin entry-point registries (#4614).

---

## What's Changed
* fix(release): publish the version's own release notes on the release page by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4606
* fix(ci): release the andon once main is green again by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4607
* chore(deps): update dependency @types/vscode to v1.134.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4604
* fix(#4571): agent timeout extension reaches the spawned process by @jm27 in https://github.com/sipyourdrink-ltd/bernstein/pull/4608
* docs: document _MAX_FLUSH_ATTEMPTS drop policy in metric_collector docstring by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4611
* fix(plugins): load the declared bernstein.triggers and bernstein.reporters entry-point groups by @atirna in https://github.com/sipyourdrink-ltd/bernstein/pull/4614
* fix(#4541): wire swarm migration checkpoint completion and reduce by @AmirF194 in https://github.com/sipyourdrink-ltd/bernstein/pull/4618
* test(#4610): cover the reaper caller, not just the adapter contract by @jm27 in https://github.com/sipyourdrink-ltd/bernstein/pull/4613
* fix(security): restrict redirect destinations for third-party-derived URLs by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4619
* feat: add claim comment format constants and helpers for issue-intake runs by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4609
* fix(replay): ensure plan.graph.full nodes are sorted by task_id in board projection by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4622
* chore(deps): update dependency @vitejs/plugin-react to v6.1.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4620
* fix(#4479): stop drain from re-admitting a dead prior-run agent from agents.json by @AmirF194 in https://github.com/sipyourdrink-ltd/bernstein/pull/4621
* test: state the sandbox precondition instead of inferring it from the env by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4626
* feat(adapters): drive more of the goose CLI and parse its stream by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4616
* feat(quality): empirical confidence helper with a Hoeffding confidence sequence by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4612
* test(security): pin a computed capability delta across the recording seam by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4627
* fix(orchestrator): bound the planning window so a failed plan does not run to timeout by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4617
* fix(#4624): reuse in-flight swarm chunks instead of double-spawning owners by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4625
* feat(review): show the reviewer the conventions already filed for this repo by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4631
* feat(audit): write content-addressed hash tiles beside the sealed segments by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4629
* docs: refresh the curated context files against their subtrees by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4632
* fix: wire task resume checkpoint writer into orchestrator step-completion handling by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4615
* chore(deps): update dependency vite to v8.2.2 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4623
* feat: wire --analytics-log into aider spawn command by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4630
* fix(#3453): give the parked-session store a producer, and key the park on something that survives a retry by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4636
* feat: extend AutofixReceipt with thread resolution tracking by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4635
* feat: add CounterfactualAuditError and EquivalenceAttestation models by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4638
* fix(tasks): report an unreachable spawn supervisor instead of suppressing it by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4640
* fix(quality): handle exit 127 in import_cycle gate command path by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4639
* test: state the sandbox premise instead of inheriting it from the host by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4658
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4657
* fix(docs): attribute context-file staleness only to PR-contributed commits (#4634) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4664
* fix(core): persist spawn supervisor failure records on park for pruned store fallback (#4637) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4662
* feat: add exact-arithmetic time-uniform ConfidenceSequence primitive by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4651
* feat: wire comment filtering into volunteer runner (task 5959ed75355c) by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4652
* test: add SSRF protection tests for fetcher call sites by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4654
* feat: bind journal verification to plan rendering by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4655
* feat: add sample_evidence field to FailurePatternDraft by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4659
* fix: report git failures in PR descriptions instead of claiming no changes by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4670
* fix(lint): move Path import to TYPE_CHECKING block in context_policy.py by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4653
* fix(autoheal): remove orphan cost_guard module by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4679
* feat: add tool output digesters registry and ruleset models by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4656
* feat: add compute_observations_hash function by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4663
* fix(orchestration): cap priority age boost to prevent starvation of fresh P1 tasks (#4675) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4680
* feat: add milestone triage guidance to CONTRIBUTING.md by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4660
* feat: aider adapter parses prose while upstream already emits structured events: wire --analytics-log by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4661
* fix(orchestration): rescue unmerged agent branches before forced deletion on drain (#4677) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4681
* feat: add test for three-level chain revocation propagation (A ← B ← C) by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4682
* fix(pr): anchor the description without aborting the command by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4686
* feat: volunteer: independent review pass — a second donor reviews every submission by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4685
* fix(test): patch the correct _is_process_alive binding in test_ownership_released_on_reap by @AmirF194 in https://github.com/sipyourdrink-ltd/bernstein/pull/4688
* fix: audit cost and agents for unreachable modules: wire or delete, one verdict per module by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4683
* feat(protocols/volunteer): add shared document substrate (documents.py) by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4689
* feat: controller state sidecar persists adaptive parallelism and claim conflict cooldowns by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4687
* feat: add trust_record.py with TRACE 0.2 emitter API by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4684
* fix(pr): compose the description against the base the pull request merges onto by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4693
* feat: deterministic TaskContextPack container (#4646) by @AbishekCoder1 in https://github.com/sipyourdrink-ltd/bernstein/pull/4694
* chore: remove committed coverage shards and scratch files by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4695
* chore: remove dead code modules from plugins_core and routing (#4643) by @AbishekCoder1 in https://github.com/sipyourdrink-ltd/bernstein/pull/4696
* feat: add read-set refusal receipt with offline verification by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4650
* chore: move README translations to docs/i18n and clear run scratch from the root by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4702
* fix(docs): document the team-hub manifest that ships, gate deleted sources on the PR by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4703
* fix(observability): align trust record field surface with TRACE 0.2 draft by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4704
* feat: volunteer: hub HTTP surface — scoped endpoints over the lease store by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4700
* chore(release): v3.18.2 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4707


**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.18.1...v3.18.2

