---
title: Supply Chain Guard
date: 2026-08-08 14:44:33 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.25.8
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `supply-chain-guard` GitHub Action is an open-source tool that performs a comprehensive supply-chain security scan for various ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, and GitHub repositories. It detects malware campaigns such as GlassWorm, Vidar/GhostSocks, and Shai-Hulud, as well as fake AI tool repos and account takeovers. The action generates CycloneDX SBOMs with real dependency inventories and SLSA provenance for each scan result.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.25.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

The `supply-chain-guard` GitHub Action is an open-source tool that performs a comprehensive supply-chain security scan for various ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, and GitHub repositories. It detects malware campaigns such as GlassWorm, Vidar/GhostSocks, and Shai-Hulud, as well as fake AI tool repos and account takeovers. The action generates CycloneDX SBOMs with real dependency inventories and SLSA provenance for each scan result.

## What's Changed

## [5.25.8] - 2026-08-08

### Added

- Threat feed: 250 malicious-package IOCs imported from the GitHub Advisory Database with
  OSV.dev corroboration (2026-08-08 sweep, 230 npm and 20 PyPI). 4,498 advisories were
  fetched over 45 pages; the page cap was not hit and no `--allow-truncated` or
  `--allow-backlog` override was used. 49 mappable entries remain behind the `--limit 250`
  cap, all of them drainable inside the `--days 14` window, so the next scheduled run takes
  them. The batch continues the Tinkoff/T-Bank `dolyame-ui-*` / `devplatform-*` /
  `delivery-ci-*` / `ded-pwa-*` dependency-confusion wave (roughly 130 names at the 35.x
  internal version series), adds a `@depup/*` cluster that mimics upstream releases with a
  `-depup.N` version suffix, a PyPI single-character-typosquat set (`pydanticc`, `flasq`,
  `idnna`, `fastapii`), an AI-agent impersonation cluster (`aclade-agent`, `agenthub-ai`,
  `mangomind-agent`), and a web3 tooling cluster (`hardhat-cap`, `hardhat-set`,
  `forge-gas-diff`, `gas-diff-core`, `@coralxyz/anchor`).
- IOC blocklist: second indicator wave for the ChainDrop npm worm (Microsoft and Datadog
  published the resolver internals after the initial 2026-08-04 write-ups). Added the two
  sibling C2 routers resolved from the same Ethereum contract, `pypi-get[.]com` and
  `js-mirror[.]com`, the earlier rotation target `awqhnjewqjkl[.]icu`, four SHA-256 hashes
  from the later re-obfuscation waves (the `.vscode/tasks.json` IDE persistence hook, a
  re-obfuscated stage-2 stealer, the `zZ.bin` loader, and the embedded GitHub Actions
  `Runner.Worker` memory dumper), and the two fixed marker names of the exfiltration
  repositories the worm creates under each victim account. Every hash was re-confirmed by
  exact-string search against an independent write-up before ingestion; a fifth hash from
  the same source could not be corroborated and was deliberately left out. The public
  Ethereum RPC providers the resolver calls are deliberately not ingested - they are shared
  infrastructure, and a negative test pins that.
- IOC blocklist: two follow-up indicators for the Alibaba developer toolchain RAT from
  Corgea's analysis - the live `raw.githubusercontent[.]com` config dead-drop path under
  the already-blocked attacker account, and `node-data-utils@1.0.1`, a nineteenth staging
  package neither the advisory databases nor the original write-up listed. Both are
  single-source and carry confidence 0.85. The package is version-pinned rather than
  blocked by name, and the `raw.githubusercontent[.]com` host is never listed on its own.

### Security

- Lockfile: `nanoid` 3.3.16 to 3.3.18, resolving GHSA-2v37-7h3g-55p8 (high). A
  development-only transitive dependency, reached through `vitest` -> `vite` -> `postcss`;
  the published package still has `commander` as its only runtime dependency, so no
  consumer was ever exposed. Included here because the newly published advisory turns the
  `npm audit --audit-level=high` CI gate red on every branch until the lockfile moves.

