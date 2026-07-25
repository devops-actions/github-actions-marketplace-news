---
title: Supply Chain Guard
date: 2026-07-25 06:51:53 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.17.9
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action is an open-source supply-chain security scanner that automatically detects malware campaigns (GlassWorm, Vidar, Shai-Hulud), fake AI tool repos, account takeovers, and 350+ threat indicators across various ecosystems such as npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It generates CycloneDX SBOMs, parses and validates in-toto/DSSE attestations, correlates findings into attack-chain incidents, and provides real dependency inventories with SLSA provenance.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.17.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

This GitHub Action is an open-source supply-chain security scanner that automatically detects malware campaigns (GlassWorm, Vidar, Shai-Hulud), fake AI tool repos, account takeovers, and 350+ threat indicators across various ecosystems such as npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and repositories. It generates CycloneDX SBOMs, parses and validates in-toto/DSSE attestations, correlates findings into attack-chain incidents, and provides real dependency inventories with SLSA provenance.

## What's Changed

## [5.17.9] - 2026-07-25
**Threat intel: FakeAgent / SectopRAT fake Claude Desktop malvertising**

Added detection for the FakeAgent campaign (2026-07-21 to 2026-07-22) after the daily
news scan surfaced it and primary vendor write-ups (Huntress, BleepingComputer, Help
Net Security, cyberpress) supplied the concrete indicators.

- **FakeAgent / SectopRAT** (2026-07-21). Bing ads for the "Claude Desktop app"
  pointed at a malicious public Claude Artifact hosted on the legitimate `claude[.]ai`
  domain (downloaded ~7,100 times before removal). Clicking Download redirected
  victims through attacker-registered domains (`download-app[.]us`,
  `claude.ai.download-app[.]us`, `downloading-api.it[.]com`) to a trojanized
  `ClaudeDesktop.exe`: a legitimate JetBrains Chromium binary that sideloads a
  malicious `libcef.dll` to deliver the SectopRAT (ArechClient2) infostealer with
  HVNC. The malware uses EtherHiding over the BNB Smart Chain to resolve its live C2.
  At least 29 organizations were compromised. Added the attacker domains, a
  representative subset of the SectopRAT C2 IPs, the five payload SHA-256 hashes and
  the two EtherHiding C2 addresses. The legitimate `claude[.]ai` apex is deliberately
  not blocked (only the abused artifact path was malicious), and the `it[.]com`
  registry apex is excluded in favor of the specific attacker subdomain.

