---
title: Shai-Hulud 2.0 Detector
date: 2025-12-05 05:20:24 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/Shai-Hulud-2.0-Detector
marketplace: https://github.com/marketplace/actions/shai-hulud-2-0-detector
version: v2.0.1
dependentsNumber: "35"
---


Version updated for **https://github.com/gensecaihq/Shai-Hulud-2.0-Detector** to version **v2.0.1**.
- This action is used across all versions by **35** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/shai-hulud-2-0-detector) to find the latest changes.

## Release notes

# Shai-Hulud 2.0 Detector v2.0.1

This release adds the **allowlist feature** for excluding false positives and includes several bug fixes and improvements.

## What's New

### Allowlist Feature for False Positives (#26)

You can now exclude known false positives using a `.shai-hulud-allowlist.json` file:

```json
[
  {
    "type": "shai-hulud-repo",
    "titleContains": "Shai-Hulud reference",
    "locationContains": ".github/workflows",
    "comment": "Self-reference in security tool repository"
  }
]
```

**New action inputs:**
- `allowlist-path`: Path to allowlist JSON file (default: `.shai-hulud-allowlist.json`)
- `ignore-allowlist`: Ignore allowlist for security audits
- `warn-on-allowlist`: Show allowlisted items as warnings

### Total Dependencies Count (#28)

Text output now shows the total number of dependencies scanned:

```
📊 Summary
  Files scanned: 3
  Total dependencies: 847
  Compromised packages: 0
```

Thanks to [@lucascco](https://github.com/lucascco) for this contribution!

### False Positive Disclaimer (#25)

Scan results now include a disclaimer noting that the tool provides detection-only capabilities and recommending verification of findings.

### Security Research References Fix (#24)

Fixed false positives when repositories contain legitimate references to security research or the Shai-Hulud attack documentation.

## Bug Fixes

- Fixed GitHub Actions workflow self-detection false positives
- Fixed workflow permission issues for automated updates
- Updated IOC database with latest compromised packages

## Quick Start

```yaml
- uses: gensecaihq/Shai-Hulud-2.0-Detector@v2
  with:
    fail-on-critical: true
```

## Database Statistics

| Metric | Value |
|--------|-------|
| Total Packages | **795+** |
| Data Sources | **7 security vendors** |
| Update Frequency | **Daily (automated)** |

## Full Changelog

https://github.com/gensecaihq/Shai-Hulud-2.0-Detector/compare/v2.0.0...v2.0.1
