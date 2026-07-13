---
title: Supply Chain Guard
date: 2026-07-13 11:43:11 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.12.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns, fake AI tool repos, and other threats across various ecosystems like npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It generates CycloneDX SBOMs with real dependency inventories, verifies SLSA provenance, and correlates findings into attack-chain incidents.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.12.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns, fake AI tool repos, and other threats across various ecosystems like npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It generates CycloneDX SBOMs with real dependency inventories, verifies SLSA provenance, and correlates findings into attack-chain incidents.

## What's Changed

### v5.12.2 (2026-07-13)
**Threat-intel: Injective Labs SDK npm compromise (July 2026)**

- Added IOCs for the Injective Labs SDK supply-chain attack (The Hacker News /
  BleepingComputer / Socket / Aikido, 2026-07-08 to 07-10). The Injective Labs
  SDK GitHub repo was compromised and its trusted-publisher (OIDC) pipeline
  abused to publish `@injectivelabs/sdk-ts@1.20.21` carrying "fake telemetry"
  that captures wallet private keys and mnemonic seed phrases when SDK key
  generation/import functions run, base64-encodes them, and HTTPS-POSTs to a
  lookalike exfil host. Version 1.20.21 was pinned across 17 dependent
  `@injectivelabs` scoped packages (18 total; ~310 downloads before it was
  deprecated). Clean version: 1.20.23.
- All 18 package entries are version-pinned (only 1.20.21 matches) - these are
  legitimate packages, so the bare names are intentionally NOT blocked.
- Added the fake-telemetry exfil domain (the full specific hostname is matched,
  never a broad `injective[.]network` block, so legitimate SDK endpoints are
  not flagged) and the two SHA-256 hashes of the infostealer files to
  `ioc-blocklist.ts` and `BUNDLED_FEED`, plus a campaign test block.
- Source excerpts came from the arena.elvatis.com feed; the exact indicators
  were confirmed against the linked primary reports before being added.

