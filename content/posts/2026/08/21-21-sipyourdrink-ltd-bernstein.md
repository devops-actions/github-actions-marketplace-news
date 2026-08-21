---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-21 21:56:21 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.17.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is a deterministic multi-agent CLI orchestration tool designed to help users manage complex agent-based systems. It automates the process of orchestrating multiple agents, ensuring consistent and reliable execution across different environments and configurations.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.17.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic multi-agent CLI orchestration tool designed to help users manage complex agent-based systems. It automates the process of orchestrating multiple agents, ensuring consistent and reliable execution across different environments and configurations.

## What's Changed

This release began as an arXiv preprint. The evaluation section kept turning into
a bug report, so we shipped the bug report first.

## The task graph dropped work

- A failed or cancelled task now reaches dependents outside its subtree. (#4243, #4258)
- A node whose every inbound edge skipped is materialised. (#4253)
- Decomposition recurses under a bound; completion has a typed record. (#4179, #4185, @Chirag6722)

## Verification says what it checked

- `audit verify` is read-only; append, rewrite and identity are separate verdicts. (#4244, #4245)
- A run's read-path set is derived from its journal. (#4180, @Louis20060723)
- Absence claims carry a coverage record; compaction binds a pre-compaction hash. (#4188, #4189)
- `verify_result_bundle` refuses wrong-typed fields instead of raising. (#4057, #4072, @timsurrealedu; #4252)
- A malformed chain link is a verdict, not an exception. (#4055, #4051, @sujeito-operator)
- A resume that clears its authority check records that it did. (#3649, @Maqbool61)
- Run attestation reaches the command line. (#4139, @Silentpartnercoding)

## Agents that died quietly

- A spawned-then-dead agent is diagnosed, not silently detached. (#4246, #4255)
- A custom qwen base URL picks an auth type; agents stop dying at zero tokens. (#4265)
- `system_addendum` now rides resume, container and sandbox spawns. (#4254)
- Agent and skill catalogs are opt-in, lockfiled and tamper-checked. (#3973, #3975, @Chirag6722)
- OpenCode declares its capability strategy. (#4099, @KrzysiekSko)

## Volunteer workers

- A claimed task ends in a diff or a structured refusal. (#4061)
- Untrusted issue text is normalised before it becomes a prompt. (#4059)
- Claims carry duplicate detection over a durable lease store. (#3873, #4036, @madhavkbinoy)
- An unreadable manifest refuses; "absent" and "unstattable" differ. (#4058, #4066, @sujeito-operator)

## The same commit, the same verdict

- Hypothesis and Schemathesis smoke profiles are derandomised. (#4105, #4108, #4125, @vaibhav8a; #4116, @Chirag6722)
- Memory-heavy test files run serially instead of OOMing. (#4121, @Phoenix1504e)
- Bundle and typecheck-ts gates report on a queued ref and can be required. (#4069, #4081, @sujeito-operator)

## Also

- Task reads are tenant-scoped, and sub-router routes are scope-checked again. (#4161, #4163, #4023; #4171, @Phoenix1504e)
- More path checks route through the containment helper. (#4095, #4101, @vaibhav8a; #4136, @Louis20060723)
- `eval list` emits run paths unwrapped, so they pipe. (#4114, @Fezaru)
- TUI pane columns scroll. (#4090, @sahilmathur254)
- READMEs in 23 languages. (#4094, #4172)

## Upgrading

Upgrade in place. `PostgresTaskStore.list_tasks()` now returns a bounded page
when given no `limit`; callers reading whole tables must page through
`offset`. (#4169, #4240)

## Contributors

@Chirag6722 · @sujeito-operator · @vaibhav8a · @Phoenix1504e · @Louis20060723 ·
@madhavkbinoy · @timsurrealedu · @Silentpartnercoding · @KrzysiekSko ·
@Maqbool61 · @sahilmathur254 · @Fezaru — and Renovate and Dependabot, still awake.

---

## What's Changed
* fix(cli): an unreadable volunteer manifest is a refusal, not a traceback by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4058
* feat(security): record whether the chain-continuity check actually ran by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4051
* feat(volunteer): normalize untrusted issue text before it becomes a prompt by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4059
* fix(scripts): gen_agents_md steps aside when agents-md sync owns AGENTS.md by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4062
* fix(security): a malformed chain link is a verdict, not an exception by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4055
* feat(volunteer): run a claimed task from clone to diff or structured refusal by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4060
* fix(volunteer): "absent" and "unstattable" are different answers by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4066
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4067
* feat(volunteer): enforce allowed_paths, re-run gates, and sign the receipt by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4061
* ci: the bundle gate reports on a queued ref, so it can be required by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4069
* chore(ci): ratchet coverage baseline up to 83.83% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4071
* chore(deps): bump websockets from 16.1.1 to 17.0.1 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4075
* fix(security): refuse wrong-typed bundle fields in verify_result_bundle (#4057) by @timsurrealedu in https://github.com/sipyourdrink-ltd/bernstein/pull/4070
* chore(ci): ratchet coverage baseline up to 83.84% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4082
* ci: typecheck-ts reports on a queued ref, so it can be required by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4081
* fix(security): refuse wrong-typed predicate in verify_result_bundle (#4072) by @timsurrealedu in https://github.com/sipyourdrink-ltd/bernstein/pull/4076
* fix(security): resolve task-scope matchers through the include_router wrappers by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4080
* chore(ci): raise diff-coverage floor to 87% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4083
* chore(deps): bump openai-agents from 0.13.6 to 0.19.4 in the python-minor-and-patch group by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4086
* fix(release): the bump commits every manifest it regenerates by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4089
* fix(tui): make pane columns scrollable by @sahilmathur254 in https://github.com/sipyourdrink-ltd/bernstein/pull/4090
* test: stop git housekeeping racing the zero-write assertions by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4093
* chore(deps): update dependency platformdirs to v4.11.2 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4100
* fix(ci): the ratchet guard reads the baseline on the branch the PR targets by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4110
* docs(reference): add a receipt reference page, shrink the FEATURE_MATRIX row, add a flag-drift guard by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4115
* test: derive the runbook section boundary from its own heading by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4117
* fix(contract): derandomize the smoke-profile Schemathesis sweep so PR and merge-queue gates stop giving different verdicts on the same commit by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4105
* chore(deps): update python:3.13-slim docker digest to ffb752e by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4103
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4107
* feat(orchestration): add rendering source fetcher for research modality (#3120) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4084
* fix(deps): declare the modal x otel protobuf conflict so uv dependency updates stop aborting outright by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4104
* fix(cli): receipt verify refuses malformed bundles instead of raising by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4111
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4132
* chore(deps): update dependency charset-normalizer to v3.5.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4137
* fix(cli): eval list emits run paths unwrapped so they can be piped by @Fezaru in https://github.com/sipyourdrink-ltd/bernstein/pull/4114
* fix(adapters): stop passing an unsupported flag to codex exec by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4140
* fix(agents): honour an explicitly configured role CLI at spawn by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4141
* fix(orchestration): route stdin-overflow prompt filename through the containment helper by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4136
* docs(infrastructure): add MkDocs Material EOL coupling analysis and trigger matrix by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4113
* fix(ci): run memory-heavy test files serially to avoid OOM by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4121
* ci(docs): weekly report of transitive pins a fresh resolve would move by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4098
* fix(eval,tasks,plugins,security): route eval/tasks/plugins path checks through contained_subpath; document always_allow's non-conversion by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4101
* fix(tests): drive determinism regression test with settings the smoke lane actually applies by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4125
* chore(deps): update helm release redis to v28 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4138
* fix(property): derandomize the smoke Hypothesis profile so property-tests stops giving different verdicts on the same commit by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4108
* fix(tests): derandomize Hypothesis property tests across unit-tests lane (#4116) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4128
* fix(orchestration): route the three remaining pid-file and approvals checks through the containment helper by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4095
* feat(canary): re-derive last_green.json from the receipts it projects by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4097
* feat(tasks): wire AgentCheckpoint production writer into park_task (#4043) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4122
* feat(adapters): bridge catalog-installed skills into worktree injection and CatalogAgent into --agents (#3974) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4123
* feat(agents): record catalog lockfile and detect content digest tampering (#3973) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4124
* docs: reset staleness clock for curated context files (#4079) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4129
* feat(volunteer): claim etiquette and duplicate detection without a coordinator (#3873) by @madhavkbinoy in https://github.com/sipyourdrink-ltd/bernstein/pull/4130
* docs: fence Cloud/Cloudflare section as Preview (reland #4120) by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4159
* feat(agents): add opt-in discovery of harness-local agent and skill resources (#3975) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4126
* fix: declare OpenCode capability strategy by @KrzysiekSko in https://github.com/sipyourdrink-ltd/bernstein/pull/4099
* fix(status): scope health check task count to caller tenant by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4161
* feat(mcp): advertise repo and build provenance in capability card by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4166
* fix(escalation): produce terminal receipt on missing or empty run journal by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4168
* fix(tests): resolve conflicting Hypothesis "deep" profile registrations by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4187
* feat(volunteer): durable lease store for hub task claims (#4036) by @madhavkbinoy in https://github.com/sipyourdrink-ltd/bernstein/pull/4190
* docs: add the Russian README by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4094
* fix(webhooks): thread tenant_id through ci-fix retry counters by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4171
* feat(knowledge): wire review corrections into file_lesson convention receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4170
* chore(deps): update github/codeql-action digest to ff2f1c6 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4186
* feat(memory): bind compaction results to a pre-compaction content hash by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4189
* feat(suspension): suspend-side grant population + journal continuation (#3649) by @Maqbool61 in https://github.com/sipyourdrink-ltd/bernstein/pull/4131
* test: add journal verifier to mutation gate at 72.5% kill rate by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4194
* feat(storage): export soc2 evidence pack to configured sink by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4162
* feat(webui): record and gate colour token contrast measurements by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4164
* fix(scripts): select test files from positional paths in run_tests by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4195
* docs(adapters): fix internal-scheduler LLM description drift by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4198
* chore(ci): ratchet coverage baseline up to 83.91% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4199
* feat(persistence): add limit and offset to PostgresTaskStore list_tasks by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4169
* feat(tasks): add typed task-completion record schema, validation, and canonical serialization (#4185) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4192
* fix(mailbox): record consumption and surface silent render failures by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4193
* feat(tasks): enforce well-founded bounded recursive task decomposition (#4179) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4196
* feat(communication): turn MAX_PENDING_PER_TASK into a draining backlog bound (#4152) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4197
* chore(ci): ratchet coverage baseline up to 83.92% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4207
* fix(workspace): scope workspace_merge_order task read to caller tenant by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4163
* ci(soc2): wire weekly evidence pack export step to sink by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4165
* feat(core): add count_tasks method to TaskStore and PostgresTaskStore (#4158) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4191
* feat(quality): record and bind coverage for absence claims by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4188
* docs: add 16 README translations (wave 2) by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4172
* chore(deps): update dependency platformdirs to v4.11.3 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4218
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4220
* chore(deps): update dependency astral-sh/uv to v0.12.4 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4216
* feat(cli): reach the run attestation projection from the command line by @Silentpartnercoding in https://github.com/sipyourdrink-ltd/bernstein/pull/4139
* fix(mailbox): derive since_seq cursor from consumption records by @Phoenix1504e in https://github.com/sipyourdrink-ltd/bernstein/pull/4215
* fix(git): exclude injected scheduled_tasks.json from worktree tracking by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4227
* fix(agent_lifecycle): re-evaluate deferred death judgments after reap by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4231
* fix(orchestration): regenerate summary.json at shutdown by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4232
* fix(adapters): gate PYTHONPATH injection behind opt-in flag by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4233
* fix(evolve): refuse upgrade-proposal auto-spawn with no terminal task by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4229
* fix(adapters): normalize adapter name casing in admission receipt filename path (#4224) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4234
* fix(verify): let automation gate on receipt provenance tier by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4239
* docs(cli): add unified verification exit-code reference table and tests (#4206) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4241
* fix(replay): make journal verify seal-aware for identity verdicts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4244
* fix(audit): make verify read-only and separate post-seal appends from a rewritten prefix by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4245
* fix(cli): diagnose a spawned-then-dead agent instead of detaching silently by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4246
* fix(persistence): bound PostgresTaskStore.list_tasks() by default by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4240
* fix(cli): thread resolved model to plan-approval panel and cost estimation (#4214) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4235
* feat(replay): derive a run's read-path set from its journal (#4180) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4219
* fix(cli): print overall summary panel last in audit verify (#4202) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4250
* fix(tasks): propagate failure to dependents and derive an unreachable set by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4243
* test(orchestrator): assert overlap not elapsed time in parallel-verify test by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4251
* fix(security): settle subject's type in verify_result_bundle by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4252
* fix(cli): diagnose a spawned-then-dead agent on the remaining run surfaces by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4255
* fix(agents): carry system_addendum on every resume, container, and sandbox spawn by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4254
* fix(planning): materialise a DAG node whose every inbound edge skipped by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4253
* fix(tasks): propagate a cascade cancel to dependents outside the subtree by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4258
* chore(ci): ratchet coverage baseline up to 84.01% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4263
* fix(adapters): select the openai auth type for a custom qwen base URL by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4265
* release: v3.17.0 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4267

## New Contributors
* @timsurrealedu made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4070
* @sahilmathur254 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4090
* @Fezaru made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4114
* @madhavkbinoy made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4130

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.16.0...v3.17.0

