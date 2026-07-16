---
title: Supply Chain Guard
date: 2026-07-16 15:06:33 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.12.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automatically scans various package managers and ecosystems to detect potential security threats such as malware, code-level vulnerabilities, and supply chain attacks. It generates CycloneDX SBOMs to provide a comprehensive view of dependencies and verifies SLSA provenance, helping organizations identify and remediate risks in their software supply chains.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.12.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

This GitHub Action automatically scans various package managers and ecosystems to detect potential security threats such as malware, code-level vulnerabilities, and supply chain attacks. It generates CycloneDX SBOMs to provide a comprehensive view of dependencies and verifies SLSA provenance, helping organizations identify and remediate risks in their software supply chains.

## What's Changed

### v5.12.3 (2026-07-16)
**Threat-intel: AsyncAPI npm supply-chain compromise (July 2026)**

- Added IOCs for the AsyncAPI npm supply-chain attack (The Hacker News /
  BleepingComputer / Socket / StepSecurity, 2026-07-14 to 07-15). Five malicious
  versions across four packages in the `@asyncapi` namespace were published to
  npm during a roughly 4-hour window on 2026-07-14 (07:10-11:18 UTC) and
  delivered a credential-stealing multi-stage botnet loader. The loader pulls a
  second stage from IPFS and supports C2 over HTTP, Nostr relays, IPFS,
  BitTorrent DHT, libp2p GossipSub, and an Ethereum smart contract. All five
  versions have since been unpublished from npm. Reported jointly by OX Security,
  SafeDep, Socket, StepSecurity, Microsoft, Wiz and Aikido.
- Version-pinned entries added to `KNOWN_BAD_NPM_VERSIONS` and `BUNDLED_FEED`:
  `@asyncapi/generator@3.3.1`, `@asyncapi/generator-helpers@1.1.1`,
  `@asyncapi/generator-components@0.7.1`, and `@asyncapi/specs@6.11.2` /
  `6.11.2-alpha.1`. These are legitimate packages, so the bare names are
  intentionally NOT blocked - only the listed versions match.
- Added the specific IPFS second-stage CID as a dead-drop resolver. The exact
  malicious CID path is matched, never the `ipfs[.]io` gateway host, so
  legitimate IPFS usage is not flagged.
- New "AsyncAPI npm compromise (July 2026)" campaign test block.
- Source excerpts came from the arena.elvatis.com feed; the exact package
  versions were confirmed against two independent primary reports before being
  added.

