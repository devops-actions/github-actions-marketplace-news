---
title: Bernstein — Multi-Agent Orchestration
date: 2026-04-13 06:28:48 +00:00
tags:
  - chernistry
  - GitHub Actions
draft: false
repo: https://github.com/chernistry/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v1.6.9
dependentsNumber: "4"
actionType: Composite
---


Version updated for **https://github.com/chernistry/bernstein** to version **v1.6.9**.

- This action is used across all versions by **4** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is a deterministic Python-based orchestrator for automating software development tasks using AI coding agents. It takes a high-level goal, breaks it into subtasks, assigns them to parallel AI agents, verifies outputs, and integrates results into clean, functional code. The tool eliminates framework dependencies and vendor lock-in, supporting interchangeable models and providers for efficient, flexible AI-driven coding workflows.

## What's Changed

## v1.6.9

The largest internal restructuring in Bernstein's history - a full module decomposition of the monolithic `core/` directory into focused subpackages, plus 100+ CI fixes to make all 927 tests pass.

### Module decomposition

The 4,000+ line god-modules have been broken into focused, maintainable subpackages:

- **orchestrator.py** (4,198 lines) -> 7 sub-modules in `core/orchestration/`
- **spawner.py** (2,914 lines) -> 4 sub-modules in `core/agents/`
- **task_store.py** (1,853 lines) -> deduplicated into `task_store_core.py`
- **seed.py** (1,795 lines) -> 3 sub-modules in `core/config/`
- **gate_runner.py** (1,290 lines) -> 3 sub-modules in `core/quality/`

207+ modules moved into 15 subpackages: `agents/`, `config/`, `cost/`, `git/`, `knowledge/`, `observability/`, `orchestration/`, `persistence/`, `planning/`, `plugins_core/`, `protocols/`, `quality/`, `routing/`, `security/`, `tasks/`, `tokens/`.

All backward-compatible - existing imports through shim modules continue to work.

### Code quality

- Resolved all SonarCloud BLOCKER vulnerabilities and security hotspots (0 remaining)
- Hardened 25+ regex patterns against ReDoS
- Reduced code duplication from 9.6% to under 3% on new code
- 927 tests passing across Python 3.12, 3.13 on Linux, macOS, Windows

### Security

- Added Zip Slip path traversal validation for archive extraction
- Seeded RNG for non-cryptographic test data generation
- Annotated localhost URLs and intentional signal handling

### External contributions

- [PR #724](https://github.com/chernistry/bernstein/pull/724) by [@vbhavh](https://github.com/vbhavh) - cost-per-line efficiency metric
- [PR #726](https://github.com/chernistry/bernstein/pull/726) by [@oldschoola](https://github.com/oldschoola) - Windows compatibility for terminal handling

### Bug fixes

- Fixed circular imports in server subpackage
- Fixed midnight-boundary timezone flake in quality metrics test
- Updated 120+ test mock patch targets for decomposed modules
- Fixed `cancel-in-progress` CI setting to allow test runs to complete
