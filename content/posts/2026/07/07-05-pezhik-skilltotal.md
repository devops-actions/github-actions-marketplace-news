---
title: SkillTotal AI Component Security Scan
date: 2026-07-07 05:12:31 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.33.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.33.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **Ruleset 31 — installed-app Google OAuth client secret false positive** (see
  `RULES_CHANGELOG.md`): a `GOCSPX-` client secret in a file with installed-app flow markers
  (loopback redirect, device code, PKCE, oob) is routed to `needs_review` instead of scored —
  for native/CLI apps Google documents this value as not confidential (gcloud ships one), so
  it must not synthesize a critical exfiltration verdict. A `GOCSPX-` secret without those
  markers (a leaked web-app secret) and all other secret shapes stay fully scored. Found on
  gemini-cli: critical/100 → high/50.


