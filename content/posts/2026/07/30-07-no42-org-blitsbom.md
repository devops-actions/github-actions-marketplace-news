---
title: blitsbom SBOM report
date: 2026-07-30 07:03:31 +00:00
tags:
  - no42-org
  - GitHub Actions
draft: false
repo: https://github.com/no42-org/blitsbom
marketplace: https://github.com/marketplace/actions/blitsbom-sbom-report
version: v0.6.1
dependentsNumber: "2"
actionType: Composite
actionSummary: |
  The GitHub Action blitsbom is designed to transform CycloneDX and SPDX SBOM files into a user-friendly HTML report for easy visualization and sharing of dependency information. It provides a zero-install viewer for these files, allowing users to drop their SBOM files onto the page for immediate analysis. The action supports local running, container deployment, and automated release reports in GitHub Actions workflows, offering both offline viewing capabilities and integration with CI/CD pipelines.
---


Version updated for **https://github.com/no42-org/blitsbom** to version **v0.6.1**.

- This action is used across all versions by **2** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blitsbom-sbom-report) to find the latest changes.

## Action Summary

The GitHub Action blitsbom is designed to transform CycloneDX and SPDX SBOM files into a user-friendly HTML report for easy visualization and sharing of dependency information. It provides a zero-install viewer for these files, allowing users to drop their SBOM files onto the page for immediate analysis. The action supports local running, container deployment, and automated release reports in GitHub Actions workflows, offering both offline viewing capabilities and integration with CI/CD pipelines.

## What's Changed

## Highlights

- **A commit-SHA pin now resolves its matching generator image.** Previously it fell back to `:report-rc`, which tracks `main` — an immutable action wrapping a mutable generator, backwards for whoever pinned most carefully. Dependabot pins the release tag's commit, so a SHA-pinned workflow now gets exactly the generator a tag-pinned one does (#160).

## Fixes

- A tag shape naming no published image (`v1.2.3.4`) or an illegal one (`v1.2.3+build.5` — `+` is invalid in an OCI tag) now falls back to `:report-rc` instead of failing the pull (#160).
- An unreadable or absent `package.json`, or an unset `GITHUB_ACTION_PATH`, falls back instead of aborting the step. The floor now holds where it previously killed the job (#160).
- An uppercase-hex SHA pin resolves correctly; the check was case-sensitive (#160).
- The README, which is also the Marketplace listing body, described a CycloneDX-only viewer although SPDX has always been supported. Badges now render inline, and the title carries a logo lockup (#162).

## Upgrading

No action required and no interface change — same inputs, same output. Move your pin to `@v0.6.1` to pick up the resolution fixes; the generator image follows automatically.

Two limits are documented in the README rather than fixed: a SHA pinned *between* releases resolves that commit's `package.json` version, so the generator trails the action slightly, and a fork's SHA resolves against `ghcr.io/no42-org/blitsbom` rather than the fork's own registry. Pass `image` to override either.

## Verification

```bash
shasum -a 512 -c dist.zip.sha512
gh attestation verify dist.zip --repo no42-org/blitsbom
cosign verify ghcr.io/no42-org/blitsbom:0.6.1 \
  --certificate-identity-regexp '^https://github\.com/no42-org/blitsbom/\.github/workflows/docker\.yml@refs/tags/v' \
  --certificate-oidc-issuer https://token.actions.githubusercontent.com
```

**Full Changelog**: https://github.com/no42-org/blitsbom/compare/v0.6.0...v0.6.1

