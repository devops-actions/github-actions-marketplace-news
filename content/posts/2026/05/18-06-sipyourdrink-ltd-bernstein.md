---
title: Bernstein — Multi-Agent Orchestration
date: 2026-05-18 06:33:50 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v2.1.0
dependentsNumber: "5"
actionType: Composite
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v2.1.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic Python-based scheduler designed to orchestrate multiple CLI coding agents in parallel, ensuring tamper-evident audit trails with HMAC-signed logs and secure authentication. It automates multi-agent collaboration while maintaining compliance with regulatory requirements through features like signed agent metadata, artifact lineage tracking, and zero-trust security. This tool is ideal for teams that need to demonstrate transparency and accountability in their development workflows.

## What's Changed

I shipped v2.0.0 with a plan-routing bug that silently collapsed per-step `cli:` and `model:` pins onto the role default. v2.0.1 fixed that. v2.1.0 answers a different question: once routing works, can the system explain itself when a decision goes sideways. Most of this release is observability, calibration, and a CI loop that fixes its own breaks before a human notices.

## Lineage v2 and simulate

Lineage v1 stored task ancestry in one flat table; forked sessions and detached children made the queries expensive. Lineage v2 (#1377) is two-layer, the production recorder writes both layers, and the CI gate (#1396) accepts that output.

`bernstein simulate` (#1378) is a digital-twin runner. Feed it a plan plus a route and it executes the orchestration without the adapter network. Rehearse an expensive plan before paying for it.

## Self-healing CI

The pipeline now repairs main when a merge breaks something the autofixer can handle. #1389 added safe and heuristic autofix classes. #1393 grew that into the 26-parameter auto-heal v2. Pattern: red main, classify, fix PR, watch checks, admin-merge.

ProgramBench (#1407), a scenario generator (#1357), and a citation verifier (#1408) move three chores to eval.

## Cost, criterion profile, decision log, calibration

`bernstein simulate` only matters if you can also see what the live orchestrator decided and what it expected to spend.

- Per-task criterion profile (#1363) plus TOPSIS multi-criteria ranking (#1361). A "latency-sensitive" task routes differently from a "thorough" one.
- Structured decision log (#1360) covering every routing, retry, and gate verdict with its inputs.
- Calibration log plus Brier score (#1359). The forecast log got teeth.
- Criterion-aware retry budget (#1355), per-quota-envelope attribution (#1413), calibrated p50/p90 cost preflight band (#1335).
- The preflight cost estimator picks the most expensive role rather than the first one declared (#1395). The old behaviour underestimated by 40 to 60 percent on multi-role plans.

## Security hardening

- Invisible Unicode Tag codepoints stripped from injected skills before any prompt sees them (#1417).
- Promptware cross-agent C2 strings detected in tool output (#1421).
- MCP tool-call inputs JSON-Schema validated, deny-by-default (#1411).
- Per-tool allowlist, fail-closed policy, read-only profile (#1326).
- Constant-time HMAC compare (#1399), session_id log-injection sanitisation (#1341), Qwen and IaC adapters forward secrets via env not argv (#1390, #1392).

A `security-pentest` eval scenario (#1419) exercises it.

## Adapters and GitLab parity

`bernstein adapters check` returns a conformance and capability report (#1385). `bernstein compare` runs a side-by-side adapter A/B (#1337). GitLab integration reaches parity with the GitHub app (#1379).

## What didn't ship

- npm wrapper: NPM_TOKEN scope is wrong after the org transfer. PyPI, Homebrew, GHCR ship.
- `bernstein-scheduled-maintenance.yml` stays disabled while auto-heal v2 bakes.
- AI-BOM export (#1371), task-transcript diary (#1369), cross-cycle consensus relay (#1368), installable PWA (#1218): tracked, did not make the cut.
- A11y audit, theme toggle, mobile responsive web UI: still open from v2.0.0, see #1262.

## Upgrade

`pip install -U bernstein==2.1.0` or `uv tool upgrade bernstein`. No config migration. `TaskCountsResponse` grew two integer fields (`abandoned`, `blocked_by_abandon`) defaulting to `0`; clients keep working.

