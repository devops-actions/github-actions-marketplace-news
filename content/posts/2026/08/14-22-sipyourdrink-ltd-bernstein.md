---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-14 22:24:47 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.15.1
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is an open-source CLI orchestration tool that runs multiple language models (Claude Code, Codex, Gemini CLI) in parallel. It automates the process of coordinating and monitoring these agents to ensure reproducible and traceable results. The key capabilities include:
  
  1. **Deterministic Orchestrator**: Runs multiple LLMs in parallel without using an external LLM for coordination, ensuring that each run can be reproduced exactly.
  2. **Replayability**: After a run, users can replay the same plan to reproduce the exact task graph and results.
  3. **Monitoring and Control**: Continuously monitors the performance of the agents and allows for easy control over which tasks are executed next or which ones should be skipped.
  
  Bernstein supports a wide range of LLMs and provides an air-gap install profile, making it suitable for environments with restricted internet access. It is released under the Apache-2.0 license and can be used to streamline the development process by automating the execution and monitoring of multiple language models in parallel.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.15.1**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is an open-source CLI orchestration tool that runs multiple language models (Claude Code, Codex, Gemini CLI) in parallel. It automates the process of coordinating and monitoring these agents to ensure reproducible and traceable results. The key capabilities include:

1. **Deterministic Orchestrator**: Runs multiple LLMs in parallel without using an external LLM for coordination, ensuring that each run can be reproduced exactly.
2. **Replayability**: After a run, users can replay the same plan to reproduce the exact task graph and results.
3. **Monitoring and Control**: Continuously monitors the performance of the agents and allows for easy control over which tasks are executed next or which ones should be skipped.

Bernstein supports a wide range of LLMs and provides an air-gap install profile, making it suitable for environments with restricted internet access. It is released under the Apache-2.0 license and can be used to streamline the development process by automating the execution and monitoring of multiple language models in parallel.

## What's Changed

# v3.15.1

v3.15.0 closed a trust boundary. This release went back to see how far that fix
reached. Not far enough.

## Tenant scoping

#3799 narrowed the task routes and listed a second set of readers it
deliberately left alone. That set got asked directly: a server with two tenants,
all five kinds of credential. Twelve of thirteen handed over another tenant's
task ids and titles. The thirteenth never touches the task table, so it is
closed with evidence instead of a patch.

The twelve now derive their tenant from authenticated state (#3808). So does the
budget forecast, where one tenant's spending moved another tenant's exhaustion
date. Found and fixed by @BinarySpecter (#3809).

## Credentials

An agent token authenticated, and then nothing else was asked of it (#3797). It
reached log reads, stream reads and session-kill routes it held no permission
for. Review of that patch found the cluster secret doing the same. Both closed
in one change. Same shape in gRPC (#3537), attachment access (#3567) and tenant
directories (#3693).

## Behaviour changes

- `auth_type="oauth"` fails at construction (#3463). Documented, implemented
  nowhere, refused every request. Move to `"bearer"` or `"none"`.
- Cost rows with no tenant are excluded from tenant-scoped queries (#3702).
- Disclosure defaults match the published policy (#3694).
- Rawhide no longer holds the RPM channel red while every released chroot ships
  (#3791).

## Upgrading

Upgrade in place. On a multi-tenant install the operator views now answer for one
tenant: dashboards, recap, observability, exports, `/badge.json`, the budget
forecast. A fleet-wide number will drop. Single-tenant sees no change.

Two security advisories are published alongside this release.

---

## What's Changed
* chore(ci): ratchet coverage baseline up to 83.5% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3789
* chore(deps): update dependency lucide-react to v1.30.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3779
* fix(rpm): keep rawhide churn from holding the release, and give it a C++ toolchain by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3791
* fix(mcp): reject undocumented auth_type values at RemoteMCPConfig construction by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3792
* fix(security): align vuln_disclosure defaults with SECURITY.md by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3793
* fix(tenanting): route path containment through the shared barrier by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3795
* fix(grpc): enforce cluster scopes and pin node identity on RegisterNode by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3796
* fix(cost): scope the daily cost-history trend by tenant by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3798
* fix(security): apply the request tenant scope on the remaining task sinks by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3799
* fix(multimodal): decide attachment worktree access from authenticated rows by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3794
* fix(security): check route permissions for every credential kind by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3797
* fix(security): narrow the dashboard and observability task readers to the caller's tenant by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3808
* fix(cost): scope the /metrics/predictions forecast by tenant (#3800) by @BinarySpecter in https://github.com/sipyourdrink-ltd/bernstein/pull/3809
* release: v3.15.1 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3804

## New Contributors
* @BinarySpecter made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3809

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.15.0...v3.15.1

