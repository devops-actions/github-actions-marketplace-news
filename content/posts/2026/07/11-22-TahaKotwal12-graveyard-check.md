---
title: Graveyard Check
date: 2026-07-11 22:17:55 +00:00
tags:
  - TahaKotwal12
  - GitHub Actions
draft: false
repo: https://github.com/TahaKotwal12/graveyard-check
marketplace: https://github.com/marketplace/actions/graveyard-check
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/TahaKotwal12/graveyard-check** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/graveyard-check) to find the latest changes.

## What's Changed

First public release of graveyard-check — a CLI that scans your npm lockfile, flags 
dependencies that are effectively abandoned, and recommends verified community-
maintained successors.

## What it does

- `graveyard-check scan` — scans your package-lock.json, flags likely-abandoned or 
  at-risk dependencies with evidence (last release/commit age, npm deprecation flag, 
  issue response rate), and suggests a maintained successor where one exists
- `graveyard-check check <package>` — single-package lookup, no lockfile required
- `--json` output and a GitHub Action wrapper for CI integration

## Seed dataset

Ships with 9 researched successor records covering well-known npm abandonment cases: 
request, node-sass, moment, request-promise, istanbul, gulp-util, colors, faker, 
and tslint. Every record is backed by verified evidence, not guesses — see 
`data/successors/SCHEMA.md`.

Notable finding from building this dataset: `npm install faker` still installs 
`6.6.6` — the January 2022 sabotage stub — four and a half years later.

## Contributing

The dataset grows through community PRs. See `CONTRIBUTING.md` for how to submit 
a successor record — the bar for evidence is high on purpose, since this data is 
the whole point of the tool.

## Install

```bash
npx graveyard-check scan
```

## What's not here yet

- npm/pnpm/yarn lockfile support only covers `package-lock.json` for now — 
  pnpm-lock.yaml and yarn.lock are planned
- Single ecosystem (npm) — PyPI/Go/crates are on the roadmap
- Fork-health analysis (auto-ranking forks of a dead repo) is not yet automated
