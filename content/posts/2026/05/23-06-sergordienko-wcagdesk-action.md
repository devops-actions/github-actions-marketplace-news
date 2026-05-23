---
title: WCAGdesk accessibility scan
date: 2026-05-23 06:13:54 +00:00
tags:
  - sergordienko
  - GitHub Actions
draft: false
repo: https://github.com/sergordienko/wcagdesk-action
marketplace: https://github.com/marketplace/actions/wcagdesk-accessibility-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/sergordienko/wcagdesk-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wcagdesk-accessibility-scan) to find the latest changes.

## Action Summary

The WCAGdesk Accessibility Scan GitHub Action integrates automated accessibility testing into your CI pipeline by triggering WCAGdesk scans and reporting issues directly in GitHub's Security tab and pull request checks using the SARIF format. It supports compliance with regulations like the European Accessibility Act (EAA) by generating timestamped, immutable scan records, and allows developers to identify and address accessibility issues early in the development process. Key features include configurable severity thresholds for failing builds, detailed issue tracking, and integration with GitHub's code scanning capabilities.

## What's Changed

First release of the WCAGdesk GitHub Action.

## What it does

Drives the WCAGdesk CI surface from your workflow:

- `POST /api/ci/scan` to trigger a scan
- polls `/api/ci/scans/:id` until done / failed / timeout
- downloads SARIF for `github/codeql-action/upload-sarif`
- fails the job when configured severities are non-zero

## Quick start

\`\`\`yaml
- uses: sergordienko/wcagdesk-action@v1
  id: wcagdesk
  with:
    site-id: \${{ vars.WCAGDESK_SITE_ID }}
    api-key: \${{ secrets.WCAGDESK_API_KEY }}

- uses: github/codeql-action/upload-sarif@v3
  if: always() && steps.wcagdesk.outputs.sarif-path != ''
  with:
    sarif_file: \${{ steps.wcagdesk.outputs.sarif-path }}
\`\`\`

See [README](https://github.com/sergordienko/wcagdesk-action#readme)
for full input/output reference and examples.

## Requirements

- WCAGdesk account with at least one verified site
- API key generated at https://wcagdesk.eu/dashboard/#/settings (Counsel tier optional features apply per scan)
- \`curl\` + \`jq\` (preinstalled on GitHub-hosted runners)
