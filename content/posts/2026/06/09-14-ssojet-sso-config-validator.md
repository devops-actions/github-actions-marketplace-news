---
title: SSOJet SSO Config Validator
date: 2026-06-09 14:46:54 +00:00
tags:
  - ssojet
  - GitHub Actions
draft: false
repo: https://github.com/ssojet/sso-config-validator
marketplace: https://github.com/marketplace/actions/ssojet-sso-config-validator
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/ssojet/sso-config-validator** to version **v1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ssojet-sso-config-validator) to find the latest changes.

## What's Changed

**What it checks**

SAML metadata: well-formed `EntityDescriptor`/`EntitiesDescriptor`, present and matching `entityID`, a usable `IDPSSODescriptor` or `SPSSODescriptor`, a signing certificate that parses and hasn't expired (with a configurable early-warning window), and SSO/ACS endpoints with recognized bindings and HTTPS locations.

OIDC discovery: valid JSON with all spec-required members, an HTTPS issuer with no query/fragment, HTTPS endpoints throughout, and recommended algorithm/flow support (`RS256`, Authorization Code).

**Usage**

```yaml
- uses: ssojet/sso-config-validator@v1
  with:
    saml-metadata: config/saml/idp-metadata.xml
    oidc-discovery: https://auth.example.com/.well-known/openid-configuration
```

Supply either input or both. Configurable via `expected-issuer`, `check-cert-expiry`, `cert-expiry-threshold-days`, and `fail-on` (`error` / `warning` / `never`). Exposes `result`, `errors`, and `warnings` as outputs. See the README for the full reference.

Maintained by SSOJet — https://ssojet.com

