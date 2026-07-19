---
title: Setup Upwarden
date: 2026-07-19 21:53:57 +00:00
tags:
  - upwarden-io
  - GitHub Actions
draft: false
repo: https://github.com/upwarden-io/setup-upwarden
marketplace: https://github.com/marketplace/actions/setup-upwarden
version: v2.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The `setup-upwarden` GitHub Action automates the authentication and authorization of package manager dependencies, enabling **keyless** OIDC access to private registries. It ensures that every dependency fetch in a CI pipeline is authenticated, attributed, and policy-enforced, mitigating security risks associated with unauthenticated and unattributed package fetches. The action works seamlessly across various toolchains (npm, pnpm, yarn, pip, maven, gradle) and provides a simple setup process to integrate OIDC authentication into your CI pipelines.
---


Version updated for **https://github.com/upwarden-io/setup-upwarden** to version **v2.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-upwarden) to find the latest changes.

## Action Summary

The `setup-upwarden` GitHub Action automates the authentication and authorization of package manager dependencies, enabling **keyless** OIDC access to private registries. It ensures that every dependency fetch in a CI pipeline is authenticated, attributed, and policy-enforced, mitigating security risks associated with unauthenticated and unattributed package fetches. The action works seamlessly across various toolchains (npm, pnpm, yarn, pip, maven, gradle) and provides a simple setup process to integrate OIDC authentication into your CI pipelines.

## What's Changed

Adds the `block-report` sub-action — an opt-in, **zero-secret, zero-config** run-end digest of the dependencies Upwarden blocked in a CI run (CVE/policy id + severity + why + remediation), printed to the job log and the job-summary page.

```yaml
- uses: upwarden-io/setup-upwarden/block-report@v2
  if: always()
```

It reuses the run's own credential (already in the env from `setup-upwarden`) and reads the run's **own** report via the self-scoped CI route `GET /api/v1/ci/run/blocked` — no admin token, no org slug, no run id. Recommended for **maven/gradle** (which hide the inline 403 reason), optional elsewhere. Never fails your build.

Validated maven end-to-end: the run's own credential self-read its `/blocked` and surfaced the CVE that maven had buried behind "Failed to read artifact descriptor". The core `setup-upwarden` action is unchanged from v2.0.1.
