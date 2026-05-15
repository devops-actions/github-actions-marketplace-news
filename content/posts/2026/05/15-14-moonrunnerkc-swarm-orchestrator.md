---
title: Falsifying Swarm Orchestrator
date: 2026-05-15 14:58:53 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v9.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v9.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

Swarm Orchestrator is a GitHub Action and CLI tool designed to automate the validation of code changes through a structured checklist called a "contract." It ensures that proposed patches meet predefined requirements by running checks, verifying changes from various sources (e.g., files, queues, or models), and logging the results for traceability. This action is particularly useful for automating code quality control, adding an extra layer of verification for AI-generated or external changes, and serving as a CI gate to enforce compliance with required checks.

## What's Changed

## v9.0.0 — v6 verified-branch pipeline removed

v8 (contract-first, falsification-gated) is now the only supported execution path. The legacy v6 verified-branch pipeline that wrapped third-party coding-agent CLIs has been removed in full.

## By the numbers

- **`src/` LOC:** 56,069 → **18,586** (-67%)
- **Tests:** **908 passing**, 4 pending
- **Phases:** 32 commits land here as Phase 0 → Phase 6 (WG1–WG8)

## What's removed

- The v6 pipeline files: `swarm-orchestrator.ts`, `plan-generator.ts`, `session-executor.ts`, `share-parser.ts`, `repair-agent.ts`, `verifier-engine.ts`, `pr-manager.ts`, `pm-agent.ts`, `branch-merger.ts`.
- The supporting subsystems: `src/orchestrator/`, `src/verifier/`, `src/adapters/`, `src/quality-gates/`, and the battery layer of `src/verification/` (battery-runner, differential-gate, mutation-gate, cheat-detector, composite-score, attestation, test-synthesizer, property-gate, ast-imports/signature, semgrep-normalizer, post-merge, command-runner, and helpers).
- 40+ v6 support modules (agents-exporter, baseline-scanner, bootstrap-*, commit-*, context-broker, copilot-cli-wrapper, copilot-transient-retry, cost-estimator, deployment-*, external-tool-manager, gate-*, github-*, hook-generator, knowledge-base, meta-analyzer, metrics-*, multi-repo-coordinator, owasp-*, post-run-reporter, pr-automation, prompt-builder, quick-fix-mode, recipe-loader, report-*, requirement-filter, sarif-formatter, secret-redactor, step-runner, task-classifier, test-command-discovery, text-similarity, tier-maps, url-shortener, wave-*, worktree-*, presenter/, share/, scheduling/, rules/).
- Nine v6 CLI handlers in `src/cli/` (swarm-handlers, status-handlers, plan-handlers, demo-handlers, live-status, misc-handlers, share-handlers, usage, attest-handlers) and the `--v6` dispatch branch in `src/cli.ts`.
- The v6 test corpus (one test file per deleted module).

## Breaking change

The `--v6` flag is gone (deprecation-warned in `8.0.4`). Consumers who still depend on the v6 pipeline must **pin to the latest `8.0.x` release**. The same goal can typically be expressed as an obligation under `v8 compile` / `v8 run`.

## Rationale

The v6 pipeline has been opt-in since `8.0.0` and deprecation-warned since `8.0.4`. Carrying both pipelines duplicated the adapter surface, the quality-gate engine, and the verification layer. The `cleanup-boundary` / `loc-budget` CI gate has held the v6↔v8 import boundary clean since `8.0.4`, making the deletion mechanical rather than architectural.

## What stays

- `src/contract/` — contract compilation, validation, serialization, approval
- `src/contract/extractor/` — deterministic / local / anthropic extractor providers
- `src/session/` — pluggable session providers that produce patches against the contract
- `src/falsification/` — CliFalsifier + Codex/Copilot/Claude Code profiles, scheduler, dispatcher
- `src/verification/` — per-obligation verifier, streaming verifier, pre-generation check, predicate runner, AST signature/imports checks, live cost tracker
- `src/population/` — tournament-based population manager
- `src/persona/`, `src/inference/`, `src/ledger/`, `src/wasm/`

See [`CHANGELOG.md`](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v9.0.0/CHANGELOG.md#900---2026-05-14) for the full entry.

