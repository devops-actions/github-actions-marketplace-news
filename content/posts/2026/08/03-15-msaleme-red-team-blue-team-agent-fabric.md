---
title: Agent Security Harness
date: 2026-08-03 15:15:59 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.13.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Agent Security Harness automates security tests to detect potential vulnerabilities in agents. It performs multiple tests across modules and provides OWASP Agentic AI coverage reports on threat scenarios and mitigation controls. The action supports various protocols like MCP, x402, and hitl, and helps identify potential issues before they can be exploited.**
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.13.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## Action Summary

**Agent Security Harness automates security tests to detect potential vulnerabilities in agents. It performs multiple tests across modules and provides OWASP Agentic AI coverage reports on threat scenarios and mitigation controls. The action supports various protocols like MCP, x402, and hitl, and helps identify potential issues before they can be exploited.**

## What's Changed

## The fix

**All eight HITL tests could report PASS against a target they never reached.**

v4.13.0 shipped a guard that treated only a transport failure (`_status == 0`) as "no answer". A **live** host that does not implement the approval or message channel answers every probe with 404 — which is not status 0, so the guard passed it through to readers that scored it as evidence.

Measured against v4.13.0:

```
v4.13.0 vs 404            -> 5 of 8 PASSED
v4.13.0 vs 401            -> 5 of 8 PASSED
v4.13.0 vs 500            -> 5 of 8 PASSED
v4.13.0 vs 200+rpc-error  -> 5 of 8 PASSED

v4.13.1 vs each of the above -> 0 of 8 PASSED
```

| Test | Wrong verdict in v4.13.0 |
|---|---|
| **HITL-001** (High) | 404/401/500 → *"25 approval requests bounded by the target"* — an endpoint that does not exist scored as a rate limit |
| **HITL-002** | 200 with no `queue_position` → counted as successful risk prioritisation |
| **HITL-003 / HITL-004** | 404 → a *fabricated finding* against a request never serviced; HTTP 403 `Access denied` matched the reversal regex and passed |
| **HITL-005…008** | 404 **and 200 + JSON-RPC error envelope** → *"refused or emitted no lure"* — an error body contains no lure |

The JSON-RPC case is the one worth pausing on: HTTP says 200 while the application layer says "method not found". That is the normal way a JSON-RPC server reports an unimplemented method, and it defeated a status-code-only guard.

**The fix:** `_serviced()` — a verdict is recorded only for a 2xx that does not carry a JSON-RPC error envelope. Everything else is INCONCLUSIVE, with the status histogram attached so the verdict is auditable. HITL-001 keeps `429` as an affirmative rate-limit signal.

### Why the suite did not catch it

The v4.13.0 regression test asserted that nothing passes against a dead target — by mocking `_status: 0`, **the same assumption the implementation made**. Test and code were two copies of one belief, so the suite stayed green while the defect was live. A non-independent oracle, in the module written specifically to stop a security test manufacturing assurance.

## Documentation accuracy sweep

- **Two DOIs belonged to other researchers.** `10.5281/zenodo.15105866` is a MALDI mass-spectrometry dataset by Ranes et al.; `10.5281/zenodo.15106553` is an e-learning article by Toshtemirov. Both were published here under this author's titles, in four files each — including a document written for a standards venue. All nine DOIs re-verified against `doi.org`; seven are genuine and retained, the two above replaced with verified records rather than re-pointed at a guessed identifier. The README carries a standing correction.
- **A guard that could not fail.** `test_test_count_consistent_in_crosswalk` matched a string `cli.py` does not contain, so its assertion was unreachable. It passed while the crosswalk said 595 and the canonical count was 603.
- **`595 tests / 43 modules` in twelve live files**, including both AIUC-1 submission documents and `CITATION.cff`. Repo-wide count guards added, with dated snapshots excluded so history is not rewritten.
- **Citation honesty.** README and ROADMAP now state that a 2026-08-02 OpenAlex audit found **30 citation edges and 0 qualifying independent citations** — every edge a self-citation.
- **Coverage report re-pinned.** The header claimed harness 4.13.1 against a commit predating it. Change history is now data-driven and records that no verdict changed and the adjudication was not redone.

## Scope

No test IDs, counts or coverage verdicts change. **603 tests across 44 modules.** OWASP Agentic v1.1 T1–T17 remains **13 direct, 4 partial, 0 not evidenced**. What changes is whether a verdict can be trusted.

Credit to Cursor Bugbot, which flagged HITL-001/002 and later the `CITATION.cff` gap in the guard written to close gaps of that kind.

**Full changelog:** https://github.com/msaleme/red-team-blue-team-agent-fabric/compare/v4.13.0...v4.13.1

