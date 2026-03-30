---
title: Pipelock Agent Security Scan
date: 2026-03-30 22:19:47 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v2.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v2.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source agent firewall and runtime designed to secure AI agents by monitoring network activity, containing processes, and enforcing tool usage policies. It prevents unauthorized access or data leakage, such as API key exposure, by scanning HTTP traffic and blocking malicious requests. Key capabilities include forward and fetch proxy modes for seamless integration with AI agents, without requiring code changes.

## What's Changed

## Changelog
* b346ac09409aba66011276cb7a42281c74218a9e Add support for trusted_domains to forward proxy mode (#297)
* 57abaa4cf9e5aabe40d4413264b930f56f548acc Improve scanner coverage for encoded payloads and cross-transport DLP (#315)
* 2dcb48ffcc2e2d32f9b6a1acc862772b48159803 chore(deps): bump requests (#300)
* b261e8e77bbc74ac3bf71947cb808e127a183a51 ci: bump the ci-actions group across 1 directory with 6 updates (#331)
* 872bdf7ea1a993cd01feb3b26ed400dabc65dc47 ci: fix deprecated goreleaser format field (formats plural) (#332)
* 0b1257a9beeab61a3bb23df9906411678c52a4e1 deps: bump the go-deps group with 3 updates (#326)
* 884111843604d11c17415e073231edf3d8ebdcf6 feat: A2A protocol scanning foundation — types, field walker, detection (#316)
* 40bcc17f260648fe3eed894f3b5a16c1144ccb89 feat: MCP binary integrity and denial-of-wallet detection (#310)
* a561070301f386efd76735bfbb18d02620366874 feat: MCP tool provenance and profile-then-lock baseline (#311)
* 2dfaf589fbe6ae621fc0884cc6446a732e819312 feat: add SecureIQLab Docker Compose test harness (#318)
* 20ea34918b121565f592bf52df9b4d16077139a2 feat: add exempt_domains to response scanning (#305)
* f8a41e5643ac8270ac5ee09397a825ee9b5c2cb4 feat: add pipelock assess command for signed security assessments (#296)
* 789079b988fec11d23196040dc0e88d122ea70a1 feat: add session admin API for adaptive enforcement recovery (#308)
* 71a2d51b58b75220216a1a539c5a644ca9ec7f6d feat: canary token detection and simulate expansion (#313)
* 9794e35355034492d653209e677799540779b630 feat: compliance evidence mappings and trust attestation (#314)
* b418d3c502e08562a3a950d87a1ad2ca20cdac12 feat: flight recorder and agent bill of materials (#309)
* fb2e4ce12f94b358b423055fd367b8c7317d7a4d feat: implement MCP redirect handlers (fetch-proxy + quarantine-write) (#307)
* 4e3d35558f0b385fbc902cb2a9ef73ab0c56b0e3 feat: policy capture and replay engine (#319)
* fe1384a30fc6a168db1b6c5b6d07e443c5140f34 feat: session manifest and signed decision records (#312)
* defc7152eea65109bc8587c9d8f5686436c8ae5a fix(assess): HTML report with visual hierarchy and remediation (#306)
* e26870247a761b6b7a5c52a20d546f3771e0a151 fix: add best_effort mode for file sentry in MCP proxy (#292)
* 68cac043c7aeb850b3472c75c08b9eba731303bf fix: autonomous block_all recovery for adaptive enforcement (#304)
* 04dcfec7467bf73b8575980a7a91720c59f0486d fix: classify scanner results to prevent adaptive enforcement death spiral (#295)
* 41ef55894ef688902ef5767f7bb5076ccfa74f4a fix: scan redirect handler output through DLP pipeline (#323)
* 63c6a2fa1b7b6a06f7b108bf9ba2dd3862ddc7a4 fix: structured exit codes and subprocess error handling (#320)
* 04589d8b77a0f68c399cabb196293b2be1c4668d fix: v2.1.0 RC test findings and feature wiring (#328)
* 2f9784ca96f0f213cad25914bb30514f3e4f788d fix: v2.1.0 polish — audit logging, transport tests, config validation (#321)
* da95706c409451828f7c714449cb218a11379b64 refactor: extract shared escalation recording helper (#290)
* cb2e784c81ffdc0fbf9416b70acc96902c4a9487 refactor: introduce MCPProxyOpts to replace long MCP proxy parameter lists (#294)
* 76ee28127ae5afe9ae24fbcb7f209eed01acaf25 refactor: split 91-file CLI god package into 10 subpackages (#303)
* baa13bfb4826c8d1e9af93e7ca686a23e6787bd1 refactor: split config.Validate, DRY audit logger, coverage boost (#322)
* 96609f6fa05e02e9df4134a220ca017517c71fdb security: redact secrets and server names from assess evidence (#301)


