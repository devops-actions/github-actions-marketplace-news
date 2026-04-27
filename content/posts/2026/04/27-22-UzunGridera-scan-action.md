---
title: AgentMinds Scan
date: 2026-04-27 22:01:11 +00:00
tags:
  - UzunGridera
  - GitHub Actions
draft: false
repo: https://github.com/UzunGridera/scan-action
marketplace: https://github.com/marketplace/actions/agentminds-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/UzunGridera/scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentminds-scan) to find the latest changes.

## Action Summary

The **AgentMinds Scan GitHub Action** automates the process of running comprehensive site quality scans during continuous integration (CI). It evaluates a website's security, SEO, accessibility, performance, and AI optimization through over 50 checks, providing a grade, detailed issue insights, and a link to the full report directly within pull requests. This action streamlines quality assurance by enabling automated feedback loops, enforcing grade thresholds, and offering actionable insights for improving site health.

## What's Changed

First public release of the AgentMinds Scan GitHub Action.

## What it does
Scans the URL you give it via the AgentMinds free-scan API. Posts a sticky PR comment with grade, top issues, and a link to the full report.

## Quick start
```yaml
- uses: UzunGridera/scan-action@v1
  with:
    url: https://your-preview.example.com
    fail-on-grade: D
```

## What gets checked
- Security headers (HSTS, CSP, X-Frame-Options, COOP, etc.)
- SEO (title/meta, canonical, OG, sitemap, robots)
- AEO (llms.txt, JSON-LD, FAQPage, AI bot blocking)
- Performance (latency, content size, redirects, mixed content)
- Accessibility (alt text, lang, focus indicators)

## Inputs
- `url` (required) — URL to scan
- `fail-on-grade` (default: F) — A/B/C/D/F threshold for failing the workflow
- `comment` (default: true) — post sticky PR comment
- `github-token` (default: $\{\{ github.token \}\}) — for PR comments

## Free during beta
No signup, no API key required for the public scan.

[Full docs →](https://agentminds.dev/docs)

