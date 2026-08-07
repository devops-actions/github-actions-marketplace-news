---
title: GitGalaxy Scanner
date: 2026-08-07 14:28:01 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v2.4.7
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  GitGalaxy automates the scan of large, multi-language codebases that do not compile cleanly by scanning the entire system as one entity without needing to build each language separately. It provides a comprehensive analysis including SARIF files, CycloneDX SBOMs, and risk-exposure scores per file, folder, and repo, which can be integrated into CI/CD pipelines for faster development and security monitoring.
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v2.4.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## Action Summary

GitGalaxy automates the scan of large, multi-language codebases that do not compile cleanly by scanning the entire system as one entity without needing to build each language separately. It provides a comprehensive analysis including SARIF files, CycloneDX SBOMs, and risk-exposure scores per file, folder, and repo, which can be integrated into CI/CD pipelines for faster development and security monitoring.

## What's Changed

# GitGalaxy v2.4.7: The Calibration Release

v2.4.6 was about proving the regex engine wouldn't break under adversarial input. This cycle closes out two epics that started as a result: a corpus-wide audit of the risk equations for the same class of bug that let one dangerous function call score 10x differently depending on which language it was written in (epic #1056), and a full pass deepening structural-signature test coverage across all 45 supported languages (epic #1069). Along the way, four real extraction-correctness bugs got found and fixed, six separate PRs removed thirteen risk-scoring signals that couldn't be structurally backed by a regex-only engine rather than keeping them at a false confidence level, and a second round of README fixes corrected six more claims that didn't match the code.

## Correctness Fixes: The Extraction Engine

**Nested functions were silently dropped from every language (#1045)**

*What we found:* Two of the extraction engine's four slicing modes (`_slice_by_braces` and `_slice_by_indentation` in `detector.py`) shared a guard — `if start_idx < last_end_idx: continue` — that skipped any function match starting before the previous match's end. A nested or inner function necessarily starts before its enclosing function ends, so every nested function was silently dropped instead of becoming its own `FunctionNode`: undercounting `function_count` and folding the nested function's complexity into its parent's aggregate instead of reporting it separately.

*Why nothing caught it:* no existing test exercised a `def`-inside-`def` or brace-nested function; the suite covered top-level extraction exhaustively but never a nested case.

*What we did:* removed the guard — each match already resolves its own end independently from its own start (brace-depth tracking for braces, dedent tracking for indentation), so once a nested match is allowed through at all it's already correctly bounded. Added regression tests for both brace-style and indentation-style nesting, plus a sibling-nested case.

*Known limitations:* function counts are expected to increase for any corpus file with nested functions — that's the intended effect. Local verification didn't include a `crucible_check.py` run (no `LANGUAGE_CRUCIBLE_PATH` configured for this PR); deferred to CI's `crucible-audit` per the repo's cost-conscious-verification convention.

**Nested classes truncated their own outer class's scope (#1044)**

*What we found:* class scope was computed as "declaration to the *next* class declaration's start," so a class nested inside another one truncated the outer class's scope right where the nested class began — silently dropping every method declared after it from `method_count`, `state_entanglement`, and `lcom_score`.

*Why nothing caught it:* no regression test exercised nested classes; the bug required tracing three separate mechanisms at once (scope resolution, method-to-class linking, and shared string/comment shielding) to reproduce.

*What we did:* resolve each class's real end via brace-depth (or dedent-depth) tracking, the same dispatch already used for function slicing, and fixed method-linking to assign each function to its innermost enclosing class only. Two more bugs surfaced while doing this: `class_pattern`'s leading `\s*` could anchor on a blank line before `class` instead of the declaration itself, corrupting the new indent-depth math (fixed by anchoring on the class name's own position); and `func_start` was matching against pre-macro-shield code instead of post-shield code, so C-family `#ifdef`/`#else` dead-branch shielding had been silently a no-op. Concretely: Godot's `object.h` went from one bogus 464-line `initialize_class` function to roughly 20 correctly-sized, correctly-named real methods — verified by hand against the actual file.

*Known limitations:* none identified beyond scope; both golden-master fixtures were reblessed and `crucible_check.py` passed clean on both full-precision and zero-dependency modes.

**Argument counts inflated by commas inside nested types (#1036)**

*What we found:* argument counting ran `.count(",")` over the whole captured function signature, so any nested comma — generic type hints (`Map<A, B>`, `Dict[str, int]`), default dict/list literals, or nested callback signatures — inflated the count as if each were a separate top-level argument. FastAPI's `HTTPException.__init__`, whose params are wrapped in heavily-nested `Annotated[..., Doc("""...""")]` hints, was a real example of the overcount in the corpus.

*What we did:* added a depth- and string-aware sweep (`_count_top_level_args`) that tracks `()`, `[]`, `{}`, `<>` nesting and skips commas inside string literals, counting only true top-level argument separators.

*Verification:* both golden masters reblessed (structural magnitude and 3D coordinates shift for files with nested-bracket signatures, cascading corpus-wide since positions are relative), `crucible_check.py` clean on both modes, and manual synthetic cases confirmed by hand (`def foo(data: Dict[str, int])` → 1 arg; `def foo(data: dict = {"x": 1, "y": 2}, z=5)` → 2 args; `foo(Map<String, Integer> data, int y)` → 2 args).

**A hardcoded 250-function-per-file cap was silently truncating the densest files in the corpus (#1063)**

*What we found:* `detector.py`'s `MAX_SATELLITES = 250` discarded any function beyond the 250th in a single file, with no flag, log, or trace for consumers. Only 5 files in the ~935-file language-crucible corpus ever hit it (`roslyn/LanguageParser.cs`, `flutter/semantics.dart`, `zig/InternPool.zig`, `wasmtime_pulley_interp.rs`, an Apollo-11 AGC assembly file), but their real function counts — 406 to 607, confirmed locally — were frozen at exactly 250, understating file mass and blinding downstream risk ranking for exactly the files that should have ranked highest.

*What we did:* removed the cap entirely rather than just surfacing a truncation flag — `finditer()` already scans every match unconditionally regardless of the cap, so the only added cost is metric calculation on the extra matches for those 5 files.

*Why the golden-master diff is large:* ~309 entries changed, but the cause is singular — those 5 files' corrected mass ripples into repo-wide summary stats and the 3D spatial layout, since PageRank/blast-radius coordinates are computed relative to the whole corpus. No unrelated file's function count or content changed.

## Risk-Equation Calibration (Epic #1056)

Epic #1056 audited every tier-aware `_calc_*()` risk equation in `signal_processor.py` for the class of bug found in the previous cycle: a language-tier constant (`fc`/`irc`/`ot` — the framework's "how much credit does this language's type system earn" inputs) that inverts or wildly distorts scoring for otherwise-identical evidence. A reusable audit harness (`audit_risk_equations.py`, #1097) swept every equation for two things: direction (tier1 should never score above tier2/tier3 for the same evidence) and magnitude (flagging any tier ratio over 5x). Of the 11 equations in scope, 5 (`_calc_graveyard`, `_calc_api_exposure`, `_calc_spec_alignment`, `_calc_civil_war`, `_calc_secrets_risk`) take no tier constant at all — confirmed tier-blind by construction, not swept further. Of the remaining 6, one had already been fixed (see below) and one more calibration bug turned up:

**Identical dangerous code scored 10x differently depending on language (#1067)**

*What we found:* `_calc_safety()` subtracted a flat 0.25 `systems_buffer` from `net_exposure` for any tier2/tier3 language (Python, JS, C/C++, Ruby, Kotlin, PHP, and everything else). Since real files' `net_exposure` is typically well under 0.25, the flat subtraction wiped out nearly all attack signal instead of tempering it: identical dangerous-execution evidence — one `eval()`/`os.system()` call — scored 52–66 on a Rust file but only 5–7 on a Python file of the same size.

*What we did:* replaced the flat subtraction with a proportional discount (`systems_buffer_ratio`, default 0.75) applied to attack density itself, so small signal takes a small hit and large signal a proportionally larger one, never erased outright.

*Verification:* golden masters reblessed — the fix intentionally raises `safety_score`/`cumulative_risk` for a large fraction of non-tier1-language files in the corpus, which is the point of the fix. `crucible_check.py` clean on both modes.

**`high_risk_execution` was double-counted across two risk dimensions (#1061)**

*What we found:* a single `eval`/`exec`/shell-execution call was weighted in both `cognitive_load` (as part of `heavy_logic`'s danger density) and `safety_score` (its intended home dimension), compressing the risk axis and diluting signal from other structural dangers.

*What we did:* removed it from `cognitive_load`; `safety_score` keeps it as designed.

*Verification:* all 213 diffs in each reblessed golden-master fixture were `cognitive_load` decreases — exactly the expected effect, with no other risk dimension moving.

**Small files diverged up to 8.4x by language tier on identical documentation evidence (#1100)**

*What we found:* running the new audit harness surfaced that `_calc_documentation()` was the only tier-aware equation with no small-file smoothing term, causing up to 8.38x tier1-vs-tier3 divergence for identical documentation evidence at 10–20 line files, versus a normal 1.2–1.7x divergence at typical 150–500 line files. A secondary bug: a genuinely risk-free file scored a spurious ~11.92 (the sigmoid's asymptotic floor at zero density) instead of a true 0.

*What we did:* added a `loc_smoothing` constant (default 20.0), matching the existing pattern already used by `_calc_safety`'s `laplace_smoothing` and `_calc_concurrency`/`_calc_state_flux`'s `loc_padding`, plus an early zero-hit return guard.

*Verification:* tier2-vs-tier3 divergence at `loc=10, hits=1` dropped from 8.38x to within the expected pair range; both golden masters reblessed (all 572 diffs per fixture are documentation-exposure decreases for small files — the intended effect); `crucible_check.py` clean on both modes.

## Metrics Removed as Overreaching (continuing Epic #1025)

The same pattern from last cycle — a score built from unrelated regex hit-counts co-occurring in a file, presented with a confidence a regex-only engine can't structurally back — turned up in six more places and was removed rather than kept at a false confidence level:

- **LCOM** (#1042): computed `total_flux / total_args`, a ratio of unrelated hit-counts with no real connection to method-to-method cohesion. Investigating a proper redesign surfaced the two nested-scope bugs fixed above as prerequisites — and even with those fixed, a regex-only cohesion measure has systematic style-driven blind spots (shared "blob" attributes like `self.state`/`self.logger` make god-objects look maximally cohesive; Python's `@property` splits one logical field into two names; composition hides real coupling that never touches `self`). Removed outright rather than reimplemented under those constraints.
- **Five AST-dependent Security & Vulnerability metrics** — `prompt_injection`, `agentic_rce`, `injection_surface`, `obscured_payload`, `memory_corruption` (#1038): built from unrelated regex categories co-occurring with zero real data-flow or control-flow proof. `llm_recorder.py` had been reporting these as "🚨 Agentic RCE (Critical)... confirmed execution vectors." Two issues turned up beyond the removal plan itself: a `KeyError` risk in `audit_recorder.py` that hardcoded a label lookup into the mapping being trimmed (would have thrown on the next real scan), and a schema distinction that mattered — `SIGNAL_SCHEMA`'s positional order feeds the archetype-classifier's K-Means feature vector, unlike `RISK_SCHEMA` (output-only), so naively deleting entries would have silently reclassified nearly every file's architectural archetype corpus-wide. Only caught by reading a full golden-master diff line-by-line; invisible to the unit suite.
- **`big_o_depth` and `is_recursive`** (#1032): indentation-depth Big-O tracking and name-occurrence recursion detection, both systematic false-positive generators — whitespace geometry isn't algorithmic complexity, and counting a function's own name inside its body triggers on docstrings, comments, and patterns like `super().setUp()`. Removed engine-wide, including the "Algorithmic Network Bottleneck" feature in `network_risk_sensor.py` and the concurrency starvation multiplier that depended on it.
- **`logic_bomb` and `algorithmic_dos`** (#1029): flagged standard defensive-validation code and deeply-indented-but-harmless server loops as malicious via regex co-occurrence rather than real control/data-flow analysis. Removed engine-wide, including the two dedicated wiki pages that documented them.
- **`db_complexity`** (#1021): summed unrelated `io`, `serialization_parsing`, and `state_mutation` hit-counts, so any IO-heavy or mutation-heavy function scored as "DB complex" with zero actual database or ORM involvement. Removed from 5 downstream consumers beyond the issue's own checklist, found by grep rather than guesswork.
- **`ai_appsec_sensor.py`'s RCE-funnel and exfiltration co-occurrence checks** (#1103): the exact hallucinated-co-occurrence pattern already removed from `RISK_SCHEMA`/`SIGNAL_SCHEMA` above, reimplemented independently under different field names in this module — so the earlier removal's blast-radius grep (searching for the removed schema *names*) never found it. Arguably worse than what it duplicated: `sarif_recorder.py` had been surfacing these at SARIF's blocking-confidence `error` level, which GitHub code scanning and most CI gates treat as a confirmed finding. The surviving `over_permissioned_agent` check is untouched — it gates on a library-import signal (an agent-orchestration framework is present), not a runtime-behavior claim.

## Structural-Signature Test Hardening (closes Epic #1069)

Epic #1069 deepened the non-extraction-pillar structural-signature test suite (branch/io/safety_bypasses/ReDoS coverage — not the four `func_start`/`args`/`class_start`/`_dependency_capture` extraction regexes) across all 45 supported languages. All five sub-issues closed this cycle:

- **ReDoS coverage for 6 languages with none** (#1077): haskell, kotlin, lua, ruby, scala, and swift had zero `assert_redos_immune` calls anywhere in their strict test files. Every candidate rule was diagnosed with a geometric-scaling check before writing a test; all came back linear. No regex bugs found.
- **Proved the remaining ReDoS coverage gap wasn't hiding anything** (#1083): built a geometric sweep scanner (`sweep_redos_scaling.py`) that intercepts every `assert_redos_immune` adversarial payload across the entire suite and evaluates it at N = 2,000 through 128,000. Result: 300 rules across 37 languages, zero exhibiting true O(n²) scaling.
- **44 signature keys with zero test coverage across 6 languages** (#1079): most notably, Python's and JavaScript's entire AI/ML extension pack (`llm_api`, `llm_orchestrator`, `llm_vector_store`, `ml_traditional`, `dl_frameworks`) had no detection test coverage at all — a real blind spot in a supply-chain-risk detection feature, not just a test-depth gap. Every candidate empirically verified against the real compiled regex; no engine bugs found.
- **False-positive (ghost-prevention) coverage for 17 languages** (#1081): over 70% of those languages' test cases had no negative/lookalike snippet at all. Generated realistic near-miss snippets (boundary-sensitive substrings, keyword-referencing comments, case-mismatched identifiers) for all of them; zero real regex bugs found despite hundreds of adversarial lookalikes thrown at the engine.
- **Deep adversarial case coverage across effectively every language** (#1087): multi-line splits, modifier stacking, nested generics, boundary noise. Found and fixed several real regex gaps along the way: a missing Swift `throws` binding, PowerShell `hidden`/`static` method modifiers, Lua generic types, and tightened multiline/nested-bracket bounds that closed a couple of ReDoS gaps on closures and lambdas.
- **Tooling**: `audit_strict_coverage.py` (the coverage-gap detector that founded the epic), a generalized `verify_candidates.py`, the `how_to_harden_strict_signatures.md` checklist, and a Haiku-pinned `strict-signature-scout` subagent so this mechanical gap-reporting work doesn't run on a premium model (#1075).

Every PR in this epic that touched an actual regex pattern reblessed both golden masters and passed `crucible_check.py` clean on both full-precision and zero-dependency modes before merging.

## README & Docs Credibility Pass

A second round responding to the same "too much marketing language" feedback that started the correction v2.4.6's release notes exemplified the wrong way to respond to:

- **Tone/accuracy pass across all 20 READMEs** — root, all 13 module/tool READMEs, all 6 `tests/` READMEs (#1106): reordered sections by how a skeptical reader would trust them (proof and benchmarks before adoption numbers), added a comparison table against Semgrep/CodeQL/Snyk/Dependabot, and added `docs/how_to_maintain_the_readme.md` plus `docs/how_to_write_release_notes.md` as durable style guides — this note follows them. Found real bugs while doing it, not just tone: the root README's "0 dependencies" claim was false (PyYAML was a hard dependency; fixed for real this cycle, see below); `dev_agent_firewall.py`'s README described a nonexistent "complexity factor" and a removed threshold as current; `supply_chain_security/README.md` attributed `manifest_parser.py` to the wrong directory; three mutually inconsistent throughput numbers (40k/90k/100k LOC/s) appeared across two READMEs, none matching the actual measured 71,076 LOC/s benchmark average; contributor docs told readers to run `python3 -m unittest discover tests/` when the real test runner is pytest; `tests/cobol_mainframe/readme.md` was a stale duplicate of the old whole-suite index, describing the wrong 12 files.
- **Replaced a fully copy-pasted README** (#1108): `gitgalaxy/tools/terabyte_log_scanning/README.md` was a verbatim copy of `cobol_to_java/README.md` — same title, same COBOL module list, same CICS transcript — and never once mentioned the two scripts actually in that directory. Rewritten after reading both scripts in full, with a real verified example run (a synthetic log containing one Visa number, one SSN, one AWS key — actual CLI output and actual masked evidence log, not invented numbers).
- **Added a "What Pain Point Does This Solve?" section ahead of the architecture diagram** (#1107): direct response to feedback that a first-time reader couldn't tell whether GitGalaxy competes with CodeQL/Semgrep/SonarQube before reading fairly deep into the README. Cites a real, checkable example — Kubernetes, 1.39M LOC across Go/YAML/JSON/Shell/Proto, scanned in 50.83s — instead of an abstract claim, and states plainly that a handful of 20M+ LOC repos take a few minutes rather than asserting a blanket "under a minute."
- **Backed the speed claim with a fitted rate model instead of one example** (#1113): `time(s) ≈ 3.36e-05 × LOC^0.969` above ~4,258 LOC (R²=0.88, fit from a 599-repo batch), flat ~0.11s below that threshold, with a self-updating chart embedded from the benchmark repo instead of a static image that would go stale.

## Dependencies & Supply Chain

**Restored the true 0-dependency install (#1112)**

*What we found:* `pyproject.toml` listed `PyYAML>=6.0` as a hard install-time dependency even though it's only ever imported lazily at 3 call sites (`config_resolver.py`, `full_api_network_map.py`, `galaxyscope.py`'s `--config` handling), all originally designed to tolerate its absence. `galaxyscope.py`'s `--config` interceptor did the worst version of this: on missing PyYAML it silently no-opped with zero log output.

*What we did:* moved PyYAML into a `gitgalaxy[yaml]` optional extra (core `dependencies` is now `[]`), and hardened all 3 call sites to fail loudly with an actionable install command instead of silently doing nothing. Every CI workflow and pipeline template that assumes YAML support now installs the `[yaml]` extra explicitly.

**Manifest-parser ecosystem expansion (#1050)**

Extended SBOM dependency extraction and physical on-disk verification to modern Python (`pyproject.toml`/`poetry.lock`/`Pipfile`), .NET/NuGet, C/C++ (Conan/vcpkg), Gradle, CocoaPods, Swift Package Manager, Dart/Flutter, and JS/TS alternative lockfiles (`yarn.lock`/`pnpm-lock.yaml`). Extended supply-chain security auditing (direct git/URL dependency refs, insecure registries) to `pyproject.toml`, `yarn.lock`, and Gradle build scripts.

## Wiki & Docs Site

Four fixes to the GitHub Pages wiki (324 pages), found during an audit this cycle:

- 106 dead `file:///home/...` absolute-path links across 82 pages — resolved only on the original author's own machine — rewritten to real GitHub blob URLs or relative wiki paths (#1117).
- Enabled Material for MkDocs' `navigation.tabs`/`sections`/`search`/`content.code.copy` features, never turned on despite the wiki's size; fixed a resulting 13-tab overflow (confirmed in the built CSS) by consolidating the 8 numbered sections under one tab (#1123).
- Added a discovery index for 56 previously-unlinked per-repo architectural-brief pages that had no path to them from the site nav (#1125).
- The homepage's hand-maintained "Master Documentation Index" had drifted from the real site nav — Claims 8 and 10 were promoted as must-reads in a callout box above it, then missing from the index itself, along with 9 other pages promoted the same way. Renamed it to "Quick Navigation (Popular Starting Points)" with an honest disclaimer instead of building sync tooling to keep two copies of the nav in lockstep, and fixed every section where a page was promoted above but missing below — verified programmatically against `mkdocs.yml`'s nav, not by re-reading the page a second time (#1127).

## Tooling & Internal

- **Fixed `--incremental` Delta Scan, broken since it was added** (#1034): `galaxyscope.py` imported `state_rehydrator` from the wrong module path (`ModuleNotFoundError` on every real invocation). Masked because the only test covering it mocked the import at both the correct and the incorrect `sys.modules` path "to ensure any underlying import passes smoothly" — the test was written to tolerate the exact bug it should have caught. Verified the fix with a row-for-row parity check between an incremental scan and a fresh full scan of the same commit: identical file/function/complexity counts and PageRank scores across 224 files and 1,170 functions.
- Reframed the LLM Recorder's system prompt from a rigid SAST-analyzer persona to a "Technical Storyteller" persona, with an explicit instruction not to restate a heuristic's raw label (e.g. "Logic Bomb") as a confirmed finding of malice (#1048).
- Split a single 14,664-line, 621-test strict-signature file into 45 per-language files, then colocated them alongside the existing per-language extraction tests (#1057, #1059).
- CI: added, then partially reverted, a `workflow_dispatch` trigger after push-triggered scans silently stopped firing for 4 consecutive merges to `main` (#1109, #1110); regenerated a ruff baseline that had drifted from an unrelated PR's line-shifts and was failing every subsequent PR's lint gate regardless of what it touched (#1114); routine CodeQL and Muninn scanner version bumps (#1028, #1022).
- Added the `harden-language-extraction` skill, cross-referenced from `CLAUDE.md`, for future per-language hardening work.

## Known Limitations, Documented and Deferred on Purpose

- The 5 risk equations confirmed tier-blind by construction (`_calc_graveyard`, `_calc_api_exposure`, `_calc_spec_alignment`, `_calc_civil_war`, `_calc_secrets_risk`) were not audited for other calibration issues this cycle — epic #1056 only confirmed they take no tier constant, not that they're otherwise correct.
- The AST-dependent metrics removed this cycle (`prompt_injection`, `agentic_rce`, `injection_surface`, `obscured_payload`, `memory_corruption`, plus `ai_appsec_sensor.py`'s RCE-funnel/exfiltration checks) have no regex-only replacement. This is an intentional scope reduction, not a temporary gap — GitGalaxy currently makes no claim about AI-agent RCE or prompt-injection risk beyond the surviving `over_permissioned_agent` (import-identity) signal.
- 19 Museum of Code teardown pages remain unwired from the wiki's site navigation, reachable only by an in-page link from the Museum's own index rather than the sidebar — out of scope for this cycle's wiki fixes, tracked separately.

---

**Full changelog:** [`v2.4.6...v2.4.7`](https://github.com/squid-protocol/gitgalaxy/compare/v2.4.6...v2.4.7)

