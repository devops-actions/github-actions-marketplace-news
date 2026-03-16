---
title: Skylos - Dead Code & Security PR Gate
date: 2026-03-16 13:46:20 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-dead-code-security-pr-gate
version: v4.0.0
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.0.0**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-dead-code-security-pr-gate) to find the latest changes.

## Action Summary

Skylos is a local-first scanner and CI/CD tool for Python, TypeScript, and Go codebases designed to detect dead code, security vulnerabilities (e.g., secrets, SQLi, SSRF), and exploitable flows. It automates pull request quality gates with inline annotations and review comments, enabling teams to ensure code quality and security before merging into main branches. Skylos consolidates multiple workflows into a single CLI and CI pipeline, offering advanced features like AI-powered analysis, while supporting popular frameworks and maintaining a low false positive rate.

## Release notes

## [4.0.0] - 2026-03-15

### Added
- **`-a` / `--all` flag** — enables `--danger`, `--secrets`, `--quality`, and `--sca` in one shot. `skylos . -a` replaces `skylos . --danger --secrets --quality --sca`
- **`addopts` config** — set default CLI flags in `pyproject.toml` under `[tool.skylos]`, just like pytest. Supports list (`["--quality", "--danger"]`) or string (`"--quality --danger"`) format. CLI flags override `addopts`
- **LLM Verification Agent** — `skylos agent verify <path>` runs 3-pass dead code verification: entry point discovery, graph-aware finding verification, and survivor challenge
- **Batch LLM Calls** — groups up to 8 findings per LLM call
- **Confidence Feedback Loop** — auto-tunes heuristic weights based on LLM verdicts across runs (`~/.skylos/feedback.json`)
- **MCP: `verify_dead_code` tool** — exposes LLM verification to AI agents
- **`--verification-mode` flag** — added to `skylos agent analyze`, `skylos agent audit`, and `skylos agent verify` with `judge_all` and `production` modes
- **AI Defense: Cloud Dashboard** — `skylos defend . --upload` sends defense results to the Skylos Cloud dashboard
- **AI Defense: Dashboard Page** — dedicated AI Defense tab on project pages with defense score ring, OWASP LLM Top 10 grid, trend chart, findings breakdown, and ops checks
- **CI/CD: `skylos cicd init --defend`** — generates workflow with AI Defense check step (`skylos defend . --fail-on critical --min-score 70`)
- **Pre-commit: `skylos-defend` hook** — blocks commits with critical AI defense failures
- **Public API Detection** — `skylos agent verify` now detects documented public API symbols in library packages.
- **Deterministic suppression for documented public API** — top-level functions, classes, and variables with docs references are fully suppressed without LLM calls; methods require additional Sphinx/autodoc evidence

### Changed
- **Dead-code verifier contract** — `skylos agent analyze`, `skylos agent audit`, and `skylos agent verify` now default to `judge_all` mode, where static dead-code candidates remain the source of truth and the LLM reviews nearly every `references == 0`
- **Deterministic suppressors as evidence** — in `judge_all` mode, entry-point discovery and deterministic suppressors are attached to findings as verifier evidence
- **Benchmark fairness** — the real world dead-code benchmark now runs the verifier in `judge_all` mode so model quality is measured separately

### Fixed
- **CI/CD:** Quality Gate step now runs with `if: always()` so it reports even when defend step fails. Fixed trailing blank line in generated defend workflow step
- **CLI:** `--upload` on empty project now prints "skipping upload" instead of silently doing nothing
