---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-05-26 22:50:50 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## Action Summary

AgentRepoCoach is a GitHub Action and CLI tool designed to evaluate how well a codebase supports autonomous AI agents by calculating a Codebase Agent Health (CAH) score (0-100). It automates the assessment of six key areas, such as navigability, test quality, and module hygiene, providing actionable insights and recommendations to improve the repository's AI-readiness. The tool can also enforce quality thresholds in CI/CD workflows, ensuring repositories maintain a specified level of readiness.

## What's Changed

## New 6th scoring component: `bootstrap_signals`

CAH score now blends **six** statically-measurable components (default weights rebalanced to sum to 1.0).

### Added

- **CI-Signal scorer** (`bootstrap_signals` component, 50 pts): detects whether the repo defines a runnable CI workflow (`.github/workflows/*.yml`, `.gitlab-ci.yml`, `.circleci/config.yml`). Awards 30 pts for any workflow file, +20 pts when a workflow triggers on `pull_request`. Configurable via `[bootstrap_signals.ci_workflow_globs]` for non-mainstream CI providers.
- **README-quality scorer** (`bootstrap_signals` component, 50 pts): detects whether the README's first 100 lines contain both an install command (`pip install`, `npm install`, `cargo`, `go install`, `dotnet add`, etc.) and a test command (`pytest`, `npm test`, `go test`, `cargo test`, `dotnet test`, etc.) in fenced code blocks. Configurable via `[bootstrap_signals.install_command_patterns]` and `[bootstrap_signals.test_command_patterns]`.
- **Config schema v2:** `CURRENT_SCHEMA_VERSION` bumped from 1 to 2. Existing `.agentrepocoach.toml` files must add `schema_version = 2` and `bootstrap_signals = 0.12` to `[weights]`. See `docs/configuration.md` for the one-line migration recipe.

### Changed

- **Default weights rebalanced** to accommodate the new 6th component:
  - `navigability`: 0.25 → 0.22
  - `error_quality`: 0.25 → 0.22
  - `decision_queryability`: 0.20 → 0.18
  - `test_quality`: 0.15 → 0.13
  - `module_hygiene`: 0.15 → 0.13
  - `bootstrap_signals`: new at 0.12

### Security

- README reads capped at 200 KB and 100 lines before any pattern matching (DoS guard).
- CI workflow scans short-circuit at 50 files per glob pattern.
- No shell-out, no eval, no exec — enforced via grep regression test.

### Migration

For users upgrading from v0.3.x: add the two lines below to your `.agentrepocoach.toml`:

```toml
schema_version = 2

[weights]
# ... your existing weights ...
bootstrap_signals = 0.12
```

Or delete the `[weights]` table to inherit the new defaults. See `docs/configuration.md` for the full migration guide.

**Full changelog:** https://github.com/WouterDeBot/AgentRepoCoach/blob/v0.4.0/CHANGELOG.md#040--2026-05-26
**Compare:** https://github.com/WouterDeBot/AgentRepoCoach/compare/v0.3.1...v0.4.0
