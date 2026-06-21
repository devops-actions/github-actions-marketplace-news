---
title: mdsmith Markdown linter
date: 2026-06-21 06:52:58 +00:00
tags:
  - jeduden
  - GitHub Actions
draft: false
repo: https://github.com/jeduden/mdsmith
marketplace: https://github.com/marketplace/actions/mdsmith-markdown-linter
version: v0.51.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/jeduden/mdsmith** to version **v0.51.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mdsmith-markdown-linter) to find the latest changes.

## What's Changed

## What's Changed
* perf: configured-rule cache (−78% allocs) + SIMD newline scan + directive-free fast path by @jeduden in https://github.com/jeduden/mdsmith/pull/641
* perf(MDS002): Layer-0 parse-skip path for heading-style (parity migration, 1/N) by @jeduden in https://github.com/jeduden/mdsmith/pull/643
* perf: vectorize whole-buffer byte scans with bytes.IndexByte/Count + document the lesson by @jeduden in https://github.com/jeduden/mdsmith/pull/642
* perf: let the Layer-0 parse-skip engage on code-bearing files by @jeduden in https://github.com/jeduden/mdsmith/pull/644
* plan: break the parity parse-skip migration into five batches by @jeduden in https://github.com/jeduden/mdsmith/pull/645
* perf(engine): unify the two Layer-0 parse-skip gates (plan 2606171400) by @jeduden in https://github.com/jeduden/mdsmith/pull/647
* plan(2606171401): correct the heading-rule migration approach (config-aware, depends on #647) by @jeduden in https://github.com/jeduden/mdsmith/pull/648
* perf: Layer-0 parse-skip for MDS010/MDS011/MDS031 (fenced-code batch, 3/5) by @jeduden in https://github.com/jeduden/mdsmith/pull/649
* plan(2606171136): mark configured-rule cache plan complete by @jeduden in https://github.com/jeduden/mdsmith/pull/646
* plan(2606171258): sync master scope inventory with the batch plans by @jeduden in https://github.com/jeduden/mdsmith/pull/650
* plan: line-rule fusion — spiked, measured, deprioritized (no win) by @jeduden in https://github.com/jeduden/mdsmith/pull/651
* feat(2606171402): migrate MDS065 and MDS066 to Layer-0 nil-AST path by @jeduden in https://github.com/jeduden/mdsmith/pull/652
* feat(2606171403): migrate list and blockquote parity rules to Layer-0 nil-AST path by @jeduden in https://github.com/jeduden/mdsmith/pull/653
* fix(deps): bump markdown-it to 14.2.0 and js-yaml to 4.2.0 by @jeduden in https://github.com/jeduden/mdsmith/pull/659
* perf: replace fmt.Sprintf with strconv across 5 hot paths (top-5 high-perf-Go audit) by @jeduden in https://github.com/jeduden/mdsmith/pull/654
* feat(2606171404): migrate 11 parity rules to Layer-1 nil-AST inline path by @jeduden in https://github.com/jeduden/mdsmith/pull/655
* feat: add nil-AST (parse-skip) paths to MDS003, MDS004, MDS051; classify MDS069 Layer 0 by @jeduden in https://github.com/jeduden/mdsmith/pull/656
* perf: top-5 hot-path optimizations per high-performance-go.md audit by @jeduden in https://github.com/jeduden/mdsmith/pull/658
* chore(deps): bump golang.org/x/sys from 0.44.0 to 0.46.0 by @dependabot[bot] in https://github.com/jeduden/mdsmith/pull/660
* perf: eliminate allocation in isMarkdownPath; add coverage tests for map-set changes by @jeduden in https://github.com/jeduden/mdsmith/pull/662
* feat(2606171258): promote MDS066 to Layer 0 so parity skips the parse by @jeduden in https://github.com/jeduden/mdsmith/pull/661
* security: 2026-06-19 full-repo and LSP/VSCode audit results by @jeduden in https://github.com/jeduden/mdsmith/pull/663
* Generalize the B-prose-only Layer-0 promotion (supersedes blockSkipSafe) by @jeduden in https://github.com/jeduden/mdsmith/pull/665
* fix(security): add defer recover() to lintFile to contain rule panics (S003) by @jeduden in https://github.com/jeduden/mdsmith/pull/666
* security: address low/info findings from 2026-06-19 full-repo audit (S004-S007) by @jeduden in https://github.com/jeduden/mdsmith/pull/667
* security: replace os.DirFS with os.OpenRoot to contain symlink escapes (S001, S002) by @jeduden in https://github.com/jeduden/mdsmith/pull/668
* security(S006,S007): add Workspace Trust gates to kinds and rule-doc VS Code commands by @jeduden in https://github.com/jeduden/mdsmith/pull/669
* fix(security): panic recovery and security hardening (rounds 1–3) by @jeduden in https://github.com/jeduden/mdsmith/pull/670


**Full Changelog**: https://github.com/jeduden/mdsmith/compare/v0.50.0...v0.51.0
