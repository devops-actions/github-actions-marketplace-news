---
title: AccessLedger Accessibility Scan
date: 2026-08-02 06:09:20 +00:00
tags:
  - TJGaushas
  - GitHub Actions
draft: false
repo: https://github.com/TJGaushas/accessledger-scan-action
marketplace: https://github.com/marketplace/actions/accessledger-accessibility-scan
version: v1.0.2
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action automates a Web Content Accessibility Guidelines (WCAG) accessibility scan on every pull request or push in an organization's repository. It integrates with AccessLedger, a cloud-based tool for tracking accessibility issues across websites. The action runs the scan against a specified URL or site ID and posts the results to a comment on the PR, updating it if changes are made. If violations exceed a certain severity level (default is "serious"), it fails the job. The action logs each scan in AccessLedger for a dated remediation record.
---


Version updated for **https://github.com/TJGaushas/accessledger-scan-action** to version **v1.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/accessledger-accessibility-scan) to find the latest changes.

## Action Summary

This GitHub Action automates a Web Content Accessibility Guidelines (WCAG) accessibility scan on every pull request or push in an organization's repository. It integrates with AccessLedger, a cloud-based tool for tracking accessibility issues across websites. The action runs the scan against a specified URL or site ID and posts the results to a comment on the PR, updating it if changes are made. If violations exceed a certain severity level (default is "serious"), it fails the job. The action logs each scan in AccessLedger for a dated remediation record.

## What's Changed

Run a WCAG 2.2 AA scan on every push or pull request, fail the build on serious issues, and record the result in your AccessLedger remediation ledger.

```yaml
- uses: TJGaushas/accessledger-scan-action@v1
  with:
    api-token: ${{ secrets.ACCESSLEDGER_API_TOKEN }}
    url: https://example.com
```

**Fixed since v1.0.1**

- The quick start and the example workflow told users to write `uses: accessledger/accessledger-action@v1`. That org and repo do not exist, so every person who followed the quick start got a 404 on their first run. Corrected to `TJGaushas/accessledger-scan-action`.
- The issue-reporting URL printed on an internal error pointed at the same non-existent repo.

The floating `v1` tag now points at this commit.

Automated testing catches roughly 30–40% of WCAG success criteria. This action is evidence of ongoing testing, not a claim of compliance.

