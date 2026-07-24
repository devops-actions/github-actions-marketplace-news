---
title: Supply Chain Guard
date: 2026-07-24 19:20:53 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.17.8
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Supply-chain Guard is an open-source tool designed to scan and analyze dependency chains across various package managers and ecosystems, including npm, Pypi, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It detects malware campaigns (e.g., GlassWorm, Vidar), fake AI tool repos, account takeovers, and numerous threat indicators across multiple lockfile formats. The action generates CycloneDX SBOMs, validates SLSA provenance, and correlates findings into attack-chain incidents for enhanced security awareness and remediation.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.17.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

Supply-chain Guard is an open-source tool designed to scan and analyze dependency chains across various package managers and ecosystems, including npm, Pypi, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It detects malware campaigns (e.g., GlassWorm, Vidar), fake AI tool repos, account takeovers, and numerous threat indicators across multiple lockfile formats. The action generates CycloneDX SBOMs, validates SLSA provenance, and correlates findings into attack-chain incidents for enhanced security awareness and remediation.

## What's Changed

## [5.17.8] - 2026-07-24
**Threat intel: jscrambler npm compromise, cPanel/WHM GitHub Actions abuse, and the Apex macOS infostealer**

Added detection for three developer-targeted supply-chain campaigns whose concrete
indicators were sourced from primary vendor write-ups (Socket, The Hacker News, OX
Security, StepSecurity, safedep, Rescana) after the daily news scan surfaced them
by name only.

- **jscrambler npm compromise** (2026-07-11). The `jscrambler` package (~15,800
  weekly downloads) and four companion build plugins were hijacked and republished
  with a native Rust infostealer: a malicious `preinstall` hook in 8.14.0-8.17.0,
  then a self-executing dropper in `dist/index.js` and `dist/bin/jscrambler.js`
  from 8.18.0. The payload harvests AWS, GCP and Azure credentials, crypto wallets,
  browser data and AI-tool configs on Windows, macOS and Linux. Last clean release
  is 8.13.0, fixed in 8.22.0. The previous partial entry (8.14.0 only) is extended
  to the full malicious set.
- **cPanel/WHM GitHub Actions abuse** (2026-07-23). A legitimate developer's ten
  Packagist packages had malicious `dev-main` versions injected with dozens of
  GitHub Actions workflow files that spin up runners, pull an architecture-specific
  Linux payload from `43[.]228[.]157[.]68`, and scan for cPanel/WHM servers
  vulnerable to CVE-2026-41940 to harvest credentials, SSH material and cloud keys.
  Only the network and file indicators are ingested: the maintainer is a victim, so
  neither the account nor the bare package names are flagged.
- **Apex macOS infostealer** (2026-07-22). A postinstall dropper installs an
  AMOS-family macOS infostealer while installing a working forked coding agent as
  cover. npm removed `@apexfdn/apex`; the operator re-published the same payload as
  `@copilot-mcp/apex` about eleven hours later and churned twenty-plus versions in
  eight hours, so the packages are blocked by name rather than version.

### Added
- Version-pinned `jscrambler` (8.14.0/8.16.0/8.17.0/8.18.0/8.20.0),
  `jscrambler-webpack-plugin` 8.6.2, `gulp-jscrambler` 8.6.2, `grunt-jscrambler`
  8.5.2 and `jscrambler-metro-plugin` 9.0.2 in `KNOWN_BAD_NPM_VERSIONS`
  (src/ioc-blocklist.ts) and `BUNDLED_FEED` (src/threat-intel.ts), plus five
  SHA-256 payload hashes.
- `43[.]228[.]157[.]68` in `KNOWN_C2_IPS`, the DNS-callback subdomain
  `f5b0b742-240a-4811-8a5b-b0ba6060685d[.]dnshook[.]site` in `KNOWN_C2_DOMAINS`,
  and the Linux exploit payload SHA-256 in `KNOWN_MALICIOUS_HASHES` for the
  cPanel/WHM campaign, mirrored as `BUNDLED_FEED` entries.
- `^(@apexfdn\/apex|@copilot-mcp\/apex)$` to `MALICIOUS_PACKAGE_PATTERNS`
  (src/patterns.ts) plus bare-name `BUNDLED_FEED` entries for both packages.
- Campaign test coverage in `src/__tests__/campaigns.test.ts` for all three
  campaigns, including negative tests for the clean jscrambler 8.13.0 release.

