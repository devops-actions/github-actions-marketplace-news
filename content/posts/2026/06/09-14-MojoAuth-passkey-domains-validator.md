---
title: MojoAuth Passkey Domains Validator
date: 2026-06-09 14:52:27 +00:00
tags:
  - MojoAuth
  - GitHub Actions
draft: false
repo: https://github.com/MojoAuth/passkey-domains-validator
marketplace: https://github.com/marketplace/actions/mojoauth-passkey-domains-validator
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/MojoAuth/passkey-domains-validator** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mojoauth-passkey-domains-validator) to find the latest changes.

## What's Changed

**Repo description / Marketplace tagline (one line):**
Validate the apple-app-site-association, assetlinks.json, and .well-known/webauthn files that passkeys and associated domains depend on.

Alternatives if you want it punchier:
- Catch broken passkey config before it ships — validates your iOS, Android, and WebAuthn well-known files in CI.
- CI validation for passkey and associated-domains well-known files (AASA, assetlinks.json, webauthn).
**Release notes:**

First public release. A GitHub Action that validates the three "well-known" files passkeys and associated domains rely on, so cross-device and cross-app login doesn't silently break in production.

**What it checks**

apple-app-site-association: valid JSON, a `webcredentials.apps` array required for passkeys, app IDs in `TEAMID.bundle.id` form (optionally matched against an expected Team ID), well-formed `applinks`, and no redirect when fetched live.

assetlinks.json: valid Digital Asset Links, at least one statement granting `get_login_creds` (required for Android passkey autofill), `android_app` targets with a `package_name`, and correctly formatted SHA-256 certificate fingerprints.

.well-known/webauthn: valid JSON with a non-empty `origins` array where every related origin is HTTPS.

**Usage**

```yaml
- uses: mojoauth/passkey-domains-validator@v1
  with:
    aasa: public/.well-known/apple-app-site-association
    assetlinks: public/.well-known/assetlinks.json
    webauthn: public/.well-known/webauthn
```

Supply any combination of the three files. Configurable via `expected-team-id` and `fail-on` (`error` / `warning` / `never`); exposes `result`, `errors`, and `warnings` as outputs. Pure Python standard library — no dependencies to install. See the README for the full reference.

Maintained by MojoAuth — https://mojoauth.com

---
