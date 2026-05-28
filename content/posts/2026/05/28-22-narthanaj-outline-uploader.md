---
title: Outline Security Reporter
date: 2026-05-28 22:57:57 +00:00
tags:
  - narthanaj
  - GitHub Actions
draft: false
repo: https://github.com/narthanaj/outline-uploader
marketplace: https://github.com/marketplace/actions/outline-security-reporter
version: 1.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/narthanaj/outline-uploader** to version **1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/outline-security-reporter) to find the latest changes.

## Action Summary

The **Outline Security Scan & Upload Action** automates security scanning for repositories using **Trivy** (and optionally Checkov), formats the results into Markdown reports, and publishes them to a self-hosted **Outline** wiki in a structured and scalable layout. It simplifies the process of managing and organizing security findings by providing features like per-application layouts, automated report updates, immutable historical archives, and retention policies, enabling streamlined documentation and tracking of security insights.

## What's Changed

## New layout (breaking input shape â `publish-path` is removed)

The action now writes to a stable, predictable tree:

```
reports/ci/<short-code-lower>/<component>/
âââ latest                      # UPDATE-or-CREATE â one stable URL per (app, component)
âââ history/<date>-<sha7>       # immutable archive (retention applies)
```

### Required inputs (replaces `publish-path`)
- `short-code` â app short code (e.g. `NTH-AXT-FL-WA`). Use `_infra` for non-app scans.
- `component` â matrix.component; `app` for single-image projects.
- `commit-sha` â full SHA; the action uses the first 7 chars for the history filename.

### Other changes
- Retention: `retention-count` (default `100`) archives oldest history docs.
- Bootstrap script pre-creates the folder tree to avoid duplicate-folder races under parallel scans.
- Markdown report now embeds short-code and component metadata.
- Exponential backoff on Outline document searches (handles read-replica lag).
- Dropped the legacy Checkov dep from requirements.txt.
