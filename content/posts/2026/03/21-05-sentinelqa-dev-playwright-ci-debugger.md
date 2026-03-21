---
title: Playwright CI Debugger
date: 2026-03-21 05:49:31 +00:00
tags:
  - sentinelqa-dev
  - GitHub Actions
draft: false
repo: https://github.com/sentinelqa-dev/playwright-ci-debugger
marketplace: https://github.com/marketplace/actions/playwright-ci-debugger
version: v1.2.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/sentinelqa-dev/playwright-ci-debugger** to version **v1.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/playwright-ci-debugger) to find the latest changes.

## Action Summary

The **Playwright CI Debugger** GitHub Action simplifies debugging Playwright test failures in CI by aggregating test artifacts (logs, screenshots, videos, and failure contexts) into a single, shareable, hosted debugging report. It eliminates the manual effort of downloading and analyzing scattered artifacts, providing quick failure diagnosis, a concise failure preview, and an accessible link for collaboration via Slack, PRs, or GitHub issues. The action adapts based on available artifacts and supports both public and secure workspace modes.

## Release notes


### Debug Playwright CI failures with one hosted link.

`playwright-ci-debugger` turns a failing Playwright GitHub Actions run into a hosted debugging report you can open and share instantly, without downloading CI artifacts by hand.

### What you get

- Hosted Playwright failure reports in Sentinel
- Quick failure diagnosis directly in GitHub Actions logs
- Shareable links for PRs, Slack and GitHub issues
- Screenshots, videos, grouped failures and failure context in one place
- Public no-auth flow by default
- Workspace mode with `SENTINEL_TOKEN`

### Why use it

Playwright failures in CI are painful when traces, screenshots, videos, and logs are scattered across jobs.

This action gives you one place to inspect what failed and share it with your team.

### Best for

- flaky Playwright failures
- CI failures spread across artifacts
- debugging failures faster in GitHub Actions
- sharing a failed run with teammates

### Quick start

Add it after your Playwright test step:

```yaml
- name: Upload Playwright debug report
  if: always()
  uses: sentinelqa-dev/playwright-ci-debugger@v1
  with:
    project: my-app
    playwright-json-path: test-results/report.json
    playwright-report-dir: playwright-report
    test-results-dir: test-results
```

### Playwright setup
Make sure Playwright writes a JSON report and keeps test artifacts:
```
reporter: [
  ["json", { outputFile: "test-results/report.json" }],
  ["html", { outputFolder: "playwright-report", open: "never" }]
],
outputDir: "test-results"
```

### Outputs
- report-url
- share-url
- first-failure-url
- mode
- summary


<img width="2636" height="6882" alt="screenshot2" src="https://github.com/user-attachments/assets/2482b0a6-8955-4ce7-af0a-35d848b3f9b0" />
