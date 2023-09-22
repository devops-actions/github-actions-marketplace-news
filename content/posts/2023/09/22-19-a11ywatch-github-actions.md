---
title: Web Accessibility Evaluation
date: 2023-09-22 19:00:34 +00:00
tags:
  - a11ywatch
  - GitHub Actions
draft: false
repo: a11ywatch/github-actions
marketplace: https://github.com/marketplace/actions/web-accessibility-evaluation
version: v2.1.2
dependentsNumber: "11"
---


Version updated for **a11ywatch/github-actions** to version **v2.1.2**.
- This publisher is shown as erified by GitHub.
- This action is used across all versions by **11** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/web-accessibility-evaluation) to find the latest changes.

## Release notes

## What's Changed

* feat(video): add audits recording litemode option by @j-mendez in https://github.com/a11ywatch/github-actions/pull/47
* chore(playwright): fix chrome install with cacheing 

Use the `RECORD` input to declare a folder that should store video recordings of the audit. Omit the value to prevent recordings and speed up results. Recording is only available when running locally.

```yaml
- uses: a11ywatch/github-action@v2
  with:
    WEBSITE_URL: ${{ secrets.WEBSITE_URL }}
    RECORD: recordings
```

**Full Changelog**: https://github.com/a11ywatch/github-actions/compare/v2.0.2...v2.1.2
