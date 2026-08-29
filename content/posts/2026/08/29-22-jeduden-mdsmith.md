---
title: mdsmith Markdown linter
date: 2026-08-29 22:09:33 +00:00
tags:
  - jeduden
  - GitHub Actions
draft: false
repo: https://github.com/jeduden/mdsmith
marketplace: https://github.com/marketplace/actions/mdsmith-markdown-linter
version: v0.55.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The mdsmith GitHub Action is designed to automate the process of linting and formatting Markdown files in a repository. It focuses on improving readability and consistency across multiple files and pipelines by checking style, structure, and cross-file integrity. The action provides auto-fix capabilities that automatically rewrite errors found during linting, ensuring that Markdown content remains clean and consistent.
---


Version updated for **https://github.com/jeduden/mdsmith** to version **v0.55.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mdsmith-markdown-linter) to find the latest changes.

## Action Summary

The mdsmith GitHub Action is designed to automate the process of linting and formatting Markdown files in a repository. It focuses on improving readability and consistency across multiple files and pipelines by checking style, structure, and cross-file integrity. The action provides auto-fix capabilities that automatically rewrite errors found during linting, ensuring that Markdown content remains clean and consistent.

## What's Changed

## What's Changed
* perf: audit against high-performance-go.md, fix 5 measured hot paths by @jeduden in https://github.com/jeduden/mdsmith/pull/770
* perf: audit against high-performance-go.md, fix 5 measured hot paths by @jeduden in https://github.com/jeduden/mdsmith/pull/774
* perf: audit against high-performance-go.md, fix top 5 hot-path violations by @jeduden in https://github.com/jeduden/mdsmith/pull/775
* perf: fix top 5 hot-path issues from a high-performance-go.md audit by @jeduden in https://github.com/jeduden/mdsmith/pull/780
* perf: fix top 5 high-performance-go.md violations found by codebase audit by @jeduden in https://github.com/jeduden/mdsmith/pull/782
* perf: audit against high-performance-go.md, fix 5 confirmed hot paths by @jeduden in https://github.com/jeduden/mdsmith/pull/785
* perf: fix top 5 high-performance-go.md violations by @jeduden in https://github.com/jeduden/mdsmith/pull/786
* perf: fix top 5 high-performance-go.md violations from a 3-agent audit by @jeduden in https://github.com/jeduden/mdsmith/pull/783
* perf: audit against high-performance-go.md, fix top 5 new hot-path issues by @jeduden in https://github.com/jeduden/mdsmith/pull/788
* perf: fix 4 high-performance-go.md violations found by codebase audit by @jeduden in https://github.com/jeduden/mdsmith/pull/794
* perf: consolidate #776, #779, #790, #793 with manual conflict resolution by @jeduden in https://github.com/jeduden/mdsmith/pull/800
* chore(deps): bump markdownlint-cli2 from 0.23.1 to 0.23.2 in /docs/research/benchmarks/npm by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/778
* fix(foreignregion): resolve MDS073 rule-ID collision with slidevstructure by @jeduden in https://github.com/jeduden/mdsmith/pull/791
* docs(security): scope zero-egress claim and add MDS072 SSRF caveat by @jeduden in https://github.com/jeduden/mdsmith/pull/771
* feat(init): APM coexistence — `--apm` flag, kind pack, and guide by @jeduden in https://github.com/jeduden/mdsmith/pull/772
* chore(deps-dev): bump the npm_and_yarn group across 1 directory with 2 updates by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/787
* docs(security): 2026-08-14 post-audit diff review — clean window by @jeduden in https://github.com/jeduden/mdsmith/pull/795
* docs(security): 2026-07-31 post-audit diff review — no new findings by @jeduden in https://github.com/jeduden/mdsmith/pull/781
* docs(security): 2026-08-07 post-audit diff review — zero new findings by @jeduden in https://github.com/jeduden/mdsmith/pull/789
* docs(security): consolidate the 2026-07-31, 08-07 and 08-14 post-audit reviews by @jeduden in https://github.com/jeduden/mdsmith/pull/801
* feat(mds072): SSRF guard and per-run egress ceiling by @jeduden in https://github.com/jeduden/mdsmith/pull/769
* test(cmd/mdsmith): add dedicated unit tests for runCheck/runFix by @jeduden in https://github.com/jeduden/mdsmith/pull/784
* perf: fix 5 highest-impact violations of the high-performance-go guideline by @jeduden in https://github.com/jeduden/mdsmith/pull/802
* plan: vendor go-runewidth as a patched fork, bump tinygo to 0.41.1 by @jeduden in https://github.com/jeduden/mdsmith/pull/804
* feat(runewidth): vendor go-runewidth as a patched fork, remove eager LUT by @jeduden in https://github.com/jeduden/mdsmith/pull/807
* ci(tinygo): bump pinned tinygo 0.39.0 → 0.41.1 by @jeduden in https://github.com/jeduden/mdsmith/pull/808
* perf: fix top 5 high-performance-go.md violations by @jeduden in https://github.com/jeduden/mdsmith/pull/811
* build(deps): bump golang.org/x/net from 0.57.0 to 0.58.0 by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/812
* refactor(githooks): split by responsibility; record 2026-08-23 arch audit by @jeduden in https://github.com/jeduden/mdsmith/pull/815
* test(pkg/mdsmith): add dedicated unit test for readBoundedFrontMatterSource by @jeduden in https://github.com/jeduden/mdsmith/pull/805
* feat(metrics,rules): add MET007 word-frequency metric and MDS074 over-repetition rule by @jeduden in https://github.com/jeduden/mdsmith/pull/806
* refactor(cmd/mdsmith): move list-query subcommand logic into query.go by @jeduden in https://github.com/jeduden/mdsmith/pull/809
* test(rules): add dedicated unit tests for occurrence and slidevstructure private helpers by @jeduden in https://github.com/jeduden/mdsmith/pull/810
* docs(security): 2026-08-28 post-audit diff review by @jeduden in https://github.com/jeduden/mdsmith/pull/816
* feat(schema): let `filename:` accept a list of globs (OR match) by @jeduden in https://github.com/jeduden/mdsmith/pull/818
* perf: cut check allocations 21% and CPU 6% across five hot-path fixes by @jeduden in https://github.com/jeduden/mdsmith/pull/813
* fix(security): remove proxy blind spot from MDS072 guarded HTTP client by @jeduden in https://github.com/jeduden/mdsmith/pull/819


**Full Changelog**: https://github.com/jeduden/mdsmith/compare/v0.54.0...v0.55.0
