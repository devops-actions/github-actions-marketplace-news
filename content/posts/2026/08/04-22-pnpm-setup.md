---
title: Setup pnpm with runtime
date: 2026-08-04 22:32:50 +00:00
tags:
  - pnpm
  - GitHub Actions
draft: false
repo: https://github.com/pnpm/setup
marketplace: https://github.com/marketplace/actions/setup-pnpm-with-runtime
version: v2.0.0
dependentsNumber: "202"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the installation of pnpm and a JavaScript runtime (Node.js, Bun, or Deno) in a single step. It downloads the self-contained pnpm release binary directly from pnpm's GitHub releases and sets up the requested runtime on `PATH`. This eliminates the need for separate setup steps like `actions/setup-node`, `oven-sh/setup-bun`, or `denoland/setup-deno`. The action supports automatic installation of a specified version of pnpm, a custom destination for pnpm files, and caching the store directory. It also handles runtime selection based on `devEngines.runtime` in `package.json` or defaults to LTS versions for Node.js.
---


Version updated for **https://github.com/pnpm/setup** to version **v2.0.0**.

- This action is used across all versions by **202** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-pnpm-with-runtime) to find the latest changes.

## Action Summary

This GitHub Action automates the installation of pnpm and a JavaScript runtime (Node.js, Bun, or Deno) in a single step. It downloads the self-contained pnpm release binary directly from pnpm's GitHub releases and sets up the requested runtime on `PATH`. This eliminates the need for separate setup steps like `actions/setup-node`, `oven-sh/setup-bun`, or `denoland/setup-deno`. The action supports automatic installation of a specified version of pnpm, a custom destination for pnpm files, and caching the store directory. It also handles runtime selection based on `devEngines.runtime` in `package.json` or defaults to LTS versions for Node.js.

## What's Changed

The action no longer installs pnpm through npm. It downloads pnpm's self-contained release binary for the runner's platform straight from pnpm's GitHub releases, verifies it against the SHA-256 digest GitHub publishes for the asset, and puts it on `PATH`. No Node.js, no npm, no `@pnpm/exe`, no `self-update` round-trip.

That also makes the action immune to broken npm artifacts. pnpm 11.13.0's `@pnpm/exe` build shipped without its platform binary, which made `v1` install a placeholder file that failed later with `This: not found` and exit code 127. The GitHub release binary for that same version is fine, so `v2` installs it correctly. `v2` additionally verifies the install by running `pnpm --version` and comparing it against the requested version, so a bad artifact fails immediately with a clear message instead of surfacing as a confusing error in a later step.

## Breaking changes

**pnpm v11 or newer is required.** `v1` could set up pnpm 10 via `pnpm self-update`; `v2` rejects anything below v11 with an explanatory error. The action is built around pnpm's self-contained release binaries and the `pnpm runtime` command, both of which arrived in v11.

If you need pnpm 10 or older, use [`pnpm/action-setup`](https://github.com/pnpm/action-setup) instead.

**The `bin-dest` output points somewhere new.** It was `~/setup-pnpm/node_modules/.bin/bin`; it is now `~/setup-pnpm` (the `dest` directory itself). Workflows that read the output are unaffected — it still names the directory holding `pnpm` — but anything that hardcoded the old path needs updating.

**`cache-hit` is stricter.** It is now `true` only on an exact key match. `v1` reported `true` for any restore. This matches what `actions/cache` means by `cache-hit`.

No inputs or outputs were removed or renamed.

## What's new

- **Flexible version specs.** `version` accepts an exact version (`12.0.0-beta.4`), a semver range (`^12.0.0`), or an npm dist-tag (`next-12`). It is still optional when `packageManager` or `devEngines.packageManager` is set in `package.json`.
- **Partial store cache reuse.** Cache restore now falls back to restore keys, so a single changed dependency no longer forces a full re-download of the store.
- **New `token` input.** Used for the GitHub release lookup, defaulting to `${{ github.token }}` so the low anonymous API rate limit doesn't apply. It rarely needs to be set.
- **`pnpx`, `pn`, and `pnx` aliases** are linked next to the `pnpm` binary.

## Upgrading

For most workflows the upgrade is the tag:

```diff
-      - uses: pnpm/setup@v1
+      - uses: pnpm/setup@v2
```

Check first that the pnpm version you install — via the `version` input, `packageManager`, or `devEngines.packageManager` — is v11 or newer.

One platform caveat: pnpm v11 publishes no binary for Intel macOS (`darwin-x64`). Use pnpm v12 or newer on Intel macOS runners.

