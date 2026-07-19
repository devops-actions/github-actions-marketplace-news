---
title: Supply Chain Guard
date: 2026-07-19 14:57:03 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.17.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns, fake AI tool repos, account takeovers, and over 350 threat indicators across various ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and GitHub repositories. It generates CycloneDX 1.6 SBOMs with real dependency inventories, parses and validates in-toto/DSSE attestations, and correlates findings into attack-chain incidents.
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.17.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## Action Summary

Supply-chain-guard is an open-source supply-chain security scanner that detects malware campaigns, fake AI tool repos, account takeovers, and over 350 threat indicators across various ecosystems including npm, PyPI, Cargo, Go, RubyGems, Composer, NuGet, Docker, Terraform, VS Code extensions, GitHub Actions, and GitHub repositories. It generates CycloneDX 1.6 SBOMs with real dependency inventories, parses and validates in-toto/DSSE attestations, and correlates findings into attack-chain incidents.

## What's Changed

## [5.17.5] - 2026-07-19
**Threat intel: NadMesh botnet - Go-based botnet hunting exposed AI services**

Added detection for the NadMesh botnet (XLab, reported by The Hacker News on
2026-07-17). NadMesh is a Go-based botnet that scans for exposed AI services
(Ollama, vLLM and similar) and CI/CD hosts, harvesting AWS keys and Kubernetes
tokens; its operator claimed 3,811 unique AWS keys. Detection rides on XLab's
published network infrastructure plus the agent-sample hash - there are no
package IOCs because this is a scanning botnet rather than a poisoned registry
package.

### Added
- Command-and-control domain `cdnorigin[.]net` to `KNOWN_C2_DOMAINS` and as a
  `domain` FeedIOC in `BUNDLED_FEED` (src/threat-intel.ts).
- Command-and-control IP `209[.]99[.]186[.]235` to `KNOWN_C2_IPS` and as an `ip`
  FeedIOC.
- Agent-sample SHA1 `31c69b3e12936abca770d430066f379ec1d997ec` to
  `KNOWN_MALICIOUS_HASHES` and as a `hash` FeedIOC. XLab published a SHA1 (not
  MD5/SHA256); it is stored as a content-reference indicator, matched by the
  same substring check as the existing Git-SHA entry.
- `NadMesh botnet (July 2026)` describe block to `src/__tests__/campaigns.test.ts`
  asserting the domain, IP and hash each produce a critical finding.

