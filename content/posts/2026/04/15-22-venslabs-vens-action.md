---
title: vens-action
date: 2026-04-15 22:02:16 +00:00
tags:
  - venslabs
  - GitHub Actions
draft: false
repo: https://github.com/venslabs/vens-action
marketplace: https://github.com/marketplace/actions/vens-action
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/venslabs/vens-action** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vens-action) to find the latest changes.

## Action Summary

The `vens-action` GitHub Action integrates with vulnerability scanners like Trivy or Grype to re-score CVEs based on project-specific risk factors (e.g., exposure, data sensitivity, controls) rather than generic CVSS scores. It automates the generation of a CycloneDX VEX file and severity counts, enabling developers to prioritize vulnerabilities effectively and enforce build failure thresholds based on custom severity levels. Additionally, it can enrich scan reports with contextual insights using an LLM (Large Language Model) provider.

## What's Changed

First release. The action wraps the `vens` CLI to score a Trivy or Grype scan report against your project's context and emit a CycloneDX VEX.

## What it does

- Downloads `vens` v0.3.2+ (SHA256-verified), or uses a pre-installed binary via `bin-path` for air-gapped runners.
- Runs `vens generate` with your `config.yaml`, produces `$RUNNER_TEMP/vens-vex.cdx.json`.
- Optional `enrich: true` writes back OWASP scores into the original Trivy report.
- Exposes `count-{critical,high,medium,low,info}` outputs and a `fail-on-severity` gate.

## Inputs / outputs

Full list in the README. Minimum viable call: `version`, `config-file`, `input-report`, `sbom-serial-number`, `llm-provider`, `llm-api-key`.

## Requirements

- Linux or macOS runner (x64 or arm64). Windows fails fast.
- `jq` on PATH (default on GitHub-hosted runners).

## Thanks

Built on top of `venslabs/vens` — see upstream for the scoring model and config schema.
