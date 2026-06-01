---
title: Falsifying Swarm Orchestrator
date: 2026-06-01 06:49:27 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v10.4.0-advisory
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v10.4.0-advisory**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

Swarm Orchestrator is a GitHub Action and CLI tool designed to audit AI-generated pull requests by analyzing their diffs, scoring them with advisory-grade cheat detectors, and providing suspicion-score comments along with compliance artifacts (e.g., CycloneDX-ML and SPDX AI-Profile). It automates the detection of potential issues in PRs and supports both advisory (non-blocking) and gate (merge-blocking) modes, addressing the need for enhanced code review and compliance with AI-related regulations. Key capabilities include advanced detection, compliance reporting, and compatibility with AI procurement standards like the EU AI Act.

## What's Changed

Detectors are now high-recall candidate generators, with two stages after them deciding what reaches a reviewer. The goal is precision without silencing detectors or losing recall.

## Measured on the 205-PR real corpus

- Advisory findings on the 195 clean PRs: **~1146 → 145 (−87%)**. Label-independent, the most reliable win.
- Deterministic path: precision 0.091, recall 0.300, F1 0.140.
- Judge gate: precision 1.000 / recall 0.000 — it refuses to block anything it cannot confirm. Trustworthy recall waits on a human-labeled corpus.

**Honest caveat:** the corpus "broken" labels are AI-generated and unverified, so block-level recall is not yet provable (the judge refuted all 10 "broken" PRs, consistent with either bad labels or missed detection). This release makes the tool a safe, low-noise advisory that will not false-block; it does not by itself prove the tool catches real cheats. The gate to that verdict is the human-labeled `labels-v2` corpus.

## Added

- Deterministic verification stage (`verify-findings.ts`): refutes a candidate when the diff itself shows it is legitimate; demotes fix-claim-gated detectors to info when no fix is claimed.
- LLM-judge confirmation gate (`confirm-findings.ts`): a block must be judge-confirmed or it drops to advisory. Off by default.
- Precision-based promotion gate with a Wilson lower bound, plus a CI freshness guard (`npm run promotions:check`).
- Per-finding confidence and a per-category cascade cap in the PR comment.
- Detector evasion-cost harness (`npm run evasion`).

## Changed

- `mock-of-hallucination` resolves internal roots from the diff, and the GitHub Actions version-ceiling finding drops from block to advisory.
- The judge caps the diff it sends to Haiku so large PRs no longer fail the call.
- Published precision numbers repinned to the v10.4 deterministic snapshot.

Full detail in [CHANGELOG.md](https://github.com/moonrunnerkc/swarm-orchestrator/blob/main/CHANGELOG.md).
