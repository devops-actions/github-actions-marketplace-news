---
title: segspec
date: 2026-06-20 15:07:24 +00:00
tags:
  - dormstern
  - GitHub Actions
draft: false
repo: https://github.com/dormstern/segspec-action
marketplace: https://github.com/marketplace/actions/segspec
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/dormstern/segspec-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/segspec) to find the latest changes.

## What's Changed

Critical fix plus hardening. v1.0.0 requested a release asset name that segspec does not publish, so every run failed; v1.0.1 downloads the correct archive and verifies it before running.

- Fixed: download the goreleaser archive and extract it; `latest` resolves to a concrete tag.
- Security: fail-closed SHA-256 verification against the release `checksums.txt` before the binary executes.
- Added: `annotate` (job summary + drift annotations), `github-token`, and a `version` output.
- Docs: least-privilege `permissions:` in every example, SARIF → Security tab recipe, badges. Dependabot + SHA-pinned self-test.

Pin to `@v1` for the latest 1.x, or `@v1.0.1` / a commit SHA for reproducibility.
