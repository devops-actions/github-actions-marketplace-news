---
title: Setup Upwarden
date: 2026-08-08 14:21:08 +00:00
tags:
  - upwarden-io
  - GitHub Actions
draft: false
repo: https://github.com/upwarden-io/setup-upwarden
marketplace: https://github.com/marketplace/actions/setup-upwarden
version: v2.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Summary:**
  
  The `setup-upwarden` GitHub Action is a composite action designed to automate dependency fetches in CI pipelines by authenticating and attributing requests through the Upwarden proxy using OIDC. It simplifies the process of managing dependencies securely, ensuring that each fetch is authenticated, attributed, and policy-enforced. The action supports various package managers, including npm, pnpm, yarn, pip, Maven, Gradle, Bun, Cargo (crates), Go modules, NuGet, and allows for static mode with a standing Upwarden key in cases where OIDC is not available.
---


Version updated for **https://github.com/upwarden-io/setup-upwarden** to version **v2.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-upwarden) to find the latest changes.

## Action Summary

**Summary:**

The `setup-upwarden` GitHub Action is a composite action designed to automate dependency fetches in CI pipelines by authenticating and attributing requests through the Upwarden proxy using OIDC. It simplifies the process of managing dependencies securely, ensuring that each fetch is authenticated, attributed, and policy-enforced. The action supports various package managers, including npm, pnpm, yarn, pip, Maven, Gradle, Bun, Cargo (crates), Go modules, NuGet, and allows for static mode with a standing Upwarden key in cases where OIDC is not available.

## What's Changed

## `tool: bun` — first-class bun support

bun is advertised on every pricing tier and sits in the dashboard ecosystem picker, and the proxy has always spoken it — only this action was missing a `tool:` value. Now:

```yaml
permissions:
  contents: read
  id-token: write
steps:
  - uses: upwarden-io/setup-upwarden@v2
    with:
      tool: bun
  - run: bun install
```

### Credential handling is unchanged (Tier B preserved)

bun is wired through `.npmrc`, **not** `bunfig.toml`. That is not a fallback — it is the only shape that keeps the credential off disk. Measured on bun 1.3.8 against a local capture listener:

- bun **reads** a project-level `.npmrc`, and
- bun **expands `${VAR}`** from the process environment at install time

so the file carries `//host/:_authToken=${UPWARDEN_CREDENTIAL}` and the secret never lands on disk. `bunfig.toml` has no equivalent reference-to-env form for the auth token, so using it would have forced the credential into a file.

**Precedence**, also measured: with both a project `.npmrc` and a pre-existing `bunfig.toml` present, bun uses the `.npmrc`. The managed block wins over a customer's existing bunfig.

### Notes

- Routing joins the existing npm family (`npm|pnpm|yarn|yarn-classic|bun` → `npm.pkg.upwarden.io`) — no new protocol, host or URL shape.
- The writer targets the **project** `.npmrc`, deliberately unlike `pnpm.sh` (pnpm ≥11.5.3 dropped env interpolation in project files; bun has no such restriction).
- Supported-tool count goes from 9 to 10.

Consumers on `@v2` get this automatically.
