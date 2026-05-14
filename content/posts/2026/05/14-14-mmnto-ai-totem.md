---
title: Totem Shield
date: 2026-05-14 14:37:18 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/pack-rust-architecture1.38.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/pack-rust-architecture@1.38.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool designed to provide a persistent memory and enforcement layer for AI coding agents, addressing the issue of architectural mistakes and repeated errors caused by the stateless nature of AI. It automates the process of capturing lessons from past mistakes, turning them into enforceable rules that prevent recurrent issues during code development and review. By operating offline and independently of large language models (LLMs), Totem enhances workflow reliability and ensures consistency in project architecture.

## What's Changed

### Minor Changes

-   923deb0: feat(doctor): add `--strict` mode + pre-push hook integration + CI workflow template (#1908)

    Implements Proposal 273 § 7 routing matrix rows 5+6 (Repo + Auto + Both) for the first repo-state diagnostic (`checkAgentsMdCanonical`, shipped in #1907).

    -   `totem doctor --strict` now exits non-zero when any check reports `fail` (`warn` results remain informational). Default behavior unchanged.
    -   Pre-push hook injects `totem doctor --strict` inside the existing strict-tier guard (`is_agent=1` or `TOTEM_HOOK_TIER=strict`), mirroring the `totem review` shield gate. Standard-tier humans bypass; agents and explicit strict-tier operators get the gate.
    -   New `.github/workflows/totem-doctor.yml` template runs `doctor --strict` on PR + push to main. Cohort repos can copy or reference.

    Exit-code decision lives at the CLI edge — `doctorCommand` returns `DiagnosticResult[]` and does not touch `process.exit` / `process.exitCode`.

    **Calibration fix bundled.** `checkEmbeddingConfig` previously reported `fail` when the configured embedder's env key (`OPENAI_API_KEY` / `GEMINI_API_KEY` / `GOOGLE_API_KEY`) was missing. That misclassified an operator-setup state as a repo defect — empirically surfaced when `totem doctor --strict` ran in CI on this PR (CI intentionally lacks the keys). Both branches now return `warn`, mirroring `checkOllama`'s warn-on-unreachable pattern. The repo's config is correct; the local environment is incomplete.

