---
title: ScanClusive Accessibility Scan
date: 2026-04-06 14:05:08 +00:00
tags:
  - scanclusive
  - GitHub Actions
draft: false
repo: https://github.com/scanclusive/scanclusive-action
marketplace: https://github.com/marketplace/actions/scanclusive-accessibility-scan
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/scanclusive/scanclusive-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scanclusive-accessibility-scan) to find the latest changes.

## Action Summary

The **ScanClusive Accessibility Scan GitHub Action** automates Web Content Accessibility Guidelines (WCAG) 2.1/2.2 compliance scanning within CI/CD pipelines. It identifies accessibility issues, calculates a compliance score, and supports configurable thresholds to enforce standards, helping developers ensure their applications meet accessibility requirements. Key features include JSON scan results, pull request comments with detailed reports, and integration with GitHub workflows for streamlined accessibility monitoring.

## What's Changed

<html><head></head><body>
<hr>
<h2>🚀 Initial Release</h2>
<p>Integrate WCAG 2.1/2.2 accessibility scanning into your GitHub Actions workflow with a single step.</p>
<h3>Features</h3>
<ul>
<li>Trigger a ScanClusive scan and wait for results directly in CI</li>
<li>Fail the pipeline if compliance score drops below a configurable threshold</li>
<li>Fail the pipeline on critical violations</li>
<li>Exponential polling backoff (5s → 15s) — no unnecessary API calls</li>
<li>Automatic retry on network errors and server failures (3 retries)</li>
<li>Rich <strong>GitHub Job Summary</strong> with compliance table and emoji indicators</li>
<li>JSON artifact output (<code>scanclusive-results.json</code>) for trend tracking across builds</li>
</ul>
<h3>Outputs</h3>

Output | Description
-- | --
compliance-score | Compliance score (0–100)
total-violations | Total violations found
critical-count | Critical violations
status | Final scan status
report-url | Link to full report


<h3>Usage</h3>
<pre><code>- uses: scanclusive/scanclusive-action@v1
  with:
    api-key: ${{ secrets.SCANCLUSIVE_API_KEY }}
    project-id: "proj_xxx"
    threshold: 90
    fail-on-violations: true
</code></pre>
<p>Requires a <a href="https://scanclusive.com/">ScanClusive</a> account with a Starter or Pro plan.</p></body></html>

**Full Changelog**: https://github.com/scanclusive/scanclusive-action/commits/v1.0.1

**Full Changelog**: https://github.com/scanclusive/scanclusive-action/commits/v1.0.1
