---
title: ansede-static
date: 2026-07-01 22:44:25 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Ansede
marketplace: https://github.com/marketplace/actions/ansede-static
version: v5.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mattybellx/Ansede** to version **v5.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansede-static) to find the latest changes.

## What's Changed

## [5.0.0] — 2026-06-27

### Added
- **Rust Pattern Engine** — Native regex matching via PyO3 (`ansede_rust_core`), 3.6x faster on large files with graceful Python fallback
- **Java Tree-Sitter AST Analyzer** (`java_ast_analyzer.py`) — Replaces regex heuristics with accurate AST parsing. 9 checkers: CWE-89, CWE-78, CWE-328, CWE-918, CWE-601, CWE-79, CWE-798, CWE-22, CWE-862
- **4 New Detectors**: CWE-942 (CORS wildcard), CWE-94 (Jinja2 SSTI), CWE-362 (TOCTOU), CWE-862 (Spring Actuator)
- **Precision Benchmark Harness** (`benchmarks/precision_benchmark.py`) — Multi-language, multi-repo precision tracking with per-CWE heatmaps
- **`is_framework_internal()` context filter** — Suppresses findings in framework/library internals (Flask src/, Express lib/)
- **21-repo scale proof** — Validated across 7 languages with 99%+ precision on clean code

### Changed — Precision (99.4% FP Reduction)
- **Calibration**: Removed bare method names (`exec`, `query`, `execute`, `raw`) from callee sets to prevent Mongoose/ORM false positives
- **Calibration**: `JS-023` regex anchored with `(?<!\.)` to prevent Browserify `.require()` false positives
- **Calibration**: Extended ambiguous callee guard to `resolve`/`join` for path traversal
- **Calibration**: `JS-018` `__proto__:null` now recognized as defensive pattern, not prototype pollution
- **Calibration**: Java `write()` XSS check requires HTTP response receiver, not JSON writer
- **Calibration**: 9 CVE benchmark severity thresholds corrected (MEDIUM→MEDIUM, not HIGH)
- **Calibration**: `CWE-295`, `CWE-502`, `CWE-532` added to test-file noise filter

### Changed — Performance (96% Faster)
- **AST walk cache**: Pre-computed per-function node lists shared across all 49 Python rules
- **`_rule_24` fix**: Module-level AST walk moved outside per-function loop (20x → 1x)
- **Lazy symbolic guards**: Skip when no findings or conditionals present
- **Lazy datascience rules**: Skip for files without DS imports
- **Java regex→AST**: Always uses tree-sitter when available, eliminating regex overhead

### Fixed
- **Windows path handling**: `\tests\`, `\examples\`, `\docs\` backslash patterns in triage filters
- **Empty CWE display**: `PY-003` assigned `CWE-252`, `PY-044` assigned `CWE-1120`
- **Test-file CWE-98 suppression**: Dynamic require in test files correctly filtered
- **CVE Recall**: 92.7%→100% (164/164 across 5 languages)

### What's New Since v4.1.0
- **100% CVE recall** (164/164) — every known vulnerability detected
- **99.4% FP reduction** on 5 clean repos (535→3 findings)
- **86% FP reduction** on 21 repos across 7 languages
- **96% faster** Python scanning (2,600→5,100 LOC/s)
- **3.6x faster** JavaScript pattern matching via Rust engine
- **Java AST analyzer** replaces regex, PetClinic: 38→0 findings


