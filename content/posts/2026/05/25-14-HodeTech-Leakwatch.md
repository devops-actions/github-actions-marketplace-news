---
title: Leakwatch Secret Scanner
date: 2026-05-25 14:38:01 +00:00
tags:
  - HodeTech
  - GitHub Actions
draft: false
repo: https://github.com/HodeTech/Leakwatch
marketplace: https://github.com/marketplace/actions/leakwatch-secret-scanner
version: v1.6.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/HodeTech/Leakwatch** to version **v1.6.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/leakwatch-secret-scanner) to find the latest changes.

## Action Summary

Leakwatch is a GitHub Action and open-source tool designed to detect, verify, and report leaked secrets such as API keys, tokens, and passwords across codebases, Git histories, container images, cloud storage, and more. It automates the identification of sensitive information, verifies if the secrets are still active, and provides actionable reports in various formats, reducing noise and helping teams focus on real security risks. With built-in detectors, custom rules, and CI/CD compatibility, it streamlines the process of preventing security breaches caused by exposed credentials.

## What's Changed

Leakwatch is now available on the **GitHub Marketplace** — add secret scanning to any workflow in one line.

## Highlights

- **GitHub Marketplace Action — `uses: HodeTech/Leakwatch@v1`.** A composite action that installs a prebuilt, checksum-verified binary (no Go toolchain), runs a scan, maps exit codes, writes a job summary, and can upload SARIF to Code Scanning. Supports PR-diff scanning (`scan-diff`), `format`, `min-severity`, `only-verified`, `extra-args`, and more. Linux & macOS runners.
- **New `github` output format** — `--format github` emits workflow commands so findings appear as **inline annotations** on pull requests.
- **Config keys now take effect** — `custom-rules`, `verification.*`, `filter.exclude-detectors`, and `output.severity-threshold` from `.leakwatch.yaml` are wired into the scan (previously documented but no-ops). `scan repos` honors all scan config too.
- **Accurate locations & inline ignore** — findings report real line numbers; `# leakwatch:ignore` / `# leakwatch:ignore:<detector-id>` markers are honored; SARIF results carry location-stable `partialFingerprints` so Code Scanning tracks an alert across line moves.
- **Security hardening** — credentials are redacted in Git URLs and verifier transport errors; the composite action isolates inputs via env (no shell injection) and honors the leakwatch exit code.
- **Docs & site** — bilingual (EN/TR) user manuals on a GitHub Pages site, plus an in-browser playground.

## Fixed

- `dbconn` placeholder matching is now case-insensitive (`Password=TODO` no longer reported).
- Detection-core hardening (matcher race, redaction, output model) and verifier fixes (no credential leak on redirect; correct status semantics).

## Install

```yaml
# .github/workflows/leakwatch.yml
- uses: HodeTech/Leakwatch@v1
  with:
    scan-type: fs
```

```bash
brew install HodeTech/tap/leakwatch
go install github.com/HodeTech/leakwatch@latest
docker run --rm -v "$(pwd):/scan" ghcr.io/hodetech/leakwatch scan fs /scan
```

**Full changelog:** https://github.com/HodeTech/Leakwatch/compare/v1.5.0...v1.6.0

