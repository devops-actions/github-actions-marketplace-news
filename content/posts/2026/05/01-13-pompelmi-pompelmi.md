---
title: Pompelmi ClamAV Scanner
date: 2026-05-01 13:53:02 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.8.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.8.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

The "pompelmi" GitHub Action provides ClamAV antivirus scanning for Node.js applications, featuring a clean, type-safe implementation with no external dependencies. It automates the detection of malware or viruses in files, enhancing security for Node.js projects. Key capabilities include efficient scanning, TypeScript support, and integration with modern CI/CD workflows.

## What's Changed

## What's New

### Express/Fastify Middleware
Protect file uploads in one line:

```js
const { middleware } = require('pompelmi')
app.use(middleware({ uploadField: 'file' }))
```

- Automatically scans files uploaded via multer
- Returns `403` if a virus is detected, calls `next()` if clean
- Works with Express and Fastify

### Scan Report Artifact
The GitHub Action now generates a downloadable scan report after every run:
- `report.json` — machine-readable results
- `report.html` — human-readable table with file, status, verdict
- Uploaded automatically as a GitHub Actions artifact named `pompelmi-scan-report`

### pompelmi Badge
Add the badge to your repo to show it's protected:

```markdown
[![Scanned by pompelmi](https://img.shields.io/badge/scanned%20by-pompelmi-orange)]
```

See [BADGE.md](BADGE.md) for copy-paste instructions.

## Changes
- `src/middleware.js` — new Express/Fastify middleware
- `src/index.js` — exports middleware
- `action/scanner.js` — report.json + report.html artifact upload
- `README.md` — badge + middleware section
- `BADGE.md` — copy-paste badge instructions
- `docs/github-action.md` — badge and report sections updated

## Full Changelog
https://github.com/pompelmi/pompelmi/compare/v1.7.0...v1.8.0
