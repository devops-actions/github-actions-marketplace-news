---
title: VirusTotal Scanner Action
date: 2026-06-11 15:54:29 +00:00
tags:
  - jjw24
  - GitHub Actions
draft: false
repo: https://github.com/jjw24/virustotal-scanner-action
marketplace: https://github.com/marketplace/actions/virustotal-scanner-action
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/jjw24/virustotal-scanner-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/virustotal-scanner-action) to find the latest changes.

## What's Changed

- Scan files with VirusTotal in GitHub Actions
- Results shown directly in workflow logs
- Step passes/fails automatically based on detection
- Local cache avoids re-scanning unchanged files (30-day expiry, configurable)
- Existing report lookup skips upload for already-known files
- Whitelist support for false positives via JSON config
- JSON report output for downstream use
- Respects VirusTotal free-tier rate limits; works with Premium keys too
