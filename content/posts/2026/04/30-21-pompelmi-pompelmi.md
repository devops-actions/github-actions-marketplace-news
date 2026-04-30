---
title: Pompelmi ClamAV Scanner
date: 2026-04-30 21:54:00 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.7.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.7.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

The "pompelmi" GitHub Action provides ClamAV antivirus scanning for Node.js, enabling developers to easily scan files, directories, streams, or in-memory buffers for malicious content. It simplifies virus scanning by offering a single async function (`scan()`) with clear verdicts (`Clean`, `Malicious`, `ScanError`) and supports both local scanning (using ClamAV's `clamscan` command) and remote scanning via TCP or UNIX sockets without requiring regex parsing, native bindings, or runtime dependencies. This tool automates antivirus integration for upload pipelines or HTTP frameworks like Express and Fastify, reducing complexity and maintenance overhead.

## What's Changed

## What's New

###  GitHub Action
pompelmi is now available as a zero-dependency GitHub Action.  
Add ClamAV virus scanning to any repository in 3 lines:

```yaml
- uses: pompelmi/pompelmi@v1.7.0
  with:
    path: .
    fail-on-virus: true
```

- Bundles ClamAV + clamd inside Docker — no setup required
- Updates virus definitions automatically at every run via freshclam
- Posts a scan summary to the GitHub Actions job summary
- Outputs: `status` (clean/infected) and `infected-files`

### 📚 Full Documentation
A complete `docs/` site has been added:
- [Getting Started](docs/getting-started.md)
- [API Reference](docs/api.md)
- [GitHub Action](docs/github-action.md)
- [Docker Setup](docs/docker.md)

###  UNIX Socket Support (from v1.6.0)
Connect to clamd via UNIX socket instead of TCP:

```js
const result = await scan('file.txt', { socket: '/var/run/clamav/clamd.sock' });
```

## Changes
- `action.yml` + `action/` — Docker-based ClamAV GitHub Action
- `docs/` — full documentation site
- `README.md` — updated with Action section and docs links
- `src/ClamdScanner.js`, `BufferScanner.js`, `StreamScanner.js` — UNIX socket support
- `src/ClamAVScanner.js` — routing updated to recognize `socket` option

## Full Changelog
https://github.com/pompelmi/pompelmi/compare/v1.6.0...v1.7.0
