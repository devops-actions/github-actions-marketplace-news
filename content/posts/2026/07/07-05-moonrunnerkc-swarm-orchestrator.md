---
title: Falsifying Swarm Orchestrator
date: 2026-07-07 05:17:34 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v12.1.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v12.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## What's Changed

## v12.1.0: autonomous-merge trust layer (built, not yet lit)

This release adds the two-sided merge-trust layer and its evidence and
measurement machinery on top of the v12.0.0 proof tier. It is additive and
backward-compatible: no public API was removed, no existing flag changed
behavior. Nothing auto-merges yet. The honest state is a gate that is built,
measured, and deliberately dark until the numbers earn it.

### Positive merge-safety gate (Phase 1)

`swarm audit --pr <ref> --merge-gate` provisions the merged tree and runs a
positive gate over the existing `verifyObligation` path (build, test, declared
obligations, and a falsifier control when adapters are configured), then composes
a two-sided verdict: `AUTO-MERGE` only when the negative cheat gate is clean AND
the positive gate is all-green with no null controls AND the PR is on an
execution-groundable language. Everything else routes to `HUMAN` with a recorded
reason. Fail-closed by construction: a control that could not run is
`unavailable` (not proven), never a pass. The flag surfaces the verdict; it does
not itself merge and does not change the audit exit code.

### pytest and Go execution-grounded runners (Phase 2)

The execution-grounded sandbox now recognizes pytest and Go behind the
`TestRunner` seam. Re-measured EG-viability over the 197-PR outcome-labeled
corpus went from 12/197 to **78/197** (12 Node, 52 Python, 14 Go). The runners
are proven end to end on committed fixtures and real `python3 -m pytest` /
`go test` runs. Honest boundary: screen-viable is not yet proof-tier
provisionable. The sandbox dependency-install path is still Node package
managers only, so the 66 new pytest/Go PRs are recognized but not yet
provisioned; `provisionableCount` (12) is recorded distinctly from `viableCount`
(78).

### Evidence packs (Phase 3)

`swarm audit --pr <ref> --evidence-pack <dir>` writes a self-contained,
re-verifiable directory: two AIBOMs (CycloneDX 1.6 ML-BOM, SPDX 3.0 AI-Profile),
the raw execution-grounded evidence content-addressed by sha256, a `MANIFEST.json`
integrity index, and the per-run ledger. The AIBOMs are replay-identical: a
version-5 serialNumber derived from the run inputs and a `SOURCE_DATE_EPOCH`
-honoring timestamp (no fabricated wall-clock), so two audits of the same PR head
produce byte-identical attestations. The new `pr-audit-work-verified` ledger kind
records the positive-gate verdict. Honest boundary: the run ledger has real
timestamps and a random runId, so it is not claimed as reproducible and is
excluded from the MANIFEST; its integrity is its own hash chain and its sha is
pinned in a `run-record.json` sidecar. Cryptographic signing (DSSE, in-toto,
sigstore) is flagged as an out-of-scope follow-on: the pack is integrity-pinned
but not signed.

### Corroborated-gate measurement loop (Phase 4)

The corroborated structural gate (a structural cheat finding backed by a
surviving mutant, coverage gap, or still-failing repro on the same line) now has
a readiness measurement over real merged-PR outcomes. It lights up only when the
Wilson-95 lower bound of its precision clears 0.90 with at least 5 true
positives, and is fail-closed on undefined n: a slice with no outcome-bad PR has
no positive class and can never be reported ready. Measured result on the current
corpus: **undefined-n**. The 12 provisionable PRs are all outcome-clean, and the
8 outcome-bad EG-viable PRs are all pytest (no install path yet), so the gate
stays advisory. A CI guard recomputes the artifact and refuses any `ready`
verdict on undefined n or below the floor.

### Baseline and honesty gates (Phase 0)

The v12 ground truth (oracle recall 301/325, real-corpus precision 0.217 with a
Wilson lower bound of 0.097, EG-viable 78/197) is frozen as code constants with a
committed reference mirror, and a CI guard fails any change that regresses a floor
or hand-edits the floors out of step with the constants.

### Verification

- Full suite 2064 passing, 0 failing.
- Four CI policy guards hold: baseline, promotions (gate-eligible 0), block
  eligibility (block-eligible 8), corroborated-gate (undefined-n).
- No breaking changes since v12.0.0.

**Full changelog:** https://github.com/moonrunnerkc/swarm-orchestrator/compare/v12.0.0...v12.1.0

