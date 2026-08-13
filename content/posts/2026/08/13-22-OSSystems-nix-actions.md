---
title: OSSystems Nix Actions
date: 2026-08-13 22:26:50 +00:00
tags:
  - OSSystems
  - GitHub Actions
draft: false
repo: https://github.com/OSSystems/nix-actions
marketplace: https://github.com/marketplace/actions/ossystems-nix-actions
version: v1.0.6
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  This GitHub Action automates the CI process for Nix flake repos by running checks and building specific attributes. It supports installing Nix and restoring a cache on hosted runners, and it can build hosts, packages, or dev shells as specified in the flake. The action is designed to be used within a job step and can run before or after other tasks.
---


Version updated for **https://github.com/OSSystems/nix-actions** to version **v1.0.6**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ossystems-nix-actions) to find the latest changes.

## Action Summary

This GitHub Action automates the CI process for Nix flake repos by running checks and building specific attributes. It supports installing Nix and restoring a cache on hosted runners, and it can build hosts, packages, or dev shells as specified in the flake. The action is designed to be used within a job step and can run before or after other tasks.

## What's Changed

## Fixed

**A truncated Nix archive download no longer fails the job.**
`nix-quick-install-action` pipes its download straight into `tar`, so a short
body cannot be retried: `curl --retry` is powerless once the bytes have reached
`tar`. The job died with `zstd: unexpected end of file`, and the reported
failure named the caller's job — `gofmt`, `lint` — rather than the download.

Both actions now fetch the archive to a file first and hand the verified copy to
`nix-quick-install-action` through its `nix_archives_url` input:

- Three bounded attempts with a growing wait, and an integrity check on each.
  A body that arrives short but well-formed at the transfer level is the case
  only the integrity check can catch; it drives a retry, not a job failure.
- A download that never arrives intact fails with a message naming the URL, not
  the extraction.
- Only a 404 skips the retry — it means `nix-version` is not a version the
  pinned release ships. A 5xx or an expired asset redirect is retried.
- `--speed-limit`/`--speed-time` bound a stalled body, so the retry is bounded
  in wall time and not only in attempts.

Reported downstream as InoBram/inobramxd#488.

## Added

- **`nix-version` input**, on both `nix-actions` and `update-flake`. Default
  `2.29.2`, which tracks the pinned `nix-quick-install-action` release's own
  default. It must be a version that release ships.

## Tests

`tests/prefetch-nix-archive.test.sh` — 26 assertions against a local server that
reproduces each failure mode. It installs no Nix, so it still reports when the
Nix install itself is broken.

## Upgrading

No caller change is required. `@v1` now points at this release.
