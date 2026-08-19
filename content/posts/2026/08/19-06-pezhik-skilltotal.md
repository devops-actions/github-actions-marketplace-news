---
title: SkillTotal AI Component Security Scan
date: 2026-08-19 06:29:09 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.41.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  SkillTotal is an open-source CLI engine that statically analyzes AI-related components, such as agent skills/plugins, MCP servers, and AI-generated projects, to identify potential security risks and dangers. It allows users to scan paths, git URLs, npm/pypi packages, or project archives without leaving their machines and provides detailed evidence-based reports.
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.41.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## Action Summary

SkillTotal is an open-source CLI engine that statically analyzes AI-related components, such as agent skills/plugins, MCP servers, and AI-generated projects, to identify potential security risks and dangers. It allows users to scan paths, git URLs, npm/pypi packages, or project archives without leaving their machines and provides detailed evidence-based reports.

## What's Changed


### Fixed
- **Values published on purpose were reported as leaked credentials (ruleset 45).** Sampling the
  MCP-registry survey, all four of the first components carrying an "embedded secret" were of this
  kind. PostHog project keys (`phc_`, documented as safe to expose in client code) and base58
  on-chain addresses (a Solana program id or mint — public data, and length-bounded so a keypair
  still counts) now join the Algolia DocSearch and client-telemetry keys the scanner already
  recognised. `browser-use` went `high` → `low`, `zeta-chain/cli` `high` → `low`.
- **A comment mentioning `eval` was read as dynamic execution.** `ST-DYN-NODE` declared no
  code-context policy, so `// guarded string eval (no DOM types)` matched — the same demotion the
  exposure and shell rules already use now applies.


