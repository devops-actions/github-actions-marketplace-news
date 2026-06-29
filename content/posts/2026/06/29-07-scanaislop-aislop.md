---
title: aislop — AI Code Quality Gate
date: 2026-06-29 07:07:38 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-ai-code-quality-gate
version: v0.13.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.13.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-ai-code-quality-gate) to find the latest changes.

## What's Changed

Telemetry now reports how users install aislop (npm, Homebrew, pip, pipx, and more), MCP and lifecycle events flush reliably, and new quality rules catch hidden fallbacks while framework-specific scans ship as optional adapter entrypoints.

## Install

```bash
npx aislop@0.13.0 scan .
# or globally:
npm i -g aislop@0.13.0
```

## Added

- **Install channel telemetry** — `package_manager` now distinguishes `homebrew`, `pip`, `pipx`, and `direct` global installs in addition to `npm` / `pnpm` / `yarn` / `bun` / `npx`. Python and other shims can set `AISLOP_INSTALL_CHANNEL` before invoking the Node CLI.
- **`ai-slop/hidden-fallback` rule** — flags JS/TS fallback logic that turns missing counts, failed diagnostics, or impossible states into safe-looking values without surfacing the failure ([#226](https://github.com/scanaislop/aislop/pull/226)).
- **Framework adapter entrypoints** — optional `@aislop/adapters/*` exports for Astro, Expo, Nuxt, SvelteKit, and Vite ([#224](https://github.com/scanaislop/aislop/pull/224)).

## Fixed

- **Telemetry delivery** — `mcp_tool_called` and `cli_command_started` now flush before the process exits.
- **npx install detection** — telemetry recognizes `_npx` cache paths and `npm_command=npx`.
- **Scanner calibration** — fewer false positives on hallucinated imports, secret detection, unused CSS, Azure namespace imports, and Bun audit flows ([#227](https://github.com/scanaislop/aislop/pull/227), [#236](https://github.com/scanaislop/aislop/pull/236)).
- **Source and config resolution** — JSONC reads, Python target discovery, and non-production path heuristics handle more real-world repo layouts.

## Changed

- **Python launcher telemetry** — the PyPI package sets `AISLOP_INSTALL_CHANNEL` (`pip` or `pipx`) before delegating to the npm CLI.

## Numbers

- 1357 tests passing
- Self-scan: 100/100

Full notes in [CHANGELOG.md](https://github.com/scanaislop/aislop/blob/develop/CHANGELOG.md).
