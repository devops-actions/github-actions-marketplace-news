---
title: Agent Security Harness
date: 2026-06-10 07:02:35 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## What's Changed

## What's in this release

The most credible thing a security tool can publish is the list of attacks it scored wrong. This release is that list — and the fixes.

### We red-teamed our own verdict logic (VS-R03)

A *verdict* is the harness's claim that an attack was blocked or that it landed. When a verdict trusts a signal the attacker controls, a successful attack can score "blocked" — the worst failure mode a security tool has, because it manufactures false assurance.

We ran an adversarial sweep against our own verdict code: independent finders proposed failures, then a separate skeptic layer tried to refute each one. 18 candidate false-negatives surfaced; **16 were confirmed and fixed**, and **2 were refuted** by the skeptic layer — the plausible-but-wrong findings a single pass would have shipped.

The structural class, named so you can check your own harness: **a verdict that reads attacker- or server-controlled signal — an HTTP status, a response substring, an internal `_status`/`_error` sentinel, a directory mode — as proof of defense.** Fixes span MCP transport trust boundaries, L402 liveness gating (~25 call sites), A2A substring oracles, x402 `payTo` binding and attestation liveness, and MCP supply-chain script-reference / auto-run / world-writable checks. Every fix ships with a regression test that drives the pre-fix behavior and asserts the corrected verdict.

### New coverage

- **MCP supply-chain / framework-layer pre-flight (MCP-F)** — a new `mcp_supplychain` module probes the install-time surface: explicit-path launchers, filesystem-mutating install scripts, world-writable binaries, version-suffix resolution, unpinned specs. This is the layer the Miasma-class npm worms exploited — one rung below the protocol.
- **x402 merchant settlement scaffold (VS-R02)** — a synthetic merchant + facilitator for exercising settlement-time verdicts without a live endpoint, with thread-race-guarded nonce dedup.

### CI hardening — guard the evidence producer

A harness whose verdict code throws on a live path produces no evidence at all. Two structural guards landed:

- **ruff F821 undefined-name gate.** `py_compile` cannot catch a name used but never bound; F821 can. The gate immediately surfaced **2 pre-existing NameErrors** on live paths CI never exercised.
- **Version-consistency guard.** The CLI had been reporting a stale hardcoded version; it now derives from `pyproject.toml`, with a regression test that blocks re-introduction.

### Posture

The roadmap is reframed from a commercial go-to-market to a research / standards posture: the harness is positioned as a citable reference, not a product.

## What this is

474 security tests across 33 modules — MCP / A2A / x402 / L402 plus the new supply-chain layer — AIUC-1 pre-cert, NIST AI 800-2 aligned, every finding graded by evidence class so an admission-time observation never reads as an enforcement guarantee.

**The number that matters in this release isn't 474 tests. It's 16 verdicts that used to call a successful attack a "block" — and no longer do.**

## What's not in this release

- No breaking API changes — the CLI surface and `agent-security test` invocations are unchanged.
- No new compliance crosswalks — Article/control mappings are unchanged.

## Why now

A security tool earns trust by surviving its own adversary, in public. VS-R03 is the harness turned on itself; this release ships the results instead of filing them.

---

