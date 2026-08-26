---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-26 22:43:18 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.18.1
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  The GitHub Action automates the orchestration of multi-agent CLI tasks, ensuring deterministic execution by leveraging a robust framework designed to manage and schedule complex workflows efficiently. It provides capabilities for building and running agent-based environments, making it ideal for developers who need to orchestrate complex workflows involving multiple independent components or agents.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.18.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

The GitHub Action automates the orchestration of multi-agent CLI tasks, ensuring deterministic execution by leveraging a robust framework designed to manage and schedule complex workflows efficiently. It provides capabilities for building and running agent-based environments, making it ideal for developers who need to orchestrate complex workflows involving multiple independent components or agents.

## What's Changed


A patch release, which is to say: the machine worked all night and somebody had to write down what it did.

## The review loop became a product

`bernstein review --pipeline --fix --until-checks-green --max-passes N` now runs the whole contour inside the CLI: wait for checks to settle, review the diff, hand the verdict and the failing logs to a fix pass, review again. A spent budget exits `needs-operator`, not an approval. Every pass emits a signed receipt binding the reviewed diff hash to the ruleset digest, and `review-receipt verify --chain` rejects a pass whose diff moved under it (#4481). Plans render deterministically and carry a SHA-256 of the rendering, so approval binds to what the reviewer saw (#3839, #4473).

## Attestation, minus the noise

An unresolved SLA breach is attested once — not once per supervisor tick, which at one tick a second had turned a single breach into thousands of identical receipts (#4579). The monitor itself now runs on every `schedule run` tick (#4538, #4583). Operator approvals and always-allow promotions land on the HMAC audit chain (#4536); pre-spawn pending approvals show up in `GET /approvals` instead of hiding (#4535); an approval PR that failed to open says so, rather than waiting forever in silence (#4582). `artifact verify` on a host with no audit key no longer mints one and calls every clean receipt TAMPERED — it names the missing key and fails honestly (#4581). A deliverable that is raw bytes can be anchored too: the `blob` artifact kind reaches every declaration surface (#4544), and SARIF findings reach the MCP schema (#4533).

## Housekeeping with a spine

Execution tasks with no completion signals and no commits are rejected instead of counted as done (#4560). Three caller-less modules under `core/tokens/` are gone, and a structural guard fails CI when the next one appears (#4525). One infrastructure flake no longer holds every merge in the repository (#4596); path-filtered workflows can't wedge a PR as permanently pending (#4557); branch-protection drift opens a marker issue instead of drifting quietly (#4558). Ticket integrations honour `Retry-After` and trip a circuit breaker on 429s (#4534). And a config-level auth opt-out that one refactor quietly broke is honoured again, with the regression tests it should have had (#4602).

## Contributors

- **Chirag Honnyal** — empty-signal task rejection (#4564) and the path-filter CI guard (#4570).
- **jm27** — the artifact contract surfaced in the spawn prompt (#4575).
- **Louis20060723** — `agents-md sync` resolves the default branch from the repository, not the checkout (#4585).

---

## What's Changed
* feat(hygiene): reject committed text files that start with a UTF-8 BOM by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4506
* feat(lineage): assemble a RunGraph pairing worktree branches with their spines by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4507
* fix(skills): refuse a plugin install that would replace another source's skill by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4510
* test(planning): pin which fields the plan-approval digest protects by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4511
* docs(release-notes): credit the contributors whose work shipped in v3.18.0 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4520
* chore(deps): update prom/prometheus docker tag to v3.14.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4519
* feat(review): run the fix-until-green contour inside review --pipeline (#4481) by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4518
* fix(quality): run the repo seed's lint gate through uv by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4547
* chore(deps): update grafana/grafana docker tag to v13.2.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4527
* fix(deps): update dependency agents to ^0.21.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4528
* chore(deps): update dependency lucide-react to v1.32.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4549
* feat(evolve): add --dry-run flag and failure-pattern draft GitHub sync by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4550
* test(skills): pin DNS-rebinding rejection for the catalog index URL by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4551
* chore(gui): rebuild the shipped SPA bundle after the lucide-react bump by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4552
* ci: finish making the SPA bundle gate required by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4556
* feat(security): opt-in host restriction for third-party-derived URLs by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4555
* feat(evidence): expose finding artifact type to MCP schema and HTTP route (#4533) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4559
* fix(approval): record human resolutions and promotions to the audit chain (#4536) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4561
* fix(janitor): resolve test_passes paths against the tree before running them by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4554
* fix(tickets): handle 429 rate limits and wire provider circuit breaker (#4534) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4566
* fix(approvals): surface pre-spawn approval-spec pendings in GET /approvals (#4535) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4565
* fix(janitor): judge signal-less tasks instead of skipping them by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4563
* fix(approval): record human approval decisions in the audit chain by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/4567
* fix(ci): surface branch protection audit failure and drift via marker issues (#4558) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4569
* fix(quality): reject execution tasks with no signals and no commits (#4560) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4564
* test(ci): guard required status checks against path-filtered PR triggers (#4557) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4570
* feat(server): reject artifact_spec combined with llm_judge at parse time (#4540) by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4572
* fix(spawn): build code context from ranked snippets under a token budget (#4524) by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4574
* fix(#4539): surface artifact contract in spawn prompt by @jm27 in https://github.com/sipyourdrink-ltd/bernstein/pull/4575
* fix(quality): name a missing mutation tool instead of reporting non-zero by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4576
* feat: implement pack field and collision guard for plugin-sourced skills by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4577
* feat: Wire SLA monitor to schedule supervisor by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4579
* refactor(server_supervisor): move httpx imports to top level, remove unused suppress import by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4580
* fix: artifact verify mints a fresh audit key on hosts without one, turning clean receipts into false TAMPERED verdicts by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4581
* feat: fix import sorting in test_approval_gate_missing_worktree.py by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4582
* feat: schedule supervisor ticking in default daemon install by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4583
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4584
* fix(agents-md): resolve default branch from the repository, not the checkout (#4578) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/4585
* fix(wrap-up): report what changed when no task completed by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4588
* fix(evolution): stop reporting upgrades as applied when nothing reads them by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4586
* chore(deps): update dependency lucide-react to v1.33.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4587
* chore: drop run scratch committed at the repo root by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4589
* feat(artifacts): blob artifact kind reaches every declaration surface by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4591
* fix(sla): attest an unresolved breach once, not once per tick by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4592
* fix(approval): surface an approval PR that could not be created by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4593
* chore(deps): update astral-sh/setup-uv action to v10 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4594
* docs(release-notes): backfill fragments for two user-visible changes by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4595
* fix(ci): stop a single infra flake from holding every merge by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4596
* fix(tokens): remove three caller-less modules and make the orphan guard correct by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4597
* feat: Create insights command and persistence module by @bernstein-orchestrator[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4598
* chore(deps): update astral-sh/setup-uv action to v10.0.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4599
* chore(ci): ratchet coverage baseline up to 84.2% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4600
* chore(ci): ratchet coverage baseline up to 84.22% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4601
* fix(auth): dispatch honours the factory-resolved opt-out again by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4602
* release: v3.18.1 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4603

## New Contributors
* @jm27 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4575

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.18.0...v3.18.1

