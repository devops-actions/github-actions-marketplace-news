---
title: sverklo audit
date: 2026-05-17 14:04:40 +00:00
tags:
  - sverklo
  - GitHub Actions
draft: false
repo: https://github.com/sverklo/sverklo
marketplace: https://github.com/marketplace/actions/sverklo-audit
version: v0.21.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sverklo/sverklo** to version **v0.21.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sverklo-audit) to find the latest changes.

## Action Summary

Sverklo is an open-source tool that provides local-first code intelligence for AI coding agents, enabling them to access accurate symbol graphs, perform blast-radius analyses, and utilize git-pinned memory. It prevents issues like hallucinated function names in large codebases by delivering ranked, traceable, and call-graph-aware results with significantly fewer tokens than traditional methods like grep or embedding-based searches. Designed for privacy and efficiency, Sverklo ensures that your code remains on your machine and provides reproducible benchmarks to validate its accuracy and performance.

## What's Changed

- v0.21.1 — engines.node>=24, Windows CI gate, install-smoke regression test (ca4f7df)
- ci: Windows + macOS matrix and install-smoke job (closes after #40 confirms) (#41) (50f51d3)
- feat: migrate SQLite binding from better-sqlite3 to node:sqlite (v0.21.0) (80188ab)
- feat(perf): consumer self-bench + cache hit/miss stats (v0.20.31) (d1ed3d2)
- sec+ux: remaining dogfood items — ReDoS, --timing, denominator clarity (v0.20.30) (6d7547e)
- sec+fix: dogfood-review v2 regressions (v0.20.29) (4531cb4)
- fix(ux): 4 UX gaps from @HaleTom (#36 #37 #38 #39) — v0.20.28 (59cc961)
- refactor(parser): extract per-language parsers into src/indexer/parsers/ (v0.20.27) (01364e8)
- sec+arch: model SHA pinning + dashboard split (v0.20.26) (43e8174)
- dogfood: T2/T3/T5 — better god-node ranking + barrel re-exports + path lookup (v0.20.25) (8e3d816)
