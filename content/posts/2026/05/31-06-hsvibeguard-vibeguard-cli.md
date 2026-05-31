---
title: VibeGuard Security Scan
date: 2026-05-31 06:33:13 +00:00
tags:
  - hsvibeguard
  - GitHub Actions
draft: false
repo: https://github.com/hsvibeguard/vibeguard-cli
marketplace: https://github.com/marketplace/actions/vibeguard-security-scan
version: v1.1.8
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/hsvibeguard/vibeguard-cli** to version **v1.1.8**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vibeguard-security-scan) to find the latest changes.

## Action Summary

VibeGuard CLI is a unified security scanner orchestrator designed to automate and simplify the process of running multiple security scans on local repositories. It aggregates results into a normalized format, provides a security score with a letter grade, and offers AI-powered remediation suggestions. Key features include support for various output formats (e.g., JSON, SARIF, HTML), CI/CD integration, and tools for generating security badges and managing baselines, making it ideal for streamlining code security assessments and enhancing development workflows.

## What's Changed

Run Semgrep, Bandit, Checkov, Gitleaks, Trivy & TruffleHog with one command — or one GitHub Action — and get a unified score, deduplicated findings, and results in your GitHub **Security tab**.

## Use it
- **GitHub Action:** `uses: hsvibeguard/vibeguard-cli@v1`
- **pip:** `pip install vibeguard-cli`
- **Docker:** `docker run --rm -v "$(pwd):/repo" ghcr.io/hsvibeguard/vibeguard-cli`
- **pre-commit:** add the `vibeguard` hook (`rev: v1.1.8`)

## What's new since 1.1.5
- **GitHub Code Scanning now works** — repo-relative SARIF paths, deduped rule tags, references moved to rule helpUri (the Security tab populates)
- Clean `--output json/sarif` (no Rich line-wrapping when redirected)
- Deterministic CI: the Action installs a pinned, pipx-isolated scanner set

See the README for full usage and the `scanners: core|broad|full` option.
