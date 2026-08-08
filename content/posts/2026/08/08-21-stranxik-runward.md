---
title: runward gate
date: 2026-08-08 21:56:39 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.33.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Purpose:** Runward is an open-source delivery methodology that verifies the engineering decisions behind AI-written code, ensuring that critical aspects like architecture and security are properly documented and implemented.
  
  **Problem Solved:** It helps in automating and ensuring that the engineering process follows best practices by verifying that the decisions made during coding align with predefined standards.
  
  **Key Capabilities:** Runward provides a deterministic verification mechanism for AI-generated code, ensuring that the decisions behind it are clear and verifiable.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.33.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Purpose:** Runward is an open-source delivery methodology that verifies the engineering decisions behind AI-written code, ensuring that critical aspects like architecture and security are properly documented and implemented.

**Problem Solved:** It helps in automating and ensuring that the engineering process follows best practices by verifying that the decisions made during coding align with predefined standards.

**Key Capabilities:** Runward provides a deterministic verification mechanism for AI-generated code, ensuring that the decisions behind it are clear and verifiable.

## What's Changed

**No verdict changes.** Four places where the output claimed more than it established, or less than it knew.

All four came out of an investigation into whether runward should issue an attestation that an application was built with it. The answer to that was **no** — and the reasons produced this release.

## The machine surface was quieter than the terminal

`check --strict --json` carried no counters, no corpus status, no seal. An agent driving on `--json` — which is how this tool is meant to be consumed, and how a CI reads it **blind** — could not tell a mission carrying real evidence from one answering `n/a` to every row. Both said `verdict: "clean"`.

That inverts ADR-0045's own finding one layer out: *the worst case must not be the quietest.*

| | reference mission | same mission, every row `n/a` |
|---|---|---|
| before | `verdict: clean` | `verdict: clean` — **identical object** |
| after | `applied 23 · na 13 · typed 20` | `applied 11 · na 25 · typed 8` |

Additive per ADR-0030: `evidence`, `corpus`, `seal`, `criticalScope`, `gateNonScope`, under `--strict` only. **`gateNonScope` travels with the counters on purpose** — a consumer that keeps the numbers and drops the caveat is the next entry.

## The declared non-scope shipped in one pack out of four

Present in the ISO/IEC 42001 draft. **Absent** from the NIST AI RMF draft, the EU AI Act draft, and the OSCAL component-definition — the artifact that leaves for a third-party GRC tool was the one carrying no reservation.

The prose around a pack does not travel with it. **A caveat that stays home was not made.** All four carry it now, the OSCAL one in its metadata `remarks` so it survives ingestion.

## The gate demands 31 of the 45 CRITICAL/HIGH rules

The conformance section printed *"Architect: 6 rule(s) accounted for … Govern: 12"* and stopped, which reads as though the critical set were covered. It is not: **14 rules are mapped to no gated phase and are never asked about, five of them CRITICAL**, including `checklist-pre-production-security` and `checklist-pre-production-resilience`.

Reported, never gated. A rule with `phases: []` is documentation the operator may apply without the gate asking, and gating it would red every honest mission on day one. Leaving it unsaid was the defect: it let a reader believe a sentence the output never supported.

```
scope: 31 of 45 CRITICAL/HIGH rules are mapped to a gated phase.
       The other 14 are never demanded by this gate: …
```

## The seal date is declared, not observed

`runward/evidence-lock.json` carries `sealedAt`, and nothing signs the lock. Editing the field by hand yields `✓ seal intact — sealed 1999-12-31` with exit 0.

**Nothing changes for an honest user** — `check --freeze` writes the real date, as it always did — and nothing here is repairable: an unsigned file inside the audited repository cannot testify about itself. What the seal proves is unchanged: the cited files still hash to what they hashed when it was written. The printed line now says the *when* is the mission's word.

Recorded as RWD-2026-0022 and RWD-2026-0023, under a register section that says plainly these are **properties of where the data lives, not bugs awaiting a patch**.

## Method note

Every guard added here was checked **by removing the fix**: drop `gateNonScope` from the payload, remove the reservation from the drafts, stop computing `criticalScope` — each one reds. A guard nobody tried to break is a guard nobody has tested.

**Full changelog**: https://github.com/stranxik/runward/blob/main/CHANGELOG.md

