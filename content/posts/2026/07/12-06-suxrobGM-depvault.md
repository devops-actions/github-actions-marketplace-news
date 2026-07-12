---
title: Setup DepVault CLI
date: 2026-07-12 06:07:21 +00:00
tags:
  - suxrobGM
  - GitHub Actions
draft: false
repo: https://github.com/suxrobGM/depvault
marketplace: https://github.com/marketplace/actions/setup-depvault-cli
version: cli/v1.9.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/suxrobGM/depvault** to version **cli/v1.9.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-depvault-cli) to find the latest changes.

## What's Changed


- Stored credentials (`~/.depvault/credentials.json`) are now encrypted at rest — DPAPI on Windows, an owner-only AES-GCM key file on POSIX — instead of plaintext. **You must sign in again after upgrading**: plaintext credential files are no longer migrated, and the server-side session cutover requires a fresh login regardless
- Fix long-lived sessions dropping to the auth-error panel on a second token expiry: token refresh is now attempted once per request (not once per process) and re-reads credentials from disk first, so a rotation performed by a concurrent request or another `depvault` process is picked up instead of tripping the server's replay detection. CI-token 401s are returned as-is, since CI tokens aren't refreshable
- `login` now flows straight into the vault unlock prompt, so `push`/`pull` work without a second command
- `logout` now revokes the refresh session server-side before clearing local credentials
- `whoami` shows the auth panel when the session has expired, instead of a generic failure
- Fix signing in with GitHub from a CLI login link leaving the CLI polling forever — the OAuth round-trip now carries the device code back (server-side fix; no CLI upgrade needed)


