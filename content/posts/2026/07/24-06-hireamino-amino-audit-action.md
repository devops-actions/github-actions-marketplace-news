---
title: Amino Email Deliverability Audit
date: 2026-07-24 06:26:43 +00:00
tags:
  - hireamino
  - GitHub Actions
draft: false
repo: https://github.com/hireamino/amino-audit-action
marketplace: https://github.com/marketplace/actions/amino-email-deliverability-audit
version: v1.3.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
actionSummary: |
  This GitHub Action audits the email-authentication posture of sending domains to ensure they meet best practices, such as SPF, DKIM, and DMARC. It provides a detailed audit report in the job summary and allows users to set severity thresholds to fail builds on regressions. The action is read-only and runs on any runner OS.
---


Version updated for **https://github.com/hireamino/amino-audit-action** to version **v1.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/amino-email-deliverability-audit) to find the latest changes.

## Action Summary

This GitHub Action audits the email-authentication posture of sending domains to ensure they meet best practices, such as SPF, DKIM, and DMARC. It provides a detailed audit report in the job summary and allows users to set severity thresholds to fail builds on regressions. The action is read-only and runs on any runner OS.

## What's Changed

Major correctness + reliability release. The audit's email-auth verdicts are now governed by a shared conformance spec, verified identically across all three Amino surfaces (this Action, the web tool, and the skill).

**Still advisory-by-default** — `fail-on: advisory` continues to never break the build; enforcement is opt-in.

### False-pass fixes (a security gate must never call broken config healthy)
- **DKIM**: an empty `p=` (revoked selector) and a malformed Ed25519 key no longer read as healthy; real RSA modulus bit-length is read from the key DER (weak = any RSA < 2048).
- **DMARC**: `p=` must be `none|quarantine|reject` (`p=banana` is no longer "enforced"); tags parsed case-insensitively; **RFC 9989 tree walk** so a subdomain inherits the org policy instead of a false "No DMARC"; eTLD+1 org-domain (so `good.co.uk`≠`evil.co.uk` for report authorization).
- **SPF**: `-ALL` handled case-insensitively (no contradictory "no all mechanism").
- **MTA-STS**: wildcard matches exactly one label (RFC 8461); `enforce` requires `version: STSv1` + valid mode + integer `max_age` + ≥1 `mx:`; policy fetch requires HTTP 200 + `text/plain`.
- **DANE/DNSSEC**: DANE requires a **DNSSEC-validated** (AD-bit) TLSA (RFC 7672); DNSSEC uses the AD bit, which respects the zone cut.

### Reliability / new I/O
- New input `continue-on-audit-error` (default `true`) and output `audit-complete`. Empty/invalid `domains` input now exits non-zero; a transient DNS failure (SERVFAIL/REFUSED) on a critical lookup marks the audit inconclusive (`audit-complete=false`, `passed=false`) rather than a silent green — failing the build only when `continue-on-audit-error=false`.

### Engineering
- Zero runtime dependencies preserved. A fixtures-driven conformance runner gates every surface in CI. 69 local tests + 15 shared conformance cases green.

Full plan and per-invariant detail: hireamino/amino-skills#1.
