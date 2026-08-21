---
title: Pipelock Agent Security Scan
date: 2026-08-21 06:49:54 +00:00
tags:
  - luckyPipewrench
  - GitHub Actions
draft: false
repo: https://github.com/luckyPipewrench/pipelock
marketplace: https://github.com/marketplace/actions/pipelock-agent-security-scan
version: v3.4.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Pipelock is an open-source AI agent firewall that helps protect against secret exfiltration and other malicious activities by inspecting and controlling mediated HTTP, WebSocket, MCP, A2A, and CONNECT traffic. It emits action receipts to verify Mediator decisions outside the agent runtime. The public agent-egress-bench corpus tests its detections.
---


Version updated for **https://github.com/luckyPipewrench/pipelock** to version **v3.4.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pipelock-agent-security-scan) to find the latest changes.

## Action Summary

Pipelock is an open-source AI agent firewall that helps protect against secret exfiltration and other malicious activities by inspecting and controlling mediated HTTP, WebSocket, MCP, A2A, and CONNECT traffic. It emits action receipts to verify Mediator decisions outside the agent runtime. The public agent-egress-bench corpus tests its detections.

## What's Changed

## Changelog
### 🐛 Bug Fixes
* 092a1497f55c1cb94735ef687465a2940386896a fix(killswitch): scope endpoint exemptions to pipelock's own requests (#1295)
* 888e66906b39516db0f401770150bf05457c8a0a fix(scanner): scan the path and query together for split credentials (#1296)
### Other Changes
* 4c748ab986d611138ce202ab800b16eca6fb589f Give the release preflight gate the keyring secret it checks (#1300)
* 2f1ec208bdc72d05223413b21b5177b80c88bfb3 chore(release): correct the 3.4.0 date and the Python verifier availability (#1298)
* d66603ad59a90dd774eafa02b6f7785b4240245c test(mcp): stop the subreaper-direction deadline deciding the result (#1293)

---
📚 Docs: https://pipelab.org  •  💬 Community: https://discord.gg/badNfhGKTc

Pipelock is an open-source agent firewall. Come poke holes in it.


