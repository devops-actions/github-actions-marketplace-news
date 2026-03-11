---
title: SecScore
date: 2026-03-11 13:36:48 +00:00
tags:
  - cassiodeveloper
  - GitHub Actions
draft: false
repo: https://github.com/cassiodeveloper/SecScore
marketplace: https://github.com/marketplace/actions/secscore
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/cassiodeveloper/SecScore** to version **v0.3.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/secscore) to find the latest changes.

## Action Summary

SecScore is a lightweight security scoring engine designed for CI/CD pipelines, providing an automated mechanism to evaluate security scanner findings and calculate a single security score for pull requests. It helps teams make policy-driven decisions (PASS, REVIEW, or FAIL) based on the severity and context of vulnerabilities, ensuring only secure code is merged. Key capabilities include multi-scanner support via SARIF, diff-aware filtering for PR-specific findings, suppressions for false positives, and compatibility with popular tools like Snyk, CodeQL, and Semgrep.

## Release notes

## v0.3.0 — 2026-03

### Added

* **Multi-SARIF support**: `--sarif` now accepts multiple files as a comma-separated list
  (`--sarif semgrep.sarif,trivy.sarif`) or multiple flags. GitHub Action updated accordingly.
  Findings are deduplicated across files by `(ruleId, path, line)`.
* **Diff-aware filtering enabled by default** in PR mode. SecScore now automatically filters
  findings to only those touching lines changed in the PR. Use `--no-diff-aware` to opt out.
  Gracefully degrades (warning, no abort) when not running inside a git repository or when
  the diff returns no changed files.
* **Suppressions by fingerprint**: policy `suppressions.deny_fingerprints` list allows
  suppressing specific known false positives by their finding fingerprint — traceable and
  reviewable in version control.
* `action.yml` new inputs: `no_diff_aware`, `base_ref`.
* `policy_validator.py` now validates `suppressions.deny_fingerprints` entries.
* Policy version bumped to `1.1` in default policy files.

### Fixed

* `engine.py`: `NoneType` crash when `asset.path` was absent in a finding.
* `sarif.py`: `critical` severity from `properties.severity` (Semgrep, Snyk) was silently
  downgraded to `high`. Now correctly propagated.
* `action.yml`: Python inline block had incorrect indentation causing `SyntaxError` on the
  GitHub Actions runner.
* `diff_filter.py`: `base_ref` argument was passed unsanitized to `subprocess`. Now validated
  against an allowlist regex before use.
* `checkmarx_provider.py`: `get_results` used a hard-coded `limit=1000` with no pagination,
  silently dropping findings beyond the first 1000. Replaced with a paginated loop.
* `policy_validator.py` (new): policy YAML is now validated before reaching the engine.
  Structural errors, unknown severity names, and misconfigured thresholds produce clear
  error messages instead of silently incorrect scores.
* `main.py`: diff-aware with empty `changed_ranges` was silently discarding all findings,
  causing every run to score 100 and return PASS. Now skips filtering when diff is empty
  and warns the user.
