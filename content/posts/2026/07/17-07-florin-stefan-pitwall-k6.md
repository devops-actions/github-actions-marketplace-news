---
title: Pitwall k6 Report
date: 2026-07-17 07:02:39 +00:00
tags:
  - florin-stefan
  - GitHub Actions
draft: false
repo: https://github.com/florin-stefan/pitwall-k6
marketplace: https://github.com/marketplace/actions/pitwall-k6-report
version: 0.3.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, Pitwall-k6, automates the process of generating and serving a comprehensive HTML report from k6 load test results. It parses various output formats (raw JSON stream, summary files) to reconstruct detailed metrics including thresholds, checks, and pass/fail verdicts. The generated report includes charts for trends across runs and a glossary of key metrics. Users can easily serve the report locally or directly in their web applications, making it accessible without additional backend infrastructure.
---


Version updated for **https://github.com/florin-stefan/pitwall-k6** to version **0.3.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pitwall-k6-report) to find the latest changes.

## Action Summary

This GitHub Action, Pitwall-k6, automates the process of generating and serving a comprehensive HTML report from k6 load test results. It parses various output formats (raw JSON stream, summary files) to reconstruct detailed metrics including thresholds, checks, and pass/fail verdicts. The generated report includes charts for trends across runs and a glossary of key metrics. Users can easily serve the report locally or directly in their web applications, making it accessible without additional backend infrastructure.

## What's Changed

The first public release of **Pitwall** — a complete, portable HTML report for [k6](https://k6.io) load tests. Point it at the output k6 already produces and get a static site with the full metrics breakdown, pass/fail verdicts, trend charts across runs, and a plain-language glossary. No backend, no CDN calls, no telemetry — host the folder anywhere.

![Pitwall report overview](https://raw.githubusercontent.com/florin-stefan/pitwall-k6/main/.github/assets/pitwall-report.png)

🔗 **[View a live sample report](https://florin-stefan.github.io/pitwall-k6/)**

## Use it as a GitHub Action

Run k6 first (e.g. with `grafana/setup-k6-action`), then:

```yaml
- uses: florin-stefan/pitwall-k6@v0.3.0
  with:
    results: results.json summary.json
    name: checkout flow
    run-id: ${{ github.run_number }}
    fail-on-thresholds: true

- uses: actions/upload-artifact@v4
  if: always()
  with:
    name: pitwall-report
    path: pitwall-report
```

The action installs Pitwall, generates the report, appends a run summary (verdict, headline stats, thresholds, slowest endpoints) to the job summary page, and — with `fail-on-thresholds` — gates the job on breached thresholds *after* the report is written, so a red build still has the full report as an artifact.

## Use it as a CLI

```
k6 run --out json=results.json script.js
pitwall serve results.json
```

Works with the raw `--out json=` stream (plain or gzipped), a `handleSummary()` export, a `--summary-export=` file, or any combination — formats are auto-detected.

## Highlights in 0.3.0

- **`pitwall diff <baseline> <current>`** — compare two runs: headline deltas, per-endpoint p95 changes, new/removed endpoints. `--fail-on-p95 <pct>` and `--fail-on-error-rate <points>` turn it into a CI regression gate that catches *drift* before it breaches a threshold; `--md` writes the comparison as PR-ready markdown.
- **GitHub Action** (this listing) with threshold gating and automatic job summaries.
- **Multi-run trend history** — every `generate` appends to a small history file; the Trends page charts p95, error rate, throughput, and checks across your last runs, and the overview shows run-over-run deltas.
- **CI on Node 18/20/22** (Linux + Windows), plus a security policy, contributing guide, and issue templates.

## Docs

- [Beginner's guide](https://github.com/florin-stefan/pitwall-k6/blob/main/docs/beginners-guide.md) — from installing Node and k6 to reading your first report
- [Command reference](https://github.com/florin-stefan/pitwall-k6/blob/main/docs/commands.md) — every command, flag, and exit code
- [Feature guide](https://github.com/florin-stefan/pitwall-k6/blob/main/docs/features.md) — every report page, history, CI gating, hosting
- [Changelog](https://github.com/florin-stefan/pitwall-k6/blob/main/CHANGELOG.md) · [Security policy](https://github.com/florin-stefan/pitwall-k6/blob/main/SECURITY.md)

---

**Requirements:** Node ≥ 18 for the CLI; the action runs on any standard GitHub-hosted runner. npm package publication is coming — until then, the action is fully self-contained, and the CLI works from a clone (`npm install && npm link`).
