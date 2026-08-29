---
title: AI Shipcheck
date: 2026-08-29 01:45:15 +00:00
tags:
  - sinceaihq
  - GitHub Actions
draft: false
repo: https://github.com/sinceaihq/ai-shipcheck
marketplace: https://github.com/marketplace/actions/ai-shipcheck
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  The AI Shipcheck action automates the security scanning of Node.js applications to identify potential vulnerabilities such as hardcoded secrets, insecure routes, and open redirects. It helps developers ensure their application is secure before deployment by running static code analysis locally.
---


Version updated for **https://github.com/sinceaihq/ai-shipcheck** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-shipcheck) to find the latest changes.

## Action Summary

The AI Shipcheck action automates the security scanning of Node.js applications to identify potential vulnerabilities such as hardcoded secrets, insecure routes, and open redirects. It helps developers ensure their application is secure before deployment by running static code analysis locally.

## What's Changed

AI Shipcheck tells you whether a JavaScript or TypeScript project is ready to
deploy, with evidence for every finding. It runs locally: no signup, no API
key, and nothing from the scanned repository is executed or uploaded.

```bash
npx ai-shipcheck .
```

```yaml
- uses: sinceaihq/ai-shipcheck@v1
  with:
    fail-on: critical
    min-score: 80
```

See the [changelog](https://github.com/sinceaihq/ai-shipcheck/blob/main/CHANGELOG.md)
for everything in this release, and
[corpus/TRIAGE.md](https://github.com/sinceaihq/ai-shipcheck/blob/main/corpus/TRIAGE.md)
for how the rules were validated against twenty real public repositories.

This is static analysis of source code. It is not a security certification, and
a clean report means the checks it knows how to make found nothing — not that
the code is correct. The
[limitations](https://github.com/sinceaihq/ai-shipcheck/blob/main/docs/LIMITATIONS.md)
are documented.

