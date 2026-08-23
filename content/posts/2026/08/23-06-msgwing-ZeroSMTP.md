---
title: ZeroSMTP Check
date: 2026-08-23 06:04:17 +00:00
tags:
  - msgwing
  - GitHub Actions
draft: false
repo: https://github.com/msgwing/ZeroSMTP
marketplace: https://github.com/marketplace/actions/zerosmtp-check
version: v1.7.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of auditing and managing Microsoft 365 SMTP AUTH shutdown. It helps identify exposed mailboxes, checks compatibility of devices with OAuth firmware, provides a free relay for backward compatibility, offers code examples and deployment recipes across multiple languages, and includes documentation on error messages and migration strategies.
---


Version updated for **https://github.com/msgwing/ZeroSMTP** to version **v1.7.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zerosmtp-check) to find the latest changes.

## Action Summary

This GitHub Action automates the process of auditing and managing Microsoft 365 SMTP AUTH shutdown. It helps identify exposed mailboxes, checks compatibility of devices with OAuth firmware, provides a free relay for backward compatibility, offers code examples and deployment recipes across multiple languages, and includes documentation on error messages and migration strategies.

## What's Changed

ZeroSMTP Check is now a GitHub Action, and the CLI explains what an SMTP error means rather than only whether the port is open.

**The Action** checks outbound SMTP from a runner and fails the job when the mail server's certificate is inside a window you set. Nobody watches a mail certificate; it expires on a Sunday and the first report is somebody saying scanning stopped working.

```yaml
- uses: msgwing/ZeroSMTP@v1.7.0
  with:
    host: smtp.office365.com
    cert-expiry-days: '14'
```

**`--explain`** takes the refusal your own client printed - a Postfix SASL line, a Python traceback, `1102` off a Kyocera panel, or the `curl: (67) Login denied` that shows none of the server's answer at all. Fourteen error strings are covered, each with whether it can still be turned back on before the end of December 2026.

```bash
npx zerosmtp-check --explain "535 5.7.139 Authentication unsuccessful"
```

Port 25 is checked by default and goes first, because it is the one a provider is most likely to block.

Full notes in [CHANGELOG.md](https://github.com/msgwing/ZeroSMTP/blob/main/CHANGELOG.md).
