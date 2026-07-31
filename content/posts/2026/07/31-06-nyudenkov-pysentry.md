---
title: PySentry Security Audit
date: 2026-07-31 06:48:33 +00:00
tags:
  - nyudenkov
  - GitHub Actions
draft: false
repo: https://github.com/nyudenkov/pysentry
marketplace: https://github.com/marketplace/actions/pysentry-security-audit
version: v0.4.9
dependentsNumber: "41"
actionType: Composite
actionSummary: |
  PySentry is a fast and reliable vulnerability scanning tool for Python projects, auditing their dependencies against three databases to identify known security vulnerabilities. It provides tree-aware findings, PEP 792 lifecycle checks, human-readable output, and support for various dependency formats in CI pipelines. The tool can report only high or critical findings and refuse quarantined packages, making it suitable for developers and organizations looking to secure their Python projects.
---


Version updated for **https://github.com/nyudenkov/pysentry** to version **v0.4.9**.

- This action is used across all versions by **41** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pysentry-security-audit) to find the latest changes.

## Action Summary

PySentry is a fast and reliable vulnerability scanning tool for Python projects, auditing their dependencies against three databases to identify known security vulnerabilities. It provides tree-aware findings, PEP 792 lifecycle checks, human-readable output, and support for various dependency formats in CI pipelines. The tool can report only high or critical findings and refuse quarantined packages, making it suitable for developers and organizations looking to secure their Python projects.

## What's Changed

PySentry becomes a first-class CI citizen: an official GitHub Action, SARIF reports GitHub can actually anchor, distinct exit codes, and a hardened release pipeline.

## ✨ New Features

### First-Party GitHub Action

The action downloads the prebuilt release binary for the runner platform, verifies it against `SHA256SUMS`, runs the audit, and uploads a SARIF report to GitHub Code Scanning — findings appear in the Security tab and on pull requests:

```yaml
permissions:
  security-events: write

steps:
  - uses: actions/checkout@v4
  - uses: nyudenkov/pysentry@v0.4.9
    with:
      fail-on: high
```

Inputs map 1:1 to CLI flags (`path`, `fail-on`, `sources`, `format`, `output`, `ignore`, plus a raw `args` passthrough). The SARIF report is uploaded even when the audit fails, so findings always reach the Security tab before the job exits non-zero. See the new [CI guide](https://docs.pysentry.com/ci) — it covers other CI systems too.

### `--service-url`: Custom OSV-Compatible Endpoint

Corporate and air-gapped environments can point the OSV provider at a self-hosted or mirrored OSV-compatible endpoint:

```bash
pysentry-rs --sources osv --service-url https://osv.internal.example.com
```

Only valid with `--sources osv`; also available as a config file option.

### Distinct Exit Code for System Errors

Exit code `1` previously meant both "vulnerabilities found" and "the audit never ran". System errors (bad configuration, network failure, parse failure) now exit `2`; findings at or above the `--fail-on` threshold keep `1`. Gate on any non-zero exit as before, or handle the two cases separately.

## 🔧 Improvements

- **SARIF reports carry line numbers for every source.** Previously only `pyproject.toml` and `uv.lock` results had a source line; GitHub Code Scanning could not anchor the rest. Location scanning now covers everything the parsers read: `requirements.txt` (including multi-file audits), `poetry.lock`, `pylock.toml`, `Pipfile.lock`, `Pipfile`, and — inside `pyproject.toml` — extras and PEP 735 dependency groups.
- **Maintenance checks skip non-registry dependencies** — no more pointless PyPI queries for Git/path/URL installs.
- **Own supply chain hardened**: release assets ship with `SHA256SUMS` (verified by the Action), `cargo audit` in CI is pinned with a reviewed ignore list, `quinn-proto` bumped to 0.11.15 (RUSTSEC-2026-0185).
- **OSV and PyPI clients send a `pysentry/{version}` user-agent**, matching the rest of the codebase.

## 🐛 Bug Fixes

- **SARIF: multi-file requirements audits emitted a bogus URI** (`"requirements.txt, dev-requirements.txt"`); each finding now resolves to its own real file.
- **SARIF: substring package matching** could anchor `jinja2` to a `flask-jinja2` line; names are compared through full PEP 503 normalization.
- **Advisory aliases were double-reported in single-source audits**; aliased advisories (same CVE under GHSA and PYSEC IDs) are collapsed into one finding.

---

Note: v0.4.8 was tagged but never published due to a release-pipeline failure (fixed in this release); v0.4.9 is the same content. Install: `uvx pysentry-rs`, `pip install pysentry-rs`, or `cargo install pysentry`. Full changelog: https://docs.pysentry.com/changelog

