---
title: sverklo audit
date: 2026-05-15 14:58:07 +00:00
tags:
  - sverklo
  - GitHub Actions
draft: false
repo: https://github.com/sverklo/sverklo
marketplace: https://github.com/marketplace/actions/sverklo-audit
version: v0.20.30
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sverklo/sverklo** to version **v0.20.30**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sverklo-audit) to find the latest changes.

## Action Summary

Sverklo is an open-source, local-first code intelligence tool designed to enhance AI coding agents' accuracy by providing a real symbol graph, blast-radius analysis, and git-pinned memory directly from the codebase, without requiring cloud uploads. It solves problems like AI hallucinating function names in large repositories and inefficient search methods by offering ranked, traceable, call-graph-aware results in fewer tokens compared to regex-based or embedding-based approaches. Key capabilities include high precision in definition lookup and reproducible benchmarking, making it a reliable and efficient solution for code analysis.

## What's Changed

- sec+ux: remaining dogfood items — ReDoS, --timing, denominator clarity (v0.20.30) (6d7547e)
- sec+fix: dogfood-review v2 regressions (v0.20.29) (4531cb4)
- fix(ux): 4 UX gaps from @HaleTom (#36 #37 #38 #39) — v0.20.28 (59cc961)
- refactor(parser): extract per-language parsers into src/indexer/parsers/ (v0.20.27) (01364e8)
- sec+arch: model SHA pinning + dashboard split (v0.20.26) (43e8174)
- dogfood: T2/T3/T5 — better god-node ranking + barrel re-exports + path lookup (v0.20.25) (8e3d816)
- perf+dogfood: Tier 2.4 / 2.5 / 3.5 + Dogfood T4 (v0.20.24) (c2b5d03)
- perf(search): hybrid-search single getAll() + batched getByIds (v0.20.23) (0415488)
- 0.20.22 (be3c6c6)
- sec/perf: Tier 0/1 architectural review fixes (v0.20.22) (aeb5f44)
