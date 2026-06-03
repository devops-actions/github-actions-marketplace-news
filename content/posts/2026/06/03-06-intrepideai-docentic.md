---
title: docentic
date: 2026-06-03 06:54:31 +00:00
tags:
  - intrepideai
  - GitHub Actions
draft: false
repo: https://github.com/intrepideai/docentic
marketplace: https://github.com/marketplace/actions/docentic
version: v0.2.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/intrepideai/docentic** to version **v0.2.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/docentic) to find the latest changes.

## What's Changed

Makes the `scripts/llm-docs/` generators stack-agnostic across the JS/TS ecosystem — they previously assumed Next.js + Prisma + pnpm and crashed or produced wrong output on anything else.

### Added
- **Stack auto-detection** (`detect-stack.sh`): Next.js (monorepo/single), Express, Fastify, Hono; Prisma vs. Drizzle; npm/pnpm/yarn/bun; API-route + schema locations.
- **Express, Fastify, and Hono** endpoint extraction in `gen-api.sh`; **Drizzle** schema support in `gen-data.sh` (+ no-ORM fallback).
- Broader dependency/integration detection and dynamic `gen-map.sh` sections for single-package repos.
- A 93-assertion shell suite wired into CI on both the grep-fallback and ripgrep paths.

### Fixed
- `docentic init` now scaffolds `detect-stack.sh` — without it every generator failed at startup.
- `gen-api.sh` no longer truncates `API.md` (sed delimiter collision, Express field-order, no-match aborts).
- `detect-stack.sh` no longer aborts on a Hono repo with no `new Hono` match.

### Docs
- README accuracy fixes (any JS/TS codebase, broken nav anchor, auto-regenerated, valid default model id).

**Full changelog:** https://github.com/intrepideai/docentic/blob/v0.2.2/CHANGELOG.md · **Compare:** https://github.com/intrepideai/docentic/compare/v0.2.1...v0.2.2
