---
title: ansede-static
date: 2026-07-04 06:22:51 +00:00
tags:
  - mattybellx
  - GitHub Actions
draft: false
repo: https://github.com/mattybellx/Ansede
marketplace: https://github.com/marketplace/actions/ansede-static
version: v5.5.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mattybellx/Ansede** to version **v5.5.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ansede-static) to find the latest changes.

## What's Changed

## [5.5.0] — 2026-07-03

### Added
- **Runtime framework-root detection** (`_detect_framework_root`) — auto-detects framework/library repos from package metadata, enabling noise suppression on arbitrary cloned repos (not just known benchmark paths)
- **Test-file noise policy** (`_is_test_file`, `_TEST_FILE_NOISE_RULES`) — suppresses CWE-798/327/338 findings in test fixtures, examples, and demos
- **Expanded framework-internal path markers** — 60+ new patterns covering cloned campaign repos (`py-flask/`, `js-express/`, etc.) and installed packages
- **Confidence downgrading** for non-exempt framework-internal findings (0.5 cap) and test-file findings (0.6 cap)

### Changed
- **`rich` moved to production dependencies** — declared explicitly in `pyproject.toml`; guardrails updated to 10MB limit with `rich` allowlist
- **CWE-617 severity**: `high` → `medium` (error-handling, not direct exploit)
- **CWE-532 severity**: `high` → `medium` (information leak)
- **README precision claims** — replaced "0.4% FP rate" with honest "36-58% precision on web apps"
- **Test count badge**: 1,207 → 1,234

### Fixed
- **Framework noise suppression now works on cloned repos** — previously only matched specific benchmark directory names; now catches `py-flask/`, `js-express/`, and 30+ common clone patterns
- **`FrameworkFingerprint` made mutable** — `inspect_ast_node()` and `verify_endpoint_protection()` can now set `detected_framework` at runtime
- **`verify_endpoint_protection` checks default values** — FastAPI `= Depends(...)` pattern (default value, not annotation) now detected

### Engineering Spec Compliance
- Phase 1.3: Dependency declaration (rich as prod dep)
- Phase 1.4: `mypy --strict` added to CI
- Phase 2.2: `register_symbol`, `resolve_call`, `propagate_taint_cross_file` in interprocedural.py
- Phase 2.3: `FrameworkFingerprint.inspect_ast_node` + `verify_endpoint_protection`
- Phase 2.4: Rule severity recalibration
- Phase 3.1: `generate_remediation_snippet` with 6 code-fix templates
- Phase 3.4: `ProcessPoolExecutor` parallel analysis
- Phase 3.5: `safe_parse_target` with 3-encoding fallback
- Phase 4.1: `docs/rules/index.md` rule catalog
- Phase 4.2: `rules/custom_checks.yaml` blueprint
- Phase 4.3: `filter_findings_by_git_diff` PR isolation


