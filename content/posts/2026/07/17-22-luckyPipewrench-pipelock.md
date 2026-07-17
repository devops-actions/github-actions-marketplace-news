---
title: Pipelock Agent Security Scan
date: 2026-07-17 22:40:03 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v3.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Pipelock is an open-source AI-driven firewall designed to monitor and secure AI agents by inspecting mediated network traffic. It identifies potential threats such as secret exfiltration, prompt injection, and SSRF, emitting mediator-signed action receipts that third parties can verify outside the agent runtime. This helps ensure the integrity of data transmitted between AI agents and networks.
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v3.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source AI-driven firewall designed to monitor and secure AI agents by inspecting mediated network traffic. It identifies potential threats such as secret exfiltration, prompt injection, and SSRF, emitting mediator-signed action receipts that third parties can verify outside the agent runtime. This helps ensure the integrity of data transmitted between AI agents and networks.

## What's Changed

## Changelog
### 🐛 Bug Fixes
* 45002497bcdd89722fe06bd05f22673be6edd537 fix(contain): narrow credential guard watches (#1008)
* a48d545cc398cca28131c64b6c9544519c0bf074 fix(coveragecert): fail closed when no trusted signer is supplied (#1014)
### 📦 Dependencies
* 3747656b2ebc8c08ec53774150da838d48b56da7 chore(deps): update dependency setuptools to v83 [security] (#1007)
### Other Changes
* 7a6f866752605215d2ee820eb10132d464626d49 Add MCP tool-policy example with verify script (#1006)
* e0536c4187cdd2611af72c1d5c270a6abc8b5ce1 Add fetch proxy SSRF example with verify script (#1005)
* 913a051b75094e87c9522ea1d479b07862fc80c4 Add kill switch example with verify script (#1004)
* c0715e6b49232e633cd519a382994994285b7e50 Fail closed when replay verification is unpinned (#1016)
* 8c5ab23ffa59de4c25920fe86c81d4f3bcf6bb58 Fix A2A forward request-body scanning (#1013)
* 990725b86e7b1c3301b0317ba3df65c1c9274423 Harden security trust boundaries and parser semantics (#1010)
* 371893f0084ed693c1f69adf6da81c269e84aeff Make executable config examples fail closed in CI (#1011)
* 51b21d45393afe02cabca54bda8a1324ffb7418e Make startup validation honest and accelerate releases (#1012)
* 39e93b452e9589a9ba812f09e42c2382c44fac86 chore(ci): fail CI when a shipped config example cannot start (#1009)
* ecbe637d64c2d07367bdb38ad5b83632ef2a0454 chore(release): reconcile v3.2.0 changelog, chart version, and broken instructions (#1017)
* 3850edb71b054f2ee505c7dc4747ec2101bb8f3d chore(release): set v3.2.0 changelog date to the tag date (2026-07-17) (#1019)
* ca1eb9a99ea2a388147f89c2376f33cb435bcdea chore(release): stamp v3.2.0 date and add release-readiness gate (#1018)

---
📚 Docs: https://pipelab.org  •  💬 Community: https://discord.gg/badNfhGKTc

Pipelock is an open-source agent firewall. Come poke holes in it.


