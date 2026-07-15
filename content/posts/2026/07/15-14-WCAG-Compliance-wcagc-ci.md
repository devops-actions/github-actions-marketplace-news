---
title: wcagc accessibility check
date: 2026-07-15 14:48:48 +00:00
tags:
  - WCAG-Compliance
  - GitHub Actions
draft: false
repo: https://github.com/WCAG-Compliance/wcagc-ci
marketplace: https://github.com/marketplace/actions/wcagc-accessibility-check
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action uses the wcagc service to automate accessibility checks on URLs, comparing them with a saved baseline and reporting findings for integration into the review workflow. It covers part of WCAG and EN 301 549, but does not modify a site. The action emits URL-level workflow annotations and provides a summary of coverage limitations and results.
---


Version updated for **https://github.com/WCAG-Compliance/wcagc-ci** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/wcagc-accessibility-check) to find the latest changes.

## Action Summary

This GitHub Action uses the wcagc service to automate accessibility checks on URLs, comparing them with a saved baseline and reporting findings for integration into the review workflow. It covers part of WCAG and EN 301 549, but does not modify a site. The action emits URL-level workflow annotations and provides a summary of coverage limitations and results.

## What's Changed

First production release of the wcagc accessibility check for GitHub Actions and GitLab CI.

Highlights:
- URL-level accessibility checks with baseline comparison
- Configurable failure policies: new-critical, any-critical, serious-or-worse, and none
- GitHub annotations, step summary, severity outputs, and report link
- GitLab CI CLI and ready-to-copy pipeline template
- Honest WCAG and EN 301 549 automation-coverage disclaimer
- Node.js 24 runtime with zero production dependencies

Use the stable major tag:

```yaml
- uses: WCAG-Compliance/wcagc-ci@v1
```

Or pin the immutable exact release:

```yaml
- uses: WCAG-Compliance/wcagc-ci@v1.0.0
```
