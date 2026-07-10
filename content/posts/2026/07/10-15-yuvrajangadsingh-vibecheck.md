---
title: vibecheck-ai-slop
date: 2026-07-10 15:04:27 +00:00
tags:
  - yuvrajangadsingh
  - GitHub Actions
draft: false
repo: https://github.com/yuvrajangadsingh/vibecheck
marketplace: https://github.com/marketplace/actions/vibecheck-ai-slop
version: v1.11.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/yuvrajangadsingh/vibecheck** to version **v1.11.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibecheck-ai-slop) to find the latest changes.

## What's Changed

Trust fixes. Every change here came out of an adversarial review pass over the rule regexes and scanner.

**False positives killed (these were failing CI on normal code):**
- `no-py-eval` no longer flags `model.eval()` / `df.eval()` (every PyTorch and pandas repo)
- `no-eval` no longer flags Playwright/Puppeteer `page.$eval()`, still catches `window.eval()`
- `no-sql-concat` / `no-py-sql-concat` now require a real SQL clause, so "Update available: " + version and friends stop flagging
- `no-innerhtml` no longer flags `===` comparisons

**False negatives fixed:**
- `config.apiKey = "sk-live-..."` style secrets were exempt via an antiPattern blind spot
- `el.innerHTML +=` / `||=` / `&&=` / `??=` writes now flag
- `builtins.eval()` now flags
- empty catch followed by `} finally {` now flags
- bare `raise NotImplementedError` (no parens) now flags
- indented `from x import *` now flags

**Behavior change:** the two SQL-concat rules dropped from error to warn. They are regex heuristics that cannot fully tell a query from SQL-shaped UI copy, so they surface for review instead of failing CI. If you gate on them, set them back via `.vibecheckrc`: `{ "rules": { "no-sql-concat": "error" } }`.

**Scanner and infra:**
- version is injected from package.json at build; the MCP server had been reporting 1.8.0 while the CLI said 1.10.0
- `vibecheck --mcp` was starting two MCP servers on one stdio; the `vibecheck-mcp` bin got its own entry
- `no-god-function` had a quadratic regex: a 300KB minified line took 76s, now 0.1s
- ignore patterns now match nested paths (`packages/*/node_modules` was being scanned)
- `.mts` / `.cts` files are scanned as TypeScript
- rules can exclude by file path, so `console.log` in `*.test.ts` and `print()` in `test_*.py` / `cli.py` stop flagging

163 tests, all changes verified end-to-end on the built CLI before release.
