---
title: PySentry Security Audit
date: 2026-08-21 06:42:41 +00:00
tags:
  - nyudenkov
  - GitHub Actions
draft: false
repo: https://github.com/nyudenkov/pysentry
marketplace: https://github.com/marketplace/actions/pysentry-security-audit
version: v0.5.0
dependentsNumber: "55"
actionType: Composite
actionSummary: |
  **Fast, reliable vulnerability scanning for Python dependencies.**
  
  PySentry audits Python projects for known security vulnerabilities using Rust to perform concurrent queries against multiple databases and generates detailed reports with tree-aware findings and PEP 792 lifecycle checks. It supports various dependency formats and can be used in CI pipelines, providing options for severity filtering, fail-on-high-severity settings, and SARIF output.
---


Version updated for **https://github.com/nyudenkov/pysentry** to version **v0.5.0**.

- This action is used across all versions by **55** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pysentry-security-audit) to find the latest changes.

## Action Summary

**Fast, reliable vulnerability scanning for Python dependencies.**

PySentry audits Python projects for known security vulnerabilities using Rust to perform concurrent queries against multiple databases and generates detailed reports with tree-aware findings and PEP 792 lifecycle checks. It supports various dependency formats and can be used in CI pipelines, providing options for severity filtering, fail-on-high-severity settings, and SARIF output.

## What's Changed

# v0.5.0 "Policy"

This release is built around one thesis: **PySentry should never silently report less than it should.** It adds a small security-policy layer — per-group thresholds, package-wide ignores, and an explicit partial-scan policy — fixes a silent OSV truncation, and ships a quality-of-life pass over the human and CI output.

## 🛡️ Security Policy & Completeness

### Per-group fail thresholds

Set `fail_on` per dependency group, overriding the global one for findings that reach that group (config-only; requires a group-aware lock file — `uv.lock`, `poetry.lock`, or `pylock.toml`):

```toml
[defaults]
fail_on = "medium"      # production default

[groups.dev]
fail_on = "critical"    # tolerate lower-severity advisories in dev-only deps
```

Thresholds resolve **strictest-wins per context**: a finding's effective threshold is the lowest across every context that reaches it. A group-only package takes its group threshold outright (so it can be *looser* than global), while a package that also ships to production keeps the global `fail_on` as a floor a permissive group can only tighten. Closes #151.

### Ignore an entire package

`[ignore].packages` suppresses every finding for the named packages — useful for first-party or vendored internal packages. Names are compared with full PEP 503 normalization. Suppressed findings are **still reported** (tagged as suppressed in every format) but never trigger the non-zero exit:

```toml
[ignore]
packages = ["internal-first-party-lib"]
```

Closes #149.

### Explicit partial-scan policy

When a vulnerability source fails to fetch but at least one other succeeds, the scan is incomplete. PySentry now treats this as a first-class, **fail-closed** condition: by default the run prints its findings plus a partial-scan marker and exits `2`. Pass `--no-fail-on-partial` (or set `[sources].fail_on_partial = false`) to continue on the sources that succeeded. If every source fails, the run is always a hard error.

## 🔧 Improvements

- **OSV pagination — no silent truncation.** The OSV provider now follows every `next_page_token` page. Previously a package with many advisories could be silently truncated to the first page — a false negative. All pages are always collected.
- **Compact output by default.** Human output is now compact by default — a summary plus a one-line table row per finding. Pass `--detailed` for full descriptions, CVSS, and references (the previous intermediate "normal" level is removed). JSON, SARIF, and Markdown are unchanged.
- **"Why it failed" and suppression summary lines.** Human, Markdown, and JSON reports now state *why* the run exits non-zero — how many findings met the effective `fail_on` threshold and which threshold tripped — plus a separate line for how many findings policy suppressed. CI logs are now self-explanatory.
- **Smarter fix recommendation.** For advisories fixed on multiple release lines, the recommended upgrade is now the smallest version strictly greater than the installed one (the least-disruptive safe upgrade) instead of an arbitrary branch. Backport-only advisories are noted as such.
- **Compact job summary in GitHub Actions.** In Actions, PySentry writes a compact Markdown report to the run's job summary (scan counts, severity breakdown, policy/partial state, findings table) — now the primary results surface on pull requests, where the SARIF upload is skipped by default (fork PRs get a read-only token that can't upload to Code Scanning). Set `upload-sarif-on-pr: 'true'` to re-enable it for same-repo PRs.

## 📦 Install

```bash
# Python
pip install pysentry-rs==0.5.0

# Rust / Cargo
cargo install pysentry --version 0.5.0
```

Prebuilt binaries for Linux, macOS, and Windows are attached below and verified against `SHA256SUMS`.

---

**Full changelog:** https://github.com/nyudenkov/pysentry/compare/v0.4.9...v0.5.0
**Docs:** https://docs.pysentry.com
