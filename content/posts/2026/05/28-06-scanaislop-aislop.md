---
title: aislop Quality Gate
date: 2026-05-28 06:42:53 +00:00
tags:
  - scanaislop
  - GitHub Actions
draft: false
repo: https://github.com/scanaislop/aislop
marketplace: https://github.com/marketplace/actions/aislop-quality-gate
version: v0.9.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/scanaislop/aislop** to version **v0.9.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aislop-quality-gate) to find the latest changes.

## Action Summary

**aislop** is a GitHub Action and CLI tool designed to detect and address common issues introduced by AI coding agents, such as redundant comments, dead code, unused imports, and other problematic patterns across multiple programming languages. It automates code quality checks, provides a score for changes, and offers quick auto-fix options, ensuring cleaner and more maintainable code. With deterministic behavior and no runtime dependency on AI models, it helps teams maintain high-quality codebases efficiently.

## What's Changed

Four new Python rules drawn from the verbosity signal in SlopCodeBench (SCBench, arXiv 2603.24755). Scan output now ends with a one-line nudge back to the GitHub repo. GitHub Discussions is open with structured templates for false-positive reports and rule requests.

### Added

- **`ai-slop/python-range-len-loop` (info, #134).** Flags `for i in range(len(items))` loops that usually want `enumerate(items)` or direct iteration. Hand-rolled index plumbing is a recurring agent shortcut; SCBench's Python track surfaces it as a verbosity contributor.
- **`ai-slop/python-chained-dict-get` (warning, #134).** Flags `.get(..., {}).get(...)` fallback chains. The empty-dict default hides missing-data cases and turns brittle as schemas evolve. Help text points to boundary normalization or typed objects.
- **`ai-slop/python-repetitive-dispatch` (warning, #134).** Flags ladders of 4+ `if x == "..." / elif x == "..."` branches sharing the same selector. Recommends a handler map / dispatch table. Threshold is configurable in code (`BRANCH_LADDER_THRESHOLD`).
- **`ai-slop/python-isinstance-ladder` (warning, #134).** Flags 4+ chained `isinstance(...)` branches on the same value. Recommends a handler map or normalized representation.
- **CLI star CTA (#132).** `aislop scan` ends with one muted line: `★ Found this useful? Star us at github.com/scanaislop/aislop`. Suppressed in JSON output, in `aislop ci`, and for any caller that passes `printBrand: false` (hook integrations).
- **GitHub Discussions surface (#126).** Discussions enabled on the repo with two issue-form templates: `false-positive.yml` (rule name, snippet, reasoning, version) and `rule-request.yml` (pattern, what should pass, suggested name, language). README links to Discussions and Issues from a new `## Community` section.

### Improved

- **README headline and lead description (#131).** Replaces enterprise-flavoured copy with a direct verb. The lead names the agents (Claude Code, Cursor, Codex, OpenCode) and the patterns they leave behind; the second paragraph names rule count, languages, determinism, and licence so the proof and the hook sit together at the top.

### Tests

35 new tests covering the four Python rules (positive and negative cases each). `tests/python-patterns.test.ts` now has 24 tests; full suite 842 passing.



## What's Changed
* chore(scanaislop): apply force fixes (deps, unused files) by @scanaislop[bot] in https://github.com/scanaislop/aislop/pull/125
* docs(community): enable Discussions surface by @heavykenny in https://github.com/scanaislop/aislop/pull/126
* docs(readme): sharpen the headline and lead description by @heavykenny in https://github.com/scanaislop/aislop/pull/131
* feat(cli): print one-line star CTA after scan output by @heavykenny in https://github.com/scanaislop/aislop/pull/132
* feat(python): four SCBench-inspired verbosity rules by @heavykenny in https://github.com/scanaislop/aislop/pull/134
* chore: release 0.9.4 by @heavykenny in https://github.com/scanaislop/aislop/pull/135
* release: v0.9.4 — Python SCBench rules + CLI star CTA + Discussions by @heavykenny in https://github.com/scanaislop/aislop/pull/136


**Full Changelog**: https://github.com/scanaislop/aislop/compare/v0.9.3...v0.9.4
