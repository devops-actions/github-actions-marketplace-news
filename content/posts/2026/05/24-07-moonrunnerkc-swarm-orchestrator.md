---
title: Falsifying Swarm Orchestrator
date: 2026-05-24 07:08:06 +00:00
tags:
  - moonrunnerkc
  - GitHub Actions
draft: false
repo: https://github.com/moonrunnerkc/swarm-orchestrator
marketplace: https://github.com/marketplace/actions/falsifying-swarm-orchestrator
version: v10.0.0
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/moonrunnerkc/swarm-orchestrator** to version **v10.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/falsifying-swarm-orchestrator) to find the latest changes.

## Action Summary

Swarm Orchestrator is a GitHub Action and CLI tool designed to audit AI-generated pull requests (PRs) by detecting and flagging potential issues, such as test relaxation, assertion stripping, or coverage erosion, using a set of predefined cheat detectors. It automates the review process by identifying problematic patterns, blocking merges with critical findings, and optionally generating evidence logs or AI Bill of Materials (AI-BOMs). Additionally, it offers contract-driven orchestration by compiling goals, testing candidate patches, and securely logging results.

## What's Changed

## What this release adds

`swarm audit` is the new top-level subcommand: it reads a pull-request diff and runs 10 cheat-pattern detectors against it, exits 1 on any blocking finding, and writes a hash-chained audit ledger plus optional CycloneDX-ML or SPDX 3.0 AI-Profile artifacts. The same engine ships as a GitHub Action (`audit-mode: true`) so a PR refuses to merge until the audit passes.

The v8 orchestrator (extractor, session, predicate-runner, falsifier, verifier) is unchanged. v9 workflows keep working; internal type names (`Obligation`, `Contract`, `verifier`) are stable.

## Detectors (10 total)

`test-relaxation`, `mock-of-hallucination`, `assertion-strip`, `no-op-fix`, `coverage-erosion`, `fake-refactor`, `comment-only-fix`, `error-swallow`, `exception-rethrow-lost-context`, `dead-branch-insertion`. Each lives in its own file under [`src/audit/cheat-detector/`](https://github.com/moonrunnerkc/swarm-orchestrator/tree/v10.0.0/src/audit/cheat-detector); adding one is a new file plus an entry in the registry array.

## Corpus and leaderboard

500 broken patches and 500 clean controls (50 of each per category) under [`benchmarks/falsification-corpus/v10-corpus/`](https://github.com/moonrunnerkc/swarm-orchestrator/tree/v10.0.0/benchmarks/falsification-corpus/v10-corpus). `npm run leaderboard` replays the corpus and exits non-zero on any miss or false positive. Current state: 500 cases, 8 agents, 10 categories, 0 failed expectations.

## AI-BOM

`--emit-aibom cyclonedx-ml | spdx-ai | both` writes one document per format under `.swarm/aibom/`. Emitters in [`src/audit/aibom/`](https://github.com/moonrunnerkc/swarm-orchestrator/tree/v10.0.0/src/audit/aibom) produce hand-rolled JSON against CycloneDX 1.6 and SPDX 3.0 JSON-LD; no third-party AI-BOM runtime dep. Procurement mappings in [`docs/eu-ai-act-mapping.md`](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v10.0.0/docs/eu-ai-act-mapping.md) and [`docs/cisa-sbom-ai-mapping.md`](https://github.com/moonrunnerkc/swarm-orchestrator/blob/v10.0.0/docs/cisa-sbom-ai-mapping.md).

## Adoption surface

- `swarm doctor --connectors` probes GITHUB_TOKEN, pull-requests:write inference, cheat-detector load, AI-BOM dir writability.
- Claude Code slash command at `.claude/commands/swarm-audit.md`.
- Cursor rule pack at `integrations/cursor/swarm-audit.mdc`.
- Aider pre-commit hook at `integrations/aider/pre-commit-swarm-audit`.

## Robustness fixes that landed late in the cycle

- Diff fetch falls back to `pulls/N/files` (paginated) when GitHub's 300-file cap on `pulls/N/diff` trips; PRs up to 3000 files now audit cleanly.
- `.diff`/`.patch` files and `.md`/`.mdc`/`.rst` files are filtered out as data/prose before detection (no more 175 self-findings on the corpus).
- Comment-only added lines are skipped by the mock, dead-branch, and error-swallow detectors so source-file comments describing the patterns do not self-trigger.
- New `.swarm/audit-config.yaml` with `excludePaths` globs lets a project exempt its own detector tests / rule packs / generators from the audit.
- `--local-request-timeout-ms` and `--local-max-concurrency` flags now actually reach the local backend (they were parsed and dropped). New `ConcurrencyLimitedBackend` serializes calls so Ollama's per-model queue doesn't burn a candidate's timeout while it waits.
- Ollama backend sets `think: false` and falls back to `message.thinking` when `message.content` is empty, so thinking-capable models (gemma4, deepseek-r1, qwen3, gpt-oss) produce usable output.

## Verified evidence

| Gate | Result |
|---|---|
| `npm test` | 976 passing, 3 pending |
| `npm run typecheck` | clean |
| `npm run lint` | 0 errors, 0 warnings |
| `npm run leaderboard` | 500 cases, 0 failed expectations |
| `bash scripts/loc-budget-gate.sh` | 22847 / 22900 PASS |
| Dogfood `pr-audit.yml` on the merge commit | 0 blocking findings, exit 0 |
| `swarm run --session local` against gemma4:31b on a real ESM lib | 2/2 obligations satisfied in 16s wall |

## Out of scope (not done in this release)

- npm publish under `@moonrunnerkc/swarm-audit` scope.
- GitHub Marketplace listing submission (manual UI flow now that v10.0.0 is tagged; `action.yml` is Marketplace-ready).
- `swarm-audit.dev` domain acquisition.
- Real-PR collection corpus (the synthetic corpus is in place; real-PR scoring is the follow-on Phase 2 deliverable).

## Upgrade

`v8.x` orchestrator workflows continue to work. The `--v6` flag was removed in v9.0.0; pin to `8.0.x` if you still need the verified-branch pipeline.

