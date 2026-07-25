---
title: GitGalaxy Scanner
date: 2026-07-25 00:18:15 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v2.4.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  GitGalaxy automates security and architecture assessments for repositories, offering a deterministic audit tool that can scan multiple languages and detect risk exposures in full repos, providing actionable fixes to lower those risks. It uses a custom regex/lexical structural-analysis engine to identify code patterns relevant to security and architecture, generating normalized 0–100 risk scores and exporting the results in various formats for further analysis.
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v2.4.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## Action Summary

GitGalaxy automates security and architecture assessments for repositories, offering a deterministic audit tool that can scan multiple languages and detect risk exposures in full repos, providing actionable fixes to lower those risks. It uses a custom regex/lexical structural-analysis engine to identify code patterns relevant to security and architecture, generating normalized 0–100 risk scores and exporting the results in various formats for further analysis.

## What's Changed

# GitGalaxy v2.4.5: The Correctness Release

This is a dense one. Where v2.4.0 was about getting GitGalaxy's findings *in front of* more people (SARIF everywhere, every CI platform), v2.4.5 is about making sure the findings underneath are actually true. It closes two long-running epics, fixes a critical bug that had silently disabled a core engine for every one of GitGalaxy's 58 supported languages, patches a disclosed CVE, and knocks out ~20 smaller data-integrity fixes along the way.

## Critical Fix: The Comment/Code Separation Engine Was Broken for Every Language (#386, #390)

**What we found:** My previous workflow resulted in Gemini based bug patterns of consumer producer mismatches of keys between files. Explicitly revealed with `prism.py`, the module responsible for stripping comments from source before analysis, was looking up its per-language delimiter rules under config keys (`mechanical_families`, `recursive_c_style`, `column_sensitive`, `single_line_only`, `c_style_comment`) that no producer in the codebase had ever written. The real config used a different taxonomy entirely. Every lookup silently fell through to defaults, meaning comment stripping had been non-functional — or working by pure coincidence — across all 58 supported languages since the feature was introduced.

**Why nothing caught it:** `test_prism.py`'s test fixtures were hand-built mocks that mirrored the *wrong* key names, so they were internally consistent with the bug and passed cleanly for hundreds of runs. Real production config and test config had quietly diverged.

**What we did:** Renamed the lookups to match the real taxonomy (`lexical_families`, `recursive_block`, `positional_anchored`, `line_exclusive`, `standard_block`), replaced the mocks with tests that exercise the actual `LANGUAGE_DEFINITIONS`/`LEXICAL_FAMILY_HEURISTICS` config, and — in a follow-up (#390) found while double-checking the first fix — caught and fixed one more missed reference in `_strip_nested_comments()` that had been masked by a fallback value that coincidentally matched the correct data. The new regression test uses non-default delimiters specifically so that kind of coincidence can't hide a bug again.

**Known limitations, documented and deferred on purpose:** a 9-delimiter gap in `standard_block` affects 5 non-C-style languages, and `golden_master.json` was not regenerated as part of this fix. Both are scoped as explicit follow-ups rather than folded in here.

## New: The Dead Key Auditor, and the Closure of Epic #325

Epic #325 tracked a recurring failure pattern across the codebase: a consumer reads `data["some_key"]`, but no producer anywhere ever writes `"some_key"` — a silent, type-checker-invisible class of bug.

* **Built `tests/dead_key_audit.py`:** an AST-based static analyzer that walks the codebase, cross-references every dict-key read against every dict-key write (including f-string prefix patterns like `f"sec_{key}"`), and reports the gaps.
* **Wired it into CI** (`dead-key-audit.yml`) as a baseline-gated required check — new dead keys fail the build, but the tool doesn't demand the whole codebase be clean on day one.
* **Ran it, and fixed all 15 findings it surfaced**, filed and closed individually (#364–#378):
  - Every recorder read `"AI Threat Score"`; the producer wrote `"AI Threat Confidence"` (#364)
  - `AIAppSecSensor`'s Over-Permissioned Agent rule was reading a dead `ai_tools` signal instead of `llm_orchestrator` (#365)
  - Four dead security-flag SQLite columns in `record_keeper.py` (#366–#369)
  - `repo_z_score` and `typosquat_hits` were computed but never backfilled into the summary, in both the main and Delta Mode pipelines (#370, #371, #376)
  - `max_big_o` was written onto the graph node but never copied back onto the file dict (#372)
  - `has_tests` was a dead read; wired to real `test_coverage_map` (#373)
  - `aperture_reason` vs. `reason` key mismatch across `signal_processor.py`/`audit_recorder.py` (#374)
  - Missing `TYPOSQUAT_WHITELIST` in `APERTURE_CONFIG` (#375)
  - Missing cross-referenced `disqualifiers` for `matlab` and `objective-c` language definitions (#377)
  - The `mechanical_families` investigation above, which escalated into #386 (#378)

The baseline file is now empty — every finding the tool surfaced this cycle has been resolved.

## Epic #102 / #348: Spatial Correlation, Phase 2–3

Continued work on satellite-aware, post-hoc spatial correlation of security signals:

* **Persisted a satellite-aware spatial ledger** for post-hoc correlation across scans (#348)
* **Scoped dampener correlation to real function boundaries** instead of naive proximity (#346, phase 1)
* **Implemented the Spatial Radar for DB injection funnels** (#105)
* **Spatially verified Metaprogramming Hallucination Risk** in the Dev Agent Firewall (#106)
* **Scoped the Exfiltration Distance Check** to real function boundaries (#102)
* Fixed `detector.py`'s dead RCE-taint corroboration and a `sec_` merge overwrite bug that had been silently dropping signals (#344)

## Config Resolver: Phase 0–1

Started consolidating GitGalaxy's config precedence rules (CLI flags, YAML, env, defaults) into a single, testable merge point:

* Added `config_resolver.py` with a single `ResolvedConfig` merge point (Phase 1)
* Migrated `galaxyscope.py`'s `main()` and 7 direct `gitgalaxy_config.py` importers off scattered module-level constants

## Security

* **Patched a disclosed CVE** (GHSA-9xwg-3r6f-jcx2 / CVE-2026-61632, path traversal in `pymdown-extensions`'s `b64` extension) by bumping to `11.0.1`
* Fixed churn risk silently scoring zero for docs and critical-secret-leak files (#245)
* Fixed a CLI/YAML sentinel-collision bug in the pipeline-flag interceptor that could cause flags to be silently ignored (#247)
* Made Aperture's file-size gate tiered and intent-aware instead of a single blunt cutoff (#343)

## Precision & Data-Integrity Fixes

A long tail of quieter correctness fixes, several with real blast radius:

* `IGNORED_DIRECTORIES` case-mismatch was silently disabling 9 ignore rules (#306); GuideStar wasn't even pointed at the shared set (#319)
* Case-insensitive matching for shadow-API file extensions (#320) and SBOM malware-scan candidates (#321)
* Confidence/exposure scores that could exceed their intended 0–100 or 0–1 scale now clamp correctly (#310, #318, #331)
* Removed several dead reads that had been silently no-op'd for a while: `func_empty`/`keyword_debt` in tech-debt scoring (#308), `ai_tools`/`ai_memory`/`ai_logic_loop` from `SIGNAL_SCHEMA` (#323)
* Fixed `zero_dependency_mode` under-reporting during incremental scans (#307)
* `AIAppSecSensor` was reading its 8 inputs from a phantom telemetry namespace that nothing wrote to (#326)
* `duplicate_logic` count wasn't being aggregated into equations the way `orphaned_logic` was (#327)
* Wired opt-in network-centrality risk weighting into the firewall (#304), and the supply chain firewall into `SignalProcessor`'s risk vector (#302)
* Fixed a file-miscounting bug for files sharing the same name (#261/#273)
* Fixed docstring harvesting running past a stand-alone closing delimiter (#279)

## Type Safety

Closed out a focused mypy-hardening pass: fixed indexing and type-spoofing errors across `state_rehydrator.py`, `cobol_jcl_auditor.py`, `llm_recorder.py`, `galaxyscope.py`, and `FunctionNode`'s `TypedDict` schema (#293–#301), plus a mass annotation cleanup.

## Supply Chain / SBOM

* Unified manifest-filename registries, fixing mixed-ecosystem SBOM starvation (#285)
* Added a dependency audit cache and entry-point priority audit ordering (#283, #284)
* Consolidated manifest parsing into `manifest_parser.py`

## Docs & CI

* Corrected docs/CI-template accuracy repo-wide ("Honest READMEs") and added a GitHub Actions reporting stage (#264)
* Fixed the LLM architectural brief bot's identity and its workflow (it now opens a PR via a forked `create-pull-request` action instead of pushing directly to protected `main`)
* Pinned `galaxyscope --output` to a file, not a folder, to match downstream SARIF/SBOM/LLM paths (#265)
* Bumped Muninn (our CI security scanner) to v0.3.5 and then v0.3.6

---

**Full changelog:** [`v2.4.0...v2.4.5`](https://github.com/squid-protocol/gitgalaxy/compare/v2.4.0...v2.4.5)

