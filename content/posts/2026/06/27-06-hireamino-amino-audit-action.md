---
title: Amino Email Deliverability Audit
date: 2026-06-27 06:37:29 +00:00
tags:
  - hireamino
  - GitHub Actions
draft: false
repo: https://github.com/hireamino/amino-audit-action
marketplace: https://github.com/marketplace/actions/amino-email-deliverability-audit
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/hireamino/amino-audit-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/amino-email-deliverability-audit) to find the latest changes.

## What's Changed

**Catch email-auth regressions before they tank your deliverability — automatically, in CI.**

A broken SPF include, a DMARC record flipped back to `p=none`, a DKIM key downgraded to RSA-1024, an MTA-STS policy that no longer covers your MX — none of these throw an error. They just quietly send your mail to spam, weeks later. **amino-audit-action** turns those regressions into a CI signal on every push and pull request.

### Why teams use it
- 🛡️ Audits **SPF, DKIM, DMARC, MTA-STS, TLS-RPT, DANE, BIMI, DNSSEC & MX hygiene**
- ⚡ Node-native, **zero dependencies**, runs on any runner (Linux / macOS / Windows)
- 🔒 **Read-only** — no secrets, nothing leaves your runner but public DNS lookups
- 📋 Job-summary **scorecard with the exact fix** for each finding + optional PR comment
- 🚦 `fail-on` gate — default **`advisory`** (never breaks your build); ratchet up to `high` to enforce

### Quickstart
```yaml
- uses: hireamino/amino-audit-action@v1
  with:
    domains: example.com
    # fail-on: high   # default: advisory (report-only, never breaks the build)
```

Run the full audit at **[hireamino.com/audit](https://hireamino.com/audit)**, then let Amino watch your domain and warn you the moment it drifts — [hireamino.com/warmup](https://hireamino.com/warmup). Apache-2.0 · by [Amino](https://hireamino.com).
