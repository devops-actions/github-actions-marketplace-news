---
title: GHA Scanner
date: 2026-03-24 14:00:56 +00:00
tags:
  - raajheshkannaa
  - GitHub Actions
draft: false
repo: https://github.com/raajheshkannaa/gha-scanner
marketplace: https://github.com/marketplace/actions/gha-scanner
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/raajheshkannaa/gha-scanner** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gha-scanner) to find the latest changes.

## Action Summary

GHA Scanner is a static analysis tool for GitHub Actions workflows that identifies security misconfigurations, injection vulnerabilities, supply chain risks, and CI/CD hygiene issues. It automates the detection of potential threats by performing 25 security checks across 8 categories, providing a graded security posture report for repositories. The tool is designed to address real-world attack scenarios and offers multiple interfaces, including a web UI, GitHub Action, CLI, and API, for seamless integration into development workflows.

## Release notes

## What's New

### Test Suite
- 68 automated tests (vitest, 270ms)
- Covers all check categories, scoring, parsing, suppression

### GitHub Action on Marketplace
- `uses: raajheshkannaa/gha-scanner@v1` with configurable `fail-on` threshold
- Writes summary table to PR checks
- Outputs: score, grade, findings count

### Inline Suppression
- `# gha-scanner-ignore: check-id` to suppress specific findings
- Requires explicit check ID (no blanket suppression)
- Suppressed findings listed in warnings for audit visibility

### Security Fixes
- Version-aware CVE matching: fixed versions (e.g. tj-actions@v46.0.1) no longer flagged
- `github.event.pull_request.head.ref` and `head.repo.full_name` added to dangerous contexts
- Workflow cap warning when results are truncated (cap raised from 20 to 50)
- CRLF handling in suppression for Windows compatibility
- Parse failure tracking with partial scan flag
- YAML bomb protection applied consistently across all parse paths
- Output injection protection in GitHub Action (heredoc delimiters)
- Markdown sanitization in step summary

### Improved Findings
- Self-hosted runner remediation now references DEF CON 32 research with 5 layered mitigations
- Severity calibrated across real repos (68% noise reduction on facebook/react)

### Documentation
- README with screenshot, attack references, comparison table, badges
- docs/CHECKS.md (full 25-check catalog)
- docs/SELF-HOSTING.md (deploy guide)
- SECURITY.md, CONTRIBUTING.md, issue templates
- CI workflow that self-scans with SHA-pinned actions

### Real-World Results (as of March 2026)
| Repository | Grade | Findings |
|------------|-------|----------|
| facebook/react | B (80) | 79 |
| vercel/next.js | D (68) | 103 |
| hashicorp/vault | D (69) | 183 |
| grafana/grafana | C (79) | 84 |
| prometheus/prometheus | A (93) | 29 |
