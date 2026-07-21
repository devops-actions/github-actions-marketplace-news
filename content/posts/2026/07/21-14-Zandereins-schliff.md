---
title: AGENTS.md Lint (Schliff)
date: 2026-07-21 14:48:11 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.6.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  This GitHub Action automates the scoring of `AGENTS.md` files to ensure consistent quality across different environments. It uses a deterministic rule engine to evaluate instruction files against explicit rubrics, preventing degradation due to inconsistencies or rotting prompts. The action ensures that AI tools are consistently evaluated and can be trusted for their accuracy and reliability.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.6.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

This GitHub Action automates the scoring of `AGENTS.md` files to ensure consistent quality across different environments. It uses a deterministic rule engine to evaluate instruction files against explicit rubrics, preventing degradation due to inconsistencies or rotting prompts. The action ensures that AI tools are consistently evaluated and can be trusted for their accuracy and reliability.

## What's Changed

Patch release. Adversarial-review + real-repo field-sweep fixes for the `check-commands` gate shipped in 8.6.0.

**No API or scoring change** — `operational_coverage` is untouched, golden scores are byte-identical. Every fix only demotes `dangling`→`unknown`, so the check can never gain a false claim.

### Fixed — false positives on real repos
Shipped 8.6.0 reported 8 working commands as `dangling` across 3 of 4 real monorepos (palantir/blueprint, remotion, swc). All now correct:
- `cd sub/dir && npm run x` (monorepo cd context)
- `(cd x && npm run build)` (trailing paren)
- `bun run index.ts` / `bun run dist/out.js` (bun file/binary fallback)
- `yarn tsc` / `yarn run x` (yarn `node_modules/.bin` fallback)
- `make -C dir target` (directory read as target)
- `pnpm run -r build` (flag read as script name)
- `$(TARGETS):` / `%.o: %.c` (variable/pattern targets)

### Fixed — denial-of-service on attacker-authored build files
- `include` fan-out (N**5 → O(files) worklist)
- `include` regex quadratic backtracking (15.7s → 0.14s)
- `include ../../outside` read primitive (realpath-contained to repo root)
- deeply-nested `package.json` `RecursionError` crash (→ `unknown`)

1392 tests, ruff clean. See #117.
