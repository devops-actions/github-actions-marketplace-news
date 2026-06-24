---
title: vstack agent-quality gate
date: 2026-06-24 07:00:54 +00:00
tags:
  - valani9
  - GitHub Actions
draft: false
repo: https://github.com/valani9/vstack
marketplace: https://github.com/marketplace/actions/vstack-agent-quality-gate
version: v0.54.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/valani9/vstack** to version **v0.54.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vstack-agent-quality-gate) to find the latest changes.

## What's Changed

# vstack 0.54.0

**Organizational behavior, practiced on AI agents.** vstack is a curated library
of 34 diagnostic patterns drawn from organizational behavior, social psychology,
and group dynamics — each rewritten for the domain of AI agents rather than
human teams.

## Install

```bash
pip install valanistack==0.54.0
```

Optional extras: `[anthropic]`, `[openai]`, `[ollama]`, `[mcp]`, `[api]`,
`[browser]`, `[langchain]`, `[langgraph]`, `[crewai]`, `[llamaindex]`,
`[pydantic-ai]`, `[adapters]`, `[all]`.

Docker:

```bash
docker pull ghcr.io/valani9/vstack:0.54.0
```

## What changed in this release

One-command CI onboarding.

### Added

- **`vstack-config init-ci`** — scaffolds a ready-to-run GitHub Actions
  workflow (`.github/workflows/vstack-agent-quality.yml`) that wires up the
  full gate: diagnose a trace on each PR, `fail-on: high`, upload SARIF to
  code scanning, and post a sticky PR comment. Pins the Action to the
  installed vstack version. `--out` / `--force` / `--dry-run` like
  `install-skills`. Takes a repo from "installed" to "gating in CI" in one
  command.

### Compatibility

- All tests pass. Additive only; no breaking changes.

## Verify the install

```bash
vstack-doctor          # 25+ install checks
vstack-hello           # 30-second end-to-end demo
```

## Resources

- [Docs](https://valani9.github.io/vstack/) — hosted mkdocs site
- [CHANGELOG](https://github.com/valani9/vstack/blob/main/CHANGELOG.md) — full history
- [Patterns index](https://github.com/valani9/vstack/blob/main/PATTERNS.md) — all 34 patterns + literature anchors
- [Security policy](https://github.com/valani9/vstack/security/policy)
