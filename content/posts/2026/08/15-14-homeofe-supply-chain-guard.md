---
title: Supply Chain Guard
date: 2026-08-15 14:14:00 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.26.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action supply-chain-guard is an open-source tool designed to scan project dependencies across various ecosystems (npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions and repositories) for malware, fake AI tool repos, account takeovers, and numerous security threats. It generates CycloneDX SBOMs and SLSA provenance to detect and correlate findings into attack-chain incidents, providing comprehensive supply chain security audits.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.26.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The GitHub Action supply-chain-guard is an open-source tool designed to scan project dependencies across various ecosystems (npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions and repositories) for malware, fake AI tool repos, account takeovers, and numerous security threats. It generates CycloneDX SBOMs and SLSA provenance to detect and correlate findings into attack-chain incidents, providing comprehensive supply chain security audits.

## What's Changed

## [5.26.3] - 2026-08-15

### Added

- **250 package IOCs imported from the GitHub Advisory Database**, 173 of them
  corroborated against OSV.dev. All npm. The window is dominated by a single
  bulk-publication event: GitHub backfilled 5,249 OpenSSF `malicious-packages`
  records into the advisory database on 2026-08-14, most of them carrying `MAL-2025-*`
  identifiers for packages npm removed long ago. The importer queues the live material
  first, so this batch is the still-installable part: a farm of single-version
  throwaway publishes (the `*-poke*` and `*-tea` name families) plus a set of
  version-pinned dependency-confusion lures.
- **Six atomic indicators for the Vellia / Guangnao / lodash-js npm malware cluster**
  (August 2026), extracted by hand from the OpenSSF `malicious-packages` write-ups
  because advisory databases publish package coordinates and nothing else. Three C2
  domains: `hub[.]client-llm[.]com`, the WebSocket command hub that
  `@guangnao/agent-proxy` reconstructs at runtime via XOR and base64 so it never
  appears as a plaintext string; `analytics[.]baskirill-an[.]workers[.]dev`, the
  rotatable pool and wallet config endpoint for the `@lodash-js/lodash-js`
  cryptojacker; and `registrynpmjs[.]to`, a lookalike of `registry[.]npmjs[.]org` that
  `@polymarkets/clob-client-v2` uses to serve a trojanized `inquirer` tarball through a
  direct dependency URL. Three matching dead-drop paths, including the
  `@velliajs/discord` runtime allow-list. All are single-source (amazon-inspector), so
  the feed rows carry confidence 0.85 rather than 1.0.
- **Two malicious GitHub accounts** behind `@velliajs/discord`: `navaLinh`, which hosts
  the unpinned private repository the package installs its `sysframe` dependency from,
  and `Vellia-Elyvia`, which hosts the remote kill-switch that gates the bot at
  runtime. Both are attacker-created rather than compromised victims. The
  `api[.]github[.]com` host itself is deliberately not listed, only the attacker's
  repository path, so ordinary GitHub API usage is not flagged. The same discipline
  applies to the `workers[.]dev` apex, where only the attacker's specific worker
  subdomain is listed.

