---
title: SiteProof Website Quality Scanner
date: 2026-03-13 05:48:28 +00:00
tags:
  - deashidle-stack
  - GitHub Actions
draft: false
repo: https://github.com/deashidle-stack/siteproof-action
marketplace: https://github.com/marketplace/actions/siteproof-website-quality-scanner
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/deashidle-stack/siteproof-action** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/siteproof-website-quality-scanner) to find the latest changes.

## Action Summary

The SiteProof Website Quality Scanner is a GitHub Action designed to automate website quality assessments within CI/CD pipelines. It performs WCAG 2.1 accessibility checks, evaluates UX quality (e.g., performance, security, mobile readiness), and scans for AI Engine Optimization (AEO) readiness. By providing structured reports with fix recommendations and configurable thresholds, it helps teams ensure their websites meet accessibility and usability standards efficiently.

## Release notes

## SiteProof Website Quality Scanner v1.0.0

Automated WCAG accessibility, UX quality, and AI Engine Optimization (AEO) scanning for your CI/CD pipeline.

### What it does

- Scans any publicly accessible URL for **WCAG 2.1 AA/AAA** issues and **UX quality** problems
- Optional **AI Engine Optimization** (AEO) scan — measures how well your site will be cited by AI search engines
- Posts a summary **PR comment** (auto-updates on re-runs, no duplicates)
- **Configurable quality gate** — fail the build on critical issues, score thresholds, or any severity
- **Fix recipes** with before/after code (Pro tier) — prioritized by impact

### Quick start

```yaml
- uses: deashidle-stack/siteproof-action@v1
  with:
    url: 'https://your-site.com'
    api-key: ${{ secrets.SITEPROOF_API_KEY }}
    fail-on: serious

### Outputs

- `score` — Overall quality score (0-100)
- `grade` — Letter grade (A–F)
- `issues` — Number of issues found
- `passed` — Whether the check passed
- `wcag-score` — WCAG accessibility sub-score
- `ux-score` — UX quality sub-score
- `aeo-score` — AEO score (when `aeo: true`)


Requirements
- A SiteProof API key — [get one free](https://deveras.no/siteproof)
- GITHUB_TOKEN with pull-requests: write (for PR comments)
- Zero dependencies (bash + curl + jq, all pre-installed on ubuntu-latest)

Links
- [Full documentation](https://github.com/deashidle-stack/siteproof-action#readme)
- [API Reference](https://siteproof-public-api.andreas-everform.workers.dev/v1/docs)
- [Deveras](https://deveras.no/)
