---
title: React2Shell Guard
date: 2025-12-06 13:01:14 +00:00
tags:
  - gensecaihq
  - GitHub Actions
draft: false
repo: https://github.com/gensecaihq/react2shell-scanner
marketplace: https://github.com/marketplace/actions/react2shell-guard
version: v1.0.9
dependentsNumber: "?"
---


Version updated for **https://github.com/gensecaihq/react2shell-scanner** to version **v1.0.9**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/react2shell-guard) to find the latest changes.

## Release notes

## Fixes

Improved URL scanner to correctly detect vulnerable Next.js applications:

- **Version detection**: Now checks page source for vulnerable Next.js/React version strings
- **HTML entity handling**: Properly handles `&quot;` encoded quotes in version strings
- **Multi-endpoint probing**: Scans multiple common Server Action endpoints
- **Enhanced patterns**: Added RSC Flight protocol patterns for better detection

## Verified

Tested against known vulnerable target: `https://nextjs-cve-hackerone.vercel.app/`

```
$ npx react2shell-guard@1.0.9 scan-url https://nextjs-cve-hackerone.vercel.app/

VULNERABLE
  URL: https://nextjs-cve-hackerone.vercel.app/
  Status: 200
  Signature: version-detection: "next": "16.0.6"
```

## Installation

```bash
npm install -g react2shell-guard@1.0.9
```
