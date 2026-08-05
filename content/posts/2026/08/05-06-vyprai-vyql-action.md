---
title: VyQL security scan
date: 2026-08-05 06:07:35 +00:00
tags:
  - vyprai
  - GitHub Actions
draft: false
repo: https://github.com/vyprai/vyql-action
marketplace: https://github.com/marketplace/actions/vyql-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates a security scan using VyQL, a multi-language security scanner. It checks the checked-out repository, fails the build if any HIGH or CRITICAL findings are detected, and uploads SARIF results to code scanning. The action supports versioning for reproducibility and provides inputs for customizing the scan path, severity level, and output format.
---


Version updated for **https://github.com/vyprai/vyql-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vyql-security-scan) to find the latest changes.

## Action Summary

This GitHub Action automates a security scan using VyQL, a multi-language security scanner. It checks the checked-out repository, fails the build if any HIGH or CRITICAL findings are detected, and uploads SARIF results to code scanning. The action supports versioning for reproducibility and provides inputs for customizing the scan path, severity level, and output format.

## What's Changed

Run a [VyQL](https://github.com/vyprai/vyql) security scan in GitHub Actions: follow tainted data from where it enters your code to where it does something dangerous, fail the build on what it finds, and put the results in the Security tab.

```yaml
- uses: actions/checkout@v5
- uses: vyprai/vyql-action@v1
```

That is the whole minimal usage. It scans the checked-out repository, fails on any HIGH or CRITICAL finding, and uploads SARIF to code scanning.

## What makes the findings usable

Every finding names the source, the sink, the path between them, and **the neutralizing controls it looked for and did not find** — so a finding tells you what would have made it safe, not just that something looks wrong.

## Adopting it on an existing codebase

```yaml
- uses: vyprai/vyql-action@v1
  with:
    fail-on: none        # report without failing the build
```

Findings still reach the Security tab while the build stays green. VyQL also supports a triage baseline, so a scan can report only what is new.

## Common inputs

| Input | Default | |
|---|---|---|
| `path` | `.` | what to scan |
| `version` | `latest` | which VyQL release; pin it for reproducible runs |
| `fail-on` | `high` | `none`, `info`, `low`, `medium`, `high`, `critical` |
| `exit-code` | `1` | status when `fail-on` is met |
| `upload-sarif` | `true` | needs `security-events: write` |

## Requirements

- **Linux or macOS runners.** VyQL publishes `linux/amd64`, `linux/arm64`, `darwin/amd64`, `darwin/arm64`; on Windows the action fails with that message rather than something obscure.
- **`security-events: write`** for the SARIF upload. On a private repository that also needs GitHub Advanced Security — without it the upload step fails while the scan result still stands.
- **VyQL v0.2.0 or newer**, which this release is verified against.

## Verified

Exercised on Linux and macOS against VyQL v0.2.0: the gate fires on a vulnerable fixture, `fail-on: none` reports without gating, a custom `exit-code` is honoured, and clean code passes with valid SARIF.

Full documentation: [README](https://github.com/vyprai/vyql-action#readme)

