---
title: SkillTotal AI Component Security Scan
date: 2026-07-08 14:58:27 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.34.5
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.34.5**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **Ruleset 37 — test-certificate private keys no longer scored** (see `RULES_CHANGELOG.md`),
  a false positive from the reputable-corpus tripwire. Packages ship dummy TLS certificate +
  private-key pairs for their own test HTTPS servers (`urllib3` `dummyserver/certs/*.key`,
  `grpcio` `src/core/tsi/test_creds/*.key`); a "Private key block" whose directory path carries a
  test/dummy/fixture marker next to a cert/cred/tls/ssl marker is routed to `needs_review`, not
  scored. Effect: `urllib3`, `grpcio` high → low. Recall preserved: a private key on a normal
  path (`id_rsa`, `config/deploy.key`) still scores.


