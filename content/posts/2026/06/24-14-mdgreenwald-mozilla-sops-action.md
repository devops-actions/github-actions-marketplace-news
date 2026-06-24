---
title: Mozilla SOPS Installer
date: 2026-06-24 14:49:38 +00:00
tags:
  - mdgreenwald
  - GitHub Actions
draft: false
repo: https://github.com/mdgreenwald/mozilla-sops-action
marketplace: https://github.com/marketplace/actions/mozilla-sops-installer
version: v2.1.0
dependentsNumber: "239"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/mdgreenwald/mozilla-sops-action** to version **v2.1.0**.

- This action is used across all versions by **239** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mozilla-sops-installer) to find the latest changes.

## What's Changed

### Added

- New optional `token` input. When set, the `latest`-version lookup against the GitHub API sends `Authorization: Bearer <token>`, raising the rate limit from 60/hr (unauthenticated, per source IP) to 1000/hr. Typically `${{ secrets.GITHUB_TOKEN }}`. ([#244](https://github.com/mdgreenwald/mozilla-sops-action/pull/244))

### Security

- Forced `js-yaml` to `^4.2.0` via `npm overrides` to fix a quadratic-complexity DoS in merge-key (`<<`) handling ([GHSA-h67p-54hq-rp68](https://github.com/advisories/GHSA-h67p-54hq-rp68) / CVE-2026-53550). `js-yaml@3.x` was present only as a dev-only transitive dependency (via `ts-jest` → `@jest/transform` → `babel-plugin-istanbul` → `@istanbuljs/load-nyc-config`); the production bundle was never affected. ([#243](https://github.com/mdgreenwald/mozilla-sops-action/pull/243))

### Internal

- Bumped the `stableSopsVersion` offline fallback to `v3.13.1`.


