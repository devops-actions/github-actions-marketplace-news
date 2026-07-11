---
title: agentslint
date: 2026-07-11 06:07:42 +00:00
tags:
  - toshi0607
  - GitHub Actions
draft: false
repo: https://github.com/toshi0607/agentslint
marketplace: https://github.com/marketplace/actions/agentslint
version: v0.0.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/toshi0607/agentslint** to version **v0.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentslint) to find the latest changes.

## What's Changed

First public release of **agentslint** — a CI linter for AI coding agent config files (`AGENTS.md`, `CLAUDE.md`, `.claude/`).

## Highlights

- **6 rules**: broken file references (AL001), stale commands (AL002), token budget (AL003), skill frontmatter (AL004), settings schema with 125 known keys (AL005), secret patterns (AL006)
- **4 output formats**: pretty, JSON, SARIF (GitHub code scanning), GitHub annotations
- **GitHub Action** with PR inline annotations, job summary, and optional SARIF output
- `--help` / `--version`, zero-config `npx @toshi0607/agentslint`
- Tested on Ubuntu / macOS / Windows (47 tests)

## Usage

```yaml
- uses: actions/checkout@v4
- uses: toshi0607/agentslint@v0.0.2
```

See the [README](https://github.com/toshi0607/agentslint#readme) for CLI usage, configuration, and the code scanning setup.
