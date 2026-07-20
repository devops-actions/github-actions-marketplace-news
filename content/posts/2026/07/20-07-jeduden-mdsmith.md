---
title: mdsmith Markdown linter
date: 2026-07-20 07:36:26 +00:00
tags:
  - jeduden
  - GitHub Actions
draft: false
repo: https://github.com/jeduden/mdsmith
marketplace: https://github.com/marketplace/actions/mdsmith-markdown-linter
version: v0.53.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The mdsmith action checks and formats Markdown files in a repository using a static Go binary. It automates the process of maintaining consistent Markdown across different files and pipelines, providing auto-fix capabilities to improve readability and structure.
---


Version updated for **https://github.com/jeduden/mdsmith** to version **v0.53.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mdsmith-markdown-linter) to find the latest changes.

## Action Summary

The mdsmith action checks and formats Markdown files in a repository using a static Go binary. It automates the process of maintaining consistent Markdown across different files and pipelines, providing auto-fix capabilities to improve readability and structure.

## What's Changed

## What's Changed
* arch(lsp): split server.go into focused sibling files by @jeduden in https://github.com/jeduden/mdsmith/pull/680
* arch: add trivial-accessor exemption comments in workspace.go by @jeduden in https://github.com/jeduden/mdsmith/pull/681
* arch(lint): split layer0.go into focused sibling files by @jeduden in https://github.com/jeduden/mdsmith/pull/678
* perf: replace map[string]bool sets with map[string]struct{} across hot paths by @jeduden in https://github.com/jeduden/mdsmith/pull/679
* bench(lint): add inline scanner benchmark and corpus hit-rate test by @jeduden in https://github.com/jeduden/mdsmith/pull/682
* perf: reduce GC scan span and eliminate padding in hot structs by @jeduden in https://github.com/jeduden/mdsmith/pull/683
* security: retire resolved findings from 2026-06-19 SARIF files by @jeduden in https://github.com/jeduden/mdsmith/pull/685
* test(samefileanchor): add dedicated unit tests for 12 unexported helpers by @jeduden in https://github.com/jeduden/mdsmith/pull/687
* test(inline_scan): add dedicated unit tests for 12 unexported helpers by @jeduden in https://github.com/jeduden/mdsmith/pull/686
* docs(benchmarks): restructure the benchmark write-up for scannability by @jeduden in https://github.com/jeduden/mdsmith/pull/684
* perf: apply high-performance-go guidelines across 5 hot paths (3-round review) by @jeduden in https://github.com/jeduden/mdsmith/pull/688
* audit(2026-06-24): flag test-debt and rename dedup tax by @jeduden in https://github.com/jeduden/mdsmith/pull/689
* refactor(rename): export NormalizedLabel/RefDefBracketBytes, remove lsp duplicates by @jeduden in https://github.com/jeduden/mdsmith/pull/690
* test(lsp/rename): add dedicated unit tests for 13 unexported helpers by @jeduden in https://github.com/jeduden/mdsmith/pull/692
* chore(deps): bump github.com/tetratelabs/wazero from 1.11.0 to 1.12.0 by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/691
* test: add dedicated unit tests for export helpers and two small rename helpers (plan 2606240213) by @jeduden in https://github.com/jeduden/mdsmith/pull/693
* audit(arch): 2026-06-24 sweep (09f22d3..3d35b77); add plans 2606241814-15 by @jeduden in https://github.com/jeduden/mdsmith/pull/696
* perf: five high-performance-go fixes from codebase audit by @jeduden in https://github.com/jeduden/mdsmith/pull/697
* security: upgrade golang.org/x/net to v0.56.0 (fixes 5 CVEs) by @jeduden in https://github.com/jeduden/mdsmith/pull/698
* test(lsp): add dedicated unit tests for rename dispatch helpers (plan 2606241814) by @jeduden in https://github.com/jeduden/mdsmith/pull/699
* fix: bump Go to 1.25.11 and golang.org/x/net to v0.56.0 to fix 22 CVEs by @jeduden in https://github.com/jeduden/mdsmith/pull/700
* test(lint): add unit tests for layer0_html.go helpers (plan 2606260211) by @jeduden in https://github.com/jeduden/mdsmith/pull/701
* test(lint): add dedicated unit tests for 9 lineclass_scan HTML helpers (plan 2606260614) by @jeduden in https://github.com/jeduden/mdsmith/pull/702
* test(cuelite): add dedicated unit tests for 7 engine.go unexported helpers (plan 2606260615) by @jeduden in https://github.com/jeduden/mdsmith/pull/703
* fix(plan): resolve merge conflict markers in plan 2606260615 by @jeduden in https://github.com/jeduden/mdsmith/pull/704
* chore(arch): architecture audit 2026-06-26 — clean pass by @jeduden in https://github.com/jeduden/mdsmith/pull/705
* Add opt-in reflow auto-fix to line-length (MDS001) by @jeduden in https://github.com/jeduden/mdsmith/pull/709
* chore(arch): architecture audit 2026-06-28 — clean pass by @jeduden in https://github.com/jeduden/mdsmith/pull/708
* docs(features): explain the Claude Code integration from a user view by @jeduden in https://github.com/jeduden/mdsmith/pull/710
* docs(vscode): lead the VS Code page with the install decision by @jeduden in https://github.com/jeduden/mdsmith/pull/713
* Plan: scope the LSP workspace singleton per client so instances coexist by @jeduden in https://github.com/jeduden/mdsmith/pull/714
* perf: replace manual byte loops with bytes package SIMD functions; fix CRLF reflow corruption by @jeduden in https://github.com/jeduden/mdsmith/pull/712
* ci(merge-queue): only run queue job when the queue label is added by @jeduden in https://github.com/jeduden/mdsmith/pull/717
* chore(deps): bump golang.org/x/tools from 0.45.0 to 0.47.0 by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/716
* perf: fix top 5 high-performance-go.md violations by @jeduden in https://github.com/jeduden/mdsmith/pull/715
* docs(comparison): refresh mdbase section for rename, backlinks, and deps by @jeduden in https://github.com/jeduden/mdsmith/pull/718
* Forbid "honest" + AI-speak repo-wide, and make the vocabulary a user-extensible word-list resource by @jeduden in https://github.com/jeduden/mdsmith/pull/694
* docs(plan): plan deterministic prose-tell rules and redraw the Vale boundary by @jeduden in https://github.com/jeduden/mdsmith/pull/719
* fix(arch): route reflow abbreviation lookup through internal/mdtext by @jeduden in https://github.com/jeduden/mdsmith/pull/722
* plan: redesign move/rename as one refactor engine (CLI, LSP, WASM) by @jeduden in https://github.com/jeduden/mdsmith/pull/721
* APM research: how mdsmith supports Agent Package Manager workflows by @jeduden in https://github.com/jeduden/mdsmith/pull/728
* chore(deps): bump markdownlint-cli2 from 0.22.1 to 0.23.0 in /docs/research/benchmarks/npm by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/727
* perf: fix top 5 high-performance-go.md violations in the rule hot path by @jeduden in https://github.com/jeduden/mdsmith/pull/725
* perf: fix top 5 high-performance-go.md violations found by audit by @jeduden in https://github.com/jeduden/mdsmith/pull/729
* security: 2026-07-03 post-audit diff review (low findings only) by @jeduden in https://github.com/jeduden/mdsmith/pull/720
* perf: fix top 5 high-performance-go.md violations by @jeduden in https://github.com/jeduden/mdsmith/pull/723
* plan: extractable per-file metrics (readability) with YAML output by @jeduden in https://github.com/jeduden/mdsmith/pull/724
* security: 2026-07-10 post-audit diff review (no findings) by @jeduden in https://github.com/jeduden/mdsmith/pull/730
* perf: fix top 5 high-performance-go.md violations from audit by @jeduden in https://github.com/jeduden/mdsmith/pull/731
* perf: fix top 5 high-performance-go.md violations by @jeduden in https://github.com/jeduden/mdsmith/pull/732
* refactor: export wordlist.Dedup/ToAnySlice, remove duplicate implementations by @jeduden in https://github.com/jeduden/mdsmith/pull/726
* feat: Open Knowledge Format (OKF) support — required-frontmatter rule, `init --starter okf`, and dev guide by @jeduden in https://github.com/jeduden/mdsmith/pull/711
* refactor(astutil): export CountLeadingSpaces and IsBlank, remove per-rule duplicates by @jeduden in https://github.com/jeduden/mdsmith/pull/734
* feat(init): redesign around config sources and additive packs by @jeduden in https://github.com/jeduden/mdsmith/pull/733
* test(architecture): add missing tests for public rule/directive contract methods by @jeduden in https://github.com/jeduden/mdsmith/pull/736
* perf: fix top 5 high-performance-go.md violations (round 6) by @jeduden in https://github.com/jeduden/mdsmith/pull/737
* review: fix double-scan, allocation regression, and test gaps by @jeduden in https://github.com/jeduden/mdsmith/pull/735
* chore(deps): bump golang.org/x/tools from 0.47.0 to 0.48.0 by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/741
* perf: fix top 5 high-performance-go.md violations (round 7) by @jeduden in https://github.com/jeduden/mdsmith/pull/742
* test: add dedicated unit tests for unexported helpers (plan 2607051919) by @jeduden in https://github.com/jeduden/mdsmith/pull/738
* Fix linkgraph purity-contract mismatch for wikilink resolution by @jeduden in https://github.com/jeduden/mdsmith/pull/739
* perf: fix top 5 high-performance-go.md violations (round 8) by @jeduden in https://github.com/jeduden/mdsmith/pull/740
* feat(placeholders): add apm-input-token for APM ${input:NAME} prompt parameters by @jeduden in https://github.com/jeduden/mdsmith/pull/743
* feat(output): add SARIF 2.1.0 output format for mdsmith check and fix --dry-run by @jeduden in https://github.com/jeduden/mdsmith/pull/744
* docs(security): 2026-07-17 post-audit diff review by @jeduden in https://github.com/jeduden/mdsmith/pull/746
* feat(metrics): add `metrics get` subcommand with readability metrics by @jeduden in https://github.com/jeduden/mdsmith/pull/747
* feat(MDS072): add external-link-check rule (issue #47) by @jeduden in https://github.com/jeduden/mdsmith/pull/707
* fix(merge-driver): scope ignore-derived -merge lines to Markdown (#750) by @jeduden in https://github.com/jeduden/mdsmith/pull/752
* docs(wordlists): complete plan 2606251522 — integration test and doc updates by @jeduden in https://github.com/jeduden/mdsmith/pull/748
* feat: foreign managed-region protection for `mdsmith fix` by @jeduden in https://github.com/jeduden/mdsmith/pull/749
* Split init-subcommand logic out of cmd/mdsmith/main.go by @jeduden in https://github.com/jeduden/mdsmith/pull/751


**Full Changelog**: https://github.com/jeduden/mdsmith/compare/v0.52.0...v0.53.0
