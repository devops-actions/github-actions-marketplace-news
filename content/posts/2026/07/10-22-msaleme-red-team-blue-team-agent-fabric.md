---
title: Agent Security Harness
date: 2026-07-10 22:50:27 +00:00
tags:
  - msaleme
  - GitHub Actions
draft: false
repo: https://github.com/msaleme/red-team-blue-team-agent-fabric
marketplace: https://github.com/marketplace/actions/agent-security-harness
version: v4.9.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/msaleme/red-team-blue-team-agent-fabric** to version **v4.9.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-security-harness) to find the latest changes.

## What's Changed

Corrects a CVE misattribution. The MCP tool-poisoning suite was incorrectly anchored to CVE-2026-25253, which is an unrelated OpenClaw WebSocket vulnerability. Re-anchored to the Invariant Labs Tool Poisoning research (2025) and ClawHub RFC #99; fabricated statistics removed; module renamed cve_2026_25253_harness to mcp_tool_poisoning_harness (CLI id mcp-tool-poisoning). Test IDs CVE-001..CVE-010 unchanged; CVE-009/010 still map to the real CVE-2026-35625/35629. 540 tests.
