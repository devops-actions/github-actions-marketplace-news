---
title: Agent-Argus Code Audit & Release Gate
date: 2026-08-29 22:10:38 +00:00
tags:
  - Inan15
  - GitHub Actions
draft: false
repo: https://github.com/Inan15/Agent-Argus
marketplace: https://github.com/marketplace/actions/agent-argus-code-audit-release-gate
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Agent-Argus (`argus-agent`) automates security audits of code repositories by identifying and blocking test cases that assert nothing or do not call functions. It helps prevent incorrect assumptions in tests and ensures that code is thoroughly tested before deployment, preventing potential issues and vulnerabilities.
---


Version updated for **https://github.com/Inan15/Agent-Argus** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-argus-code-audit-release-gate) to find the latest changes.

## Action Summary

Agent-Argus (`argus-agent`) automates security audits of code repositories by identifying and blocking test cases that assert nothing or do not call functions. It helps prevent incorrect assumptions in tests and ensures that code is thoroughly tested before deployment, preventing potential issues and vulnerabilities.

## What's Changed

Source distribution and wheel for `argus-agent` v1.0.0.

Install directly from this repository at this tag:

    pip install "argus-agent @ git+https://github.com/Inan15/Agent-Argus.git@v1.0.0"

Repository visibility, MEASURED 2026-08-29 by `gh repo view Inan15/Agent-Argus --json visibility,isPrivate` -> `PUBLIC` / `isPrivate: false`. What that buys a consumer, stated plainly: the pinned install resolves for anybody with no credential, and the GitHub Release and its attached packages are publicly downloadable. This SUPERSEDES the 2026-08-15 measurement, which read `PRIVATE` / `isPrivate: true` and said the pinned install cannot resolve for anybody — tag or no tag — without a read credential carried in the URL (`git+https://<credential>@github.com/...`) — accurate on its date, never re-run for fourteen days, and false for an unknown part of them. That is the whole hazard of this sentence: it is a dated measurement, not a standing claim, and re-running the command above before relying on it is the only thing that keeps it true.

The exit-code wire contract is UNCHANGED by this release: 0=RELEASE_READY, 1=no verdict produced, 2=NOT_READY_FOR_RELEASE, 3=INSUFFICIENT_COVERAGE. Exit 1 is reserved and is never a verdict — a run that produced no verdict made no statement about your code. See CHANGELOG.md for the full consumer contract.

CI evidence: run 33235322979 (ac1265e6ffabe0a6cb3b7633dc3107bd3556b274, 3/3 legs green) on `audit-ci.yml` covers the commit being released. Observed 2026-08-29 through the GitHub API.

SCOPE of that run, because a green run is evidence for what it EXECUTED and this one did not execute everything it carries. Each leg reported `1777 passed, 4 skipped`. The run recorded the following as NOT EVALUATED rather than as passing, so the citation above does not reach them: (1) `tests/test_installed_artifact.py` (`TC-ArgusAgent-RELEASE-001-25`..`-28`) — the fresh-environment installed-artifact proof: every `[project.scripts]` console script, `argus --help`, a fixture audit run to a real verdict, and an MCP JSON-RPC exchange over stdio through the installed `argus-mcp` shim. All four SKIPPED on all three legs, each reporting the named E6 outcome *NOT EVALUATED — uv is not on PATH, so the wheel could NOT be installed into a fresh environment and nothing about the INSTALLED distribution was checked*. So the front-door claim of this release is held by LOCAL runs only, and this citation does not cover it. Provisioning `uv` on the CI runner is a tooling decision that has not been taken; it is filed OPEN and unscheduled as `DF-12-9-B`, owned by the Engineering Lead. Reading the citation as covering these would be the same class of overstatement as quoting a run id without the sha it covers.

This release makes no assurance claim about Argus itself. Argus's dogfood run is a self-audit and is not independent corroboration.

Beta: Argus's finding precision has not been independently validated. Its findings rest on the Argus dogfood corpus, a self-audit of this repository. Treat findings as a prompt to look, not a verdict. This notice is removed only when the >=80% precision gate is met; nothing else removes it.
