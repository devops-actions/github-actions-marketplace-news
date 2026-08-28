---
title: greenbump
date: 2026-08-28 09:20:07 +00:00
tags:
  - shidesheng0218
  - GitHub Actions
draft: false
repo: https://github.com/shidesheng0218/greenbump
marketplace: https://github.com/marketplace/actions/greenbump
version: v0.7.0
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
actionSummary: |
  greenbump is a tool that automatically upgrades dependencies and fixes breaking code changes in your project. It uses AI to detect issues during the upgrade process and provides a loop to fix any errors, ensuring your build and tests pass successfully. The action supports multiple ecosystems and offers features like automatic code repair, multi-round verification, and customizable models for fixing issues.
---


Version updated for **https://github.com/shidesheng0218/greenbump** to version **v0.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/greenbump) to find the latest changes.

## Action Summary

greenbump is a tool that automatically upgrades dependencies and fixes breaking code changes in your project. It uses AI to detect issues during the upgrade process and provides a loop to fix any errors, ensuring your build and tests pass successfully. The action supports multiple ecosystems and offers features like automatic code repair, multi-round verification, and customizable models for fixing issues.

## What's Changed


### Added
- **Expanded codemod library**: tier-1 free fixes grew from 6 to 24, covering the
  highest-frequency breaking upgrades reported by users — Express 4→5 (`app.del`,
  `res.send(status)`), Zod 3→4 (`error.errors`→`error.issues`, `.email()`/`.url()`/
  `.uuid()` shorthand), Node 20→22 (`util.is*` removal), Lodash 4 (`_.pluck`,
  `_.contains`), React Router 5→6 (`<Switch>`→`<Routes>`, `useHistory`→`useNavigate`),
  Mongoose 6→8 (`doc.remove()`→`doc.deleteOne()`), plus `assert.deepEqual`.
- **Guidance-only codemods**: for breakages too risky to regex-rewrite (ESLint 9 flat
  config, Axios 1.x, Webpack 5 polyfills, Jest 29+ jsdom split, TypeScript 5
  `verbatimModuleSyntax`, Prettier 3 defaults, Socket.IO 4), tier 1 now matches the
  failure and surfaces a migration note instead of guessing at a code change. These
  never mark the tier as "fixed" — they escalate to tier 4 like a miss, but the
  agent (and the user, via logs) starts with the right context.
- **Codemod `creates`**: codemods can scaffold a companion file after a successful
  transform (e.g. ESLint 9's `eslint.config.js` starter). Skipped if the file already
  exists, so it never clobbers user config.
- **Codemod `versionRange.toMajor`**: a codemod can now cover a span of majors
  (e.g. Mongoose 6→7 and 6→8 both match `doc.remove()`), not just a single bump.
- **Usage & cost report** (`greenbump --stats [days]`, default 30-day window):
  every run appends a local record (`~/.greenbump/runs.jsonl`, override with
  `GREENBUMP_STATS_DIR`) — dep, tier, tokens, cache hit, fixed/needsReview. `--stats`
  aggregates them into fix-tier breakdown, LLM calls avoided, actual tokens/cost
  spent, and an *estimated* dollar amount saved by tiers 1-3 (labeled as an estimate,
  never presented as a bill). `--stats --json` prints the raw summary for scripting.
  Fully local — no network calls, no telemetry.
- New CLI flags: `--stats [days]`, `--json` (with `--stats`).
- New modules:
  - `src/engine/stats/recorder.ts` (append-only JSONL run log)
  - `src/engine/stats/report.ts` (aggregation + terminal report + $/M-token pricing table)
- 33 new tests (145 total): 13 new codemod cases (transform, guidance-only, `creates`,
  multi-major `versionRange`), recorder round-trip/corrupt-line-tolerance, and report
  aggregation (tier counts, window filtering, cost estimation, empty state).

### Changed
- `tryBuiltinCodemods` no longer treats "advice printed" as "applied" — a
  guidance-only codemod match now returns `applied: false` with an `advice[]` list,
  so the fix loop correctly escalates to tier 4 instead of running a wasted
  verification check. (Previously this case didn't exist; called out here since it's
  the load-bearing invariant the new guidance codemods depend on.)
- `RunSummary`/batch group runs now record to the local stats log on every exit path
  (clean upgrade, unverifiable, and fixed-or-not), not just the LLM fix path.

### Impact
- **Higher tier-1 hit rate**: 4x more codemods means more real-world upgrades resolve
  at $0 without ever calling an LLM.
- **Visible savings**: `greenbump --stats` answers "how much has this tool saved me"
  with real numbers instead of a single run's summary.
- Verified end-to-end: Express 4→5 (`app.del`) and Zod 3→4 (`error.errors`) both fix
  with 0 input / 0 output tokens; `--stats` correctly aggregates both runs.


