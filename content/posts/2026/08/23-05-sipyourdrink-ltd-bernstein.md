---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-23 05:52:01 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.17.1
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic multi-agent CLI orchestration tool that automates complex workflows and tasks, ensuring reproducibility across different environments. It simplifies the management of multiple agents in distributed systems and helps developers achieve consistent results by defining clear plans and policies for task execution.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.17.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic multi-agent CLI orchestration tool that automates complex workflows and tasks, ensuring reproducibility across different environments. It simplifies the management of multiple agents in distributed systems and helps developers achieve consistent results by defining clear plans and policies for task execution.

## What's Changed

A patch release about one thing: a container run that starts from an issue number and is still alive an hour later.

## Agents stopped dying

The heartbeat was refreshed by a shell loop pasted into the agent's own prompt. A model that ignored the block was killed for ignoring it. The worker writes it now, where the orchestrator reads it (#4330).

Four subsystems read that number. The recycler and the escalation ladder disagreed about the same agent, and the harsher one won (#4314). The stalled-manager detector went by wall-clock runtime alone, ignoring the liveness verdict from the same tick (#4338).

A dead agent's uncommitted work survives: the orphan path built a request body `httpx` could not encode, and the error killed the tick before the commit ran (#4345).

## Runs recover on their own

A run with a high error rate blocked every new spawn wave, which is also how it stayed at a high error rate; the gate waits for three observations now (#4336). Agent process deaths counted as task failures (#4310). A failed planning task's retry raced a sibling that had already done the same decomposition (#4309).

## The gate graded the wrong tree

Agents commit in their own worktree, and the merge back waits for the gate — so the gate graded a checkout missing the work under review. A task whose acceptance signal named a file it had just written could never pass. It had done this for as long as the gate has existed. The verdict is computed on the merged result now (#4367).

## The task graph

An inferred file-overlap edge could contradict an explicit `depends_on` and fabricate a two-node cycle, after which `topological_order` returned nothing and every task read as blocked (#4366). A declared cycle no longer wedges the scheduler either (#4299).

## PostgreSQL

Five bugs, all in the code that claims a task: two ignored the claiming role, one raised on a parameter the store did not accept, one queried a tenant column the schema never created, and `create()` raised `ImportError` (#4323, #4325, #4328, #4332, #4333).

**Upgrade note:** tasks written before this release carry no recorded tenant and land in the default scope; on a multi-tenant install the original scope is not recoverable.

## Models and transport

Retry escalation replaced the model an operator pinned with a hard-coded Claude tier name (#4274). A `model:` in `bernstein.yaml` or `--model` now suppresses model escalation on retry; effort still escalates. An agent that exits without spending a token no longer spends the retry budget (#4275).

The MCP bridge pointed at a module with no `__main__` guard: it imported, exited 0, and never answered the handshake. Every agent reported the bridge as disconnected and nobody read the init event (#4313, #4315).

## Also

The manager prompt never showed how to set `depends_on`, so QA started before the module it tested existed (#4311). The PR a run opens no longer describes a run it cannot find (#4349). Adapters declare which channel carries `system_addendum` (#4256). On a TTY, `bernstein run` says it is waiting for the first agent (#4257).

Soundtrack: https://suno.com/s/sQ51WglS4Qzj9eIN

---

## What's Changed
* fix(core): publish SSE task_update events for tasks stranded by dependency cascade (#4259) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4264
* feat(agents-md): compact subsystem index; full per-file map moves to docs/sdd/module-map.md by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4268
* fix(cli): narrate the first-agent wait on TTY runs by @lesbass in https://github.com/sipyourdrink-ltd/bernstein/pull/4261
* chore(ci): ratchet coverage baseline up to 84.02% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4266
* Refactor: Consolidate _VERSION_TOKEN_RE by @AbishekCoder1 in https://github.com/sipyourdrink-ltd/bernstein/pull/4167
* Fix/trunk health slo sampling by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4249
* chore(deps): update dependency charset-normalizer to v3.5.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4284
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4278
* feat(volunteer): add PR submission with pacing and DCO sign-off by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4279
* chore(deps): update step-security/harden-runner action to v2.21.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4280
* feat(volunteer): add browse command for index discovery by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4273
* chore(deps): update dependency astral-sh/uv to v0.12.5 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4276
* chore(deps): update dependency python to 3.13 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4272
* chore(deps): update reviewdog/action-actionlint digest to dbe5299 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4271
* chore(deps): update trufflesecurity/trufflehog action to v3.97.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4277
* feat(adapters): add a session_state axis to AdapterStrategy by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4308
* fix(observability): keep a failed target's metric lines for the next flush by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4316
* fix(mcp): point the MCP bridge spec at a runnable entrypoint by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4317
* feat(agents): classify a zero-token fast clean exit as a transport failure by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4318
* fix(planning): unify the dependency-satisfaction rule across both schedulers by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4322
* feat(planning): record retry exhaustion as a distinct stranding cause by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4312
* fix(store): role-gate claim_batch on the PostgreSQL backend by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4324
* fix(agents): idle recycler defers to heartbeat_escalation's liveness signal by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4319
* fix(observability): derive error-budget counts from task-board state by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4321
* fix(mcp): make the repo-root bridge declaration runnable by any client by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4335
* feat(volunteer): add gitea rig compose + seed + assert by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4283
* fix(tasks): cancel planning-task retries that race a completed sibling by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4326
* chore(tests): drop an unused import that fails the pre-push lint by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4341
* fix(agents): worker refreshes the heartbeat the orchestrator reads by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4339
* fix(orchestrator): manager sets depends_on, all claim paths honor it by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4320
* feat(security): add ensure_public_http_url for third-party-derived URLs by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4307
* fix(orchestration): stop orphan handling from crashing the tick by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4346
* fix(orchestrator): convergence guard stops blocking at zero active agents by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4342
* fix(docker): run the volunteer rig seeder as a non-root user by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4352
* docs(contributing): document the route for contributors who cannot open a PR by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4355
* feat(cli): add `pr --issue` to title and link the PR from its issue by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4354
* feat(cli): add `run --wait` to block for a run's outcome by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4351
* fix(store): role-gate claim_by_id on the PostgreSQL backend by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4327
* docs(release-notes): add the entries six merged fixes shipped without by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4359
* fix(orchestrator): give the error-rate gate a minimum sample floor by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4362
* chore(deps): update dependency webencodings to v0.6.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4329
* fix(mypy): fix call-overload and no-any-return in core/cost by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4356
* Fix/mypy persistence by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4358
* fix(git): narrow transient push marker to avoid matching credential errors by @blut-agent in https://github.com/sipyourdrink-ltd/bernstein/pull/4343
* fix(adapters): forward OPENAI_BASE_URL through the Cline adapter env by @Rehan30g in https://github.com/sipyourdrink-ltd/bernstein/pull/4365
* chore(deps): update python docker tag to v3.13 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4348
* chore(deps): update gitea/gitea docker tag to v1.27 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4347
* fix(orchestrator): evaluate the quality gate on the merged tree by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4368
* fix(task-graph): stop inferred edges forming cycles, unwedge cyclic boards by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4369
* feat(quality): add inconclusive gate verdict with closed reason codes by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4282
* fix(pr): resolve a run's goal, identity and merged work for its PR by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4370
* fix(retry): keep the operator's model and stop charging zero-token exits by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4373
* fix: gate the stall verdict on liveness and declare system_addendum delivery by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4372
* test: stop git background maintenance racing helpers that delete .git by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4374
* release: v3.17.1 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4375

## New Contributors
* @lesbass made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4261
* @AbishekCoder1 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4167
* @blut-agent made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4343
* @Rehan30g made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4365

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.17.0...v3.17.1

