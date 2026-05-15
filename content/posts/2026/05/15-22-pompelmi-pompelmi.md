---
title: Pompelmi ClamAV Scanner
date: 2026-05-15 22:12:29 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.20.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.20.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

The GitHub Action "pompelmi" provides ClamAV-based antivirus scanning for Node.js applications, offering a clean, type-safe implementation with zero dependencies. It automates the process of scanning files for potential malware, ensuring security in application workflows. Key capabilities include seamless integration with Node.js projects and robust file scanning functionality without external dependencies.

## What's Changed

### Added
- Star prompt printed to stderr on first import (skipped in CI and non-TTY environments), with a `~/.pompelmi/.starred` marker so it shows only once.
- `scripts/postinstall.js` — prints a GitHub star nudge to stdout after `npm install` in interactive terminals.

### Changed
- `package.json` — added `postinstall` script pointing to `scripts/postinstall.js`; bumped version to 1.20.0.

---
