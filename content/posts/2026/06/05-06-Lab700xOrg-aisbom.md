---
title: AIsbom Security Scanner
date: 2026-06-05 06:48:45 +00:00
tags:
  - Lab700xOrg
  - GitHub Actions
draft: false
repo: https://github.com/Lab700xOrg/aisbom
marketplace: https://github.com/marketplace/actions/aisbom-security-scanner
version: v1.0.6
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Lab700xOrg/aisbom** to version **v1.0.6**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aisbom-security-scanner) to find the latest changes.

## What's Changed

### What's new
**Scanned branch in dashboard uploads** — When the GitHub Action posts an SBOM to a connected dashboard, it now includes the branch or tag that was actually scanned (`X-Aisbom-Ref`, sourced from `GITHUB_REF_NAME`). The dashboard can attribute each scan to the correct ref instead of falling back to a placeholder.
* **Honest fallback**: the header is sent only when the ref is known. For local runs or older Action versions where it's unset, the header is omitted entirely — the receiver shows an honest "—" rather than a guessed branch.
* **Opt-in only**: this affects the platform upload path that already requires an explicit `token`. Default CLI-only scanning is unchanged.

### What's not changing
All scanner rules, exit codes, command signatures, and SBOM output schemas are byte-for-byte identical to v1.0.5. The new header is purely additive and only appears on the already opt-in dashboard upload.

