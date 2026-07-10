---
title: create-agent-room Validate
date: 2026-07-10 06:22:22 +00:00
tags:
  - sipandey
  - GitHub Actions
draft: false
repo: https://github.com/sipandey/create-agent-room
marketplace: https://github.com/marketplace/actions/create-agent-room-validate
version: v2.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sipandey/create-agent-room** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-agent-room-validate) to find the latest changes.

## What's Changed

## create-agent-room v2.1.0

The headline of this release is a new **`doctor`** command — a read-only health check for your agent room — plus a CI safeguard against a lockfile-drift bug that bit us twice. No breaking changes; this is a clean drop-in upgrade from 2.0.x.

### ✨ New: `create-agent-room doctor [target-dir]`

A read-only health check that works **whether or not `init` has ever been run**, and never writes to disk.

- **No `.agent-room/` yet?** It detects your workspace (language + tools) and prints the exact `init` command to run — plus an `init --dry-run` preview variant.
- **Already scaffolded?** It reuses `validate`'s structural/schema checks and layers on advisory-only checks that `validate` deliberately doesn't do:
  - **Hook drift** — `pre-commit`, `guardrails-check.js`, or `close-the-loop-check.js` no longer matching the installed CLI's templates (i.e. missing recent fixes).
  - **Stale CI pin** — a scaffolded workflow pinned to `@latest` or an old `create-agent-room` version.
  - **Config vs. reality** — `.agent-room.json` claiming a tool (`claude`, `git`) that isn't actually wired up on disk (e.g. the Stop hook or pre-commit hook is missing).
- Output is `🔴 Needs attention` / `🟡 Recommended` / `🟢 Looks good`, and it only ever *suggests* a fix command — the key difference from `init --force`, which writes.

```bash
npx create-agent-room doctor .
```

### 🚀 Added

- **`doctor` command** (above).
- **`npm run check:lockfile` CI gate** — fails the build if `package-lock.json`'s version drifts from `package.json`'s. This exact drift slipped through twice before; now it can't.

### 🔧 Changed

- Extracted `validate`'s checks into a shared `collectFindings()` (`lib/checks.js`) so `validate` and `doctor` can never disagree on what counts as a structural error. `validate`'s own behavior is unchanged.
- Internal refactor collapsing the `cursor`/`windsurf`/`cline`/`codex` adapter blocks in `lib/init.js` into one table-driven loop. No behavior change.

### 🐛 Fixed

- The bundled `guardrails-check.js` git hook used a numeric separator (`1_000_000`) that threw a `SyntaxError` under Node < 12.5. Git hooks run under whatever `node` is first on `PATH` — not necessarily your active version — so this could break commits on machines with an old system Node. Replaced with a plain literal.

### 📦 Install / upgrade

```bash
npx create-agent-room@2.1.0 init .
# or, if you pin the GitHub Action, the rolling major tag now points here too:
#   uses: sipandey/create-agent-room@v2
```

**Rollback:** stateless CLI, no migrations — pin `create-agent-room@2.0.1` to revert.

**Full changelog:** https://github.com/sipandey/create-agent-room/compare/v2.0.1...v2.1.0

