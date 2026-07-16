---
title: runward gate
date: 2026-07-16 14:45:27 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.18.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Runward is a delivery framework designed to structure agentic systems from idea to production. It automates the gating process, ensuring that agents are built and run correctly before deployment, covering six key phases of development: frame, spec kit or open spec, brownfield characterization, floor first (testing), evolution on evidence, governance from day zero, and handover. Runward helps prevent architecture failures by addressing core assumptions of classical distributed engineering and providing a structured approach to the delivery of agentic systems.
---


Version updated for **https://github.com/stranxik/runward** to version **v0.18.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

Runward is a delivery framework designed to structure agentic systems from idea to production. It automates the gating process, ensuring that agents are built and run correctly before deployment, covering six key phases of development: frame, spec kit or open spec, brownfield characterization, floor first (testing), evolution on evidence, governance from day zero, and handover. Runward helps prevent architecture failures by addressing core assumptions of classical distributed engineering and providing a structured approach to the delivery of agentic systems.

## What's Changed

A five-agent adversarial audit before public marketplace submission (security, compliance, code coherence, packagings, architecture). The verdict was sound — self-gate honestly green, no cited-not-applied, architecture faithful to its own doctrine — with two real security holes to close and some polish. All fixed.

- **Seal traversal closed (security).** The seal *writer* confined paths (v0.17), the *verifier* did not — a forged `evidence-lock.json` with a `../` or absolute key made `check --strict` read/hash a file outside the project (arbitrary-file-read oracle + DoS). The verifier now contains lock keys like the writer.
- **Command injection closed in the GitHub Action (CWE-78).** Inputs are passed through the environment (not interpolated into `run:`) and `version` is allowlisted — a malicious input can't inject shell.
- **ReDoS screen bypass closed.** A nested quantifier hidden in a character class (`([^()]+)+`) slipped past the screen and hung V8. Character classes are normalized first; `([^()]+)+` and `([a-z]+)*` are now caught, real signatures stay safe.
- **`runward rules` no longer mislabels the gated hand-over rules** (one CRITICAL) as advisory — the gated phases derive from `GATED_DELIVERABLES` now.
- **Packaging polish before submission**: 4 manifests bumped off 0.17.0; the Codex `marketplace.json` rewritten to the documented schema; the Cursor tier corrected to advisory `stop`; the `npx --yes` supply-chain posture documented with how to pin.
- **Guards**: unit tests for the seal-traversal rejection, the ReDoS screen, and a packaging version/hook check that would have caught the version drift. ADR count harmonized to 28.

Full detail: [CHANGELOG](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)

