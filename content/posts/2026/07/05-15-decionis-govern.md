---
title: Decionis Action Gate
date: 2026-07-05 15:03:32 +00:00
tags:
  - decionis
  - GitHub Actions
draft: false
repo: https://github.com/decionis/govern
marketplace: https://github.com/marketplace/actions/decionis-action-gate
version: v1.9.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/decionis/govern** to version **v1.9.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/decionis-action-gate) to find the latest changes.

## What's Changed

## ⚡ Performance
- **Local policy engine**: the committed ```decionis rules block in DECIONIS_POLICY.md is evaluated in-process in microseconds, faithfully mirroring the platform evaluator. Deterministic allow/block verdicts act immediately; the API call becomes an async notarization off the critical path (signed dossiers, verify URLs, and badges still arrive). New `local-eval` input: `auto` (default) / `strict` (fully offline) / `off` (v1.8 behavior).
- **Speculative shadow mode**: `run` commands start immediately while the verdict resolves in the background — the gate adds ~zero latency. The step's exit code is always the command's; evaluation failures are notices. Shadow can no longer fail a build for any reason, and unconfigured gates (no secrets yet) are inert.
- Every run logs a `Decionis timing —` line so the speedups are visible.

## 🔧 Correctness
- **API outcome normalization** (`APPROVE`→`allow`, `REJECT`→`block`, `REQUIRE_REVIEW`→`review`) — enforce-mode `run` gating and `fail-on` now work against the live API vocabulary.
- New outputs: `decision-source` (`local`/`api`) and `verdict-mismatch` (local verdict vs notarizing API verdict, with a `::warning::`).
- Example policies and the installer template set explicit rule `priority` and `"domain": "*"` so committed policies actually fire.

## 🚀 Onboarding
- **install.sh** ships in the repo: `curl -fsSL https://decionis.com/govern/install.sh | sh -s -- --pr --inject` writes a shadow workflow + starter policy, injects observe-only (`continue-on-error`) gate steps into existing workflows, and opens the onboarding PR.
- Badge/verify URLs pin the policy revision: `&policy=sha256:<hash>`.

## ✅ Compatibility
All existing inputs/outputs unchanged; repos without a rules block see no decision-flow change. 143 tests, including end-to-end timing proofs against a mock API.

**Full diff**: https://github.com/decionis/govern/compare/v1.8.8...v1.9.0
