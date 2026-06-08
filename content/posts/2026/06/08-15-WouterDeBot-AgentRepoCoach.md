---
title: AgentRepoCoach — AI agent codebase health scoring
date: 2026-06-08 15:21:36 +00:00
tags:
  - WouterDeBot
  - GitHub Actions
draft: false
repo: https://github.com/WouterDeBot/AgentRepoCoach
marketplace: https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring
version: v0.4.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/WouterDeBot/AgentRepoCoach** to version **v0.4.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentrepocoach-ai-agent-codebase-health-scoring) to find the latest changes.

## What's Changed

## What's new

### Added
- **`repo_type = "private-internal"` config key** (`.agentrepocoach.toml`): calibration hint for private or single-operator repos. When set, adjusts the `bootstrap_signals` default weight from 0.12 to 0.06 and redistributes the 0.06 to `navigability` (0.22 → 0.28). An INFO advisory is printed to stderr on first use.
- **METHODOLOGY.md private-repo guidance**: new subsection under § Bootstrap signals explaining the `readme_quality` interpretation difference for private repos and documenting the `repo_type` calibration option.

### Usage

Add to your `.agentrepocoach.toml`:

\`\`\`toml
repo_type = "private-internal"
\`\`\`

### Notes
- Explicit `[weights]` overrides still take precedence over the `private-internal` defaults.
- Cross-repo comparisons are only meaningful when both repos use the same `repo_type` setting.
- All 175 tests pass.

Closes #11.
