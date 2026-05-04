---
title: Pompelmi ClamAV Scanner
date: 2026-05-04 22:21:27 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.11.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.11.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

The "pompelmi" GitHub Action provides ClamAV antivirus scanning specifically for Node.js environments. It automates the detection of malicious files, ensuring security by integrating a lightweight and dependency-free solution with built-in TypeScript support. This action helps developers maintain clean and secure codebases by streamlining the antivirus scanning process.

## What's Changed

### Added
- **Webhook notifications** — `notify(webhookUrl, scanResult, options)` sends a POST request when a virus is detected. Payload includes `file`, `verdict`, `viruses`, `timestamp`, and `hostname`. Supports HMAC-SHA256 request signing via `X-Pompelmi-Signature` header when a `secret` is provided. Ships with `onlyOnMalicious: true` default so noise-free by default. Uses Node.js built-in `https`/`http` — zero extra dependencies.
- **EventEmitter scanner** — `createScanner(options)` returns an `EventEmitter`-based scanner with `scan(filePath)` and `scanDirectory(dirPath)` methods. Emits `'clean'`, `'malicious'`, `'scanError'`, and `'error'` events per file — ideal for streaming pipelines and upload processing loops.
- **Automated GitHub Release notes** — release workflow now extracts the matching changelog section from `CHANGELOG.md` and uses it as the release body, with a one-line summary in the release title (`vX.Y.Z — <summary>`). No more static template.
- **`.mailmap`** — maps any historical `claude`/`Claude` authorship entries to the project author so they are excluded from GitHub's contributor list.

### Changed
- `src/index.js` — exports `notify` and `createScanner` alongside existing API.
- `types/index.d.ts` — full TypeScript declarations for `notify`, `NotifyOptions`, `WebhookPayload`, `ScanResultInput`, `createScanner`, and `ScanEmitter` (including typed event overloads).

---
