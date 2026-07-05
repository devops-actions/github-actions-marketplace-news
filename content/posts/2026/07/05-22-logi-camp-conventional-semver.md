---
title: conventional-semver
date: 2026-07-05 22:06:26 +00:00
tags:
  - logi-camp
  - GitHub Actions
draft: false
repo: https://github.com/logi-camp/conventional-semver
marketplace: https://github.com/marketplace/actions/conventional-semver
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/logi-camp/conventional-semver** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/conventional-semver) to find the latest changes.

## What's Changed

## v1.1.0 — Prerelease Support

### New Features

- **Prerelease versioning** — New `prerelease` input to generate tags like `v1.3.0-rc.1` or `v1.3.0-rc.a1b2c3d`.
- **Prerelease identifier modes** — `numbered` (auto-incrementing `rc.1`, `rc.2`, ...) or `sha` (commit hash-based).
- **SHA suffix control** — `include_sha` input: `auto` (prerelease only), `true`, or `false`.

### New Outputs

- `base_version` — Base version without prerelease suffix (e.g. `1.3.0`)
- `base_version_tag` — Base version tag with prefix (e.g. `v1.3.0`)
- `rc_number` — The prerelease identifier number or SHA

### Improvements

- Expanded test suite with dedicated prerelease test cases
- Improved test output formatting and helper utilities

### Usage

```yaml
- uses: Logiconamp/conventional-semver@v1.1.0
  with:
    prerelease: rc
    prerelease_identifier: numbered  # or sha
```
