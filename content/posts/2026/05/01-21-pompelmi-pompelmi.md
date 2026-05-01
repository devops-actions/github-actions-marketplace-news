---
title: Pompelmi ClamAV Scanner
date: 2026-05-01 21:49:47 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.9.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.9.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

The "pompelmi" GitHub Action provides ClamAV antivirus scanning capabilities for Node.js applications. It automates the detection of malicious files and ensures system integrity by offering a clean, dependency-free solution with TypeScript support. This action addresses the need for reliable, lightweight antivirus scanning in development workflows.

## What's Changed

## What's New

### TypeScript Types Built-in
Full type declarations included in the package — no `@types/pompelmi` needed.

```ts
import { scan, scanBuffer, scanStream, scanDirectory, middleware, Verdict, ScanOptions, ScanResult } from 'pompelmi';

const result: ScanResult = await scan('/path/to/file.pdf');
```

### Automatic PR Comment on Virus Detection
The GitHub Action now posts a comment directly on the PR when infected files are found — no need to dig through logs.

```yaml
- uses: pompelmi/pompelmi@v1.9.0
  with:
    path: .
    fail-on-virus: true
    comment-on-pr: true  # default
```

### Examples Folder
Three ready-to-run framework starters added:

| Directory | Description |
|-----------|-------------|
| `examples/express/` | Full Express app with multer + pompelmi middleware |
| `examples/nextjs/` | Next.js API route scanning raw upload bytes |
| `examples/nestjs/` | NestJS guard wrapping pompelmi for route-level protection |

## Changes
- `types/index.d.ts` — full TypeScript declarations
- `package.json` — `"types"` field added
- `action/scanner.js` — PR comment on virus detection
- `action.yml` — new `comment-on-pr` input
- `examples/` — Express, Next.js, NestJS starters
- `README.md` — TypeScript badge, examples section, coming soon

## Full Changelog
https://github.com/pompelmi/pompelmi/compare/v1.8.0...v1.9.0
