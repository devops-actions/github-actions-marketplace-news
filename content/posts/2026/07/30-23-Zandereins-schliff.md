---
title: AGENTS.md Lint (Schliff)
date: 2026-07-30 23:41:22 +00:00
tags:
  - Zandereins
  - GitHub Actions
draft: false
repo: https://github.com/Zandereins/schliff
marketplace: https://github.com/marketplace/actions/agents-md-lint-schliff
version: v8.9.0
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  Schliff is an open-source tool that provides deterministic quality scores for AGENTS.md and related files used by AI tools like Cursor, Codex, Copilot, and Claude Code. It uses a versioned rubric to evaluate the clarity, operational coverage, efficiency, composability, and structure of instruction files, ensuring reproducibility across different environments. This helps developers catch degrading quality early in their development process.
---


Version updated for **https://github.com/Zandereins/schliff** to version **v8.9.0**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agents-md-lint-schliff) to find the latest changes.

## Action Summary

Schliff is an open-source tool that provides deterministic quality scores for AGENTS.md and related files used by AI tools like Cursor, Codex, Copilot, and Claude Code. It uses a versioned rubric to evaluate the clarity, operational coverage, efficiency, composability, and structure of instruction files, ensuring reproducibility across different environments. This helps developers catch degrading quality early in their development process.

## What's Changed

Four security fixes from a whole-repo trust-boundary audit, plus two gates so the class
cannot recur.

## The headline

A single defect in five regexes, and not the textbook ReDoS shape — no nested quantifier,
no overlapping alternation, just **an unbounded run followed by a required literal**. The
worst case sat *inside* the public playground's 32 KB input cap:

**162.6 s of CPU for one unauthenticated request → 58.9 ms.**

Also reachable from the CLI at the 1 MB cap and, with the widest blast radius, from the
GitHub Action on a fork PR's `AGENTS.md` — i.e. in other people's CI.

## What changed

- **Five scoring regexes bounded**, every bound calibrated from the longest run it actually
  consumes across 380 real instruction files rather than guessed. `clarity` needed a second,
  independent fix: bounding alone only reached 11.9 s, because match-independent work sat
  inside a per-match loop.
- **`schliff manifest`** parsed third-party frontmatter quadratically (25.6 s at 64 KB) and
  read files with no size cap at all — the only reader in the engine without one. Through
  the CLI on one hostile 64 KB skill: **30.77 s → 0.22 s**.
- **The playground's byte cap** was bypassable with a negative `Content-Length`:
  `rfile.read(-1)` reads to EOF. Measured 3,145,832 bytes against a 512,000-byte cap.
- **`run-eval.sh`'s 2-second regex timeout guard** could be silently inactive — neither
  `timeout` nor `gtimeout` ships with a stock macOS. It now says so.

## Two gates

`test_patterns_scale_linearly.py` times all 224 compiled patterns across 30 modules against
25 pathological filler alphabets at doubling lengths. **It found a fifth offending pattern
that was not on the audit's fix list, on its first run.** Its deterministic companion pins
each bounded spelling *and* pins each bound above the corpus maximum it came from.

## No score moves

0 of 250 real files change their clarity result. The hero score and every case-study number
reproduce byte-identically: 95.6 / 28.7 / 84.5 / 94.6. Every malicious shape is still
detected with identical finding counts.

Full detail, including two declined findings with the measurements behind the declines:
[CHANGELOG](https://github.com/Zandereins/schliff/blob/main/CHANGELOG.md#890---2026-07-30)
· spec `docs/specs/2026-07-30-redos-audit-fixes.md`
