---
title: Accessibility Pro Scan
date: 2026-05-06 07:30:38 +00:00
tags:
  - accessibility-pro
  - GitHub Actions
draft: false
repo: https://github.com/accessibility-pro/action
marketplace: https://github.com/marketplace/actions/accessibility-pro-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/accessibility-pro/action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accessibility-pro-scan) to find the latest changes.

## Action Summary

**Accessibility Pro — GitHub Action** is an automated WCAG 2.2 AA compliance scanner designed to analyze web accessibility on every pull request. It identifies accessibility violations, ranks their impact, and provides actionable solutions, including sandbox-validated "Copy as PR" diffs to resolve issues without regressions. This action streamlines accessibility compliance by integrating directly into CI/CD pipelines, offering detailed reports, and ensuring precise, verified fixes for web development teams.

## What's Changed

## What's new

First public release of `accessibility-pro/action`. Production-ready composite GitHub Action for WCAG 2.2 AA scanning on every PR.

### Features

- **7 inputs**: `url`, `wcag-level` (A/AA/AAA), `fail-on` (error/warning/none), `accessibility-pro-token` (optional), `comment-on-pr`, `backend-url`, `report-domain`
- **5 outputs**: `scan-id`, `score` (0-100), `violations-critical`, `violations-high`, `report-url`
- **Sandbox-validated Copy-as-PR diffs** — every patch is applied to the captured DOM, re-scanned, and emitted only if it resolves the violation without regressions. Token-gated unlock surfaces the validated diff in PR comments.
- **Impact-ranked top-5 PR comment** with deep-link to the hosted report
- **GitHub step-summary** with severity table + scan metadata
- **Anonymous rate limits**: 100/day per runner IP (10/hour burst protection); tokens bypass via Team/Business plan quota
- **Self-host friendly**: `backend-url` and `report-domain` inputs override the Accessibility Pro defaults

### Usage

```yaml
- uses: accessibility-pro/action@v1
  with:
    url: ${{ secrets.STAGING_URL }}
    wcag-level: AA
    fail-on: error
    # Optional — unlocks Team-quota + Copy-as-PR in PR comments
    accessibility-pro-token: ${{ secrets.ACCESSIBILITY_PRO_TOKEN }}
```

See [README.md](https://github.com/accessibility-pro/action#readme) for the full input/output reference and [CHANGELOG.md](https://github.com/accessibility-pro/action/blob/main/CHANGELOG.md) for the feature list.

### Why this is different

We don't sell overlay widgets. Every Copy-as-PR diff is validated against the captured DOM before emit; failed patches fall back to a *Needs manual review* snippet rather than emitting an unverified diff. See our [public accuracy benchmark](https://www.accessibilitypro.app/benchmark) for reproducible precision/recall numbers vs axe-core.

### Source

Development canon lives at [HasanTayem/access-pro-ai/action](https://github.com/HasanTayem/access-pro-ai/tree/main/action). This Marketplace repo is a curated subset for tagged releases.

