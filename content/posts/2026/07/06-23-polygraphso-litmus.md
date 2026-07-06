---
title: Polygraph MCP gate
date: 2026-07-06 23:02:58 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.30.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.30.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Ships **litmus-v14**: a C-04 probe 3.2 false-positive fix (#104). A server that safely rejects a jailbreak-as-argument and echoes it back inside its own error frame (`Invalid label "…"`, `Error: … not found: …`), including char-stripped or truncated echoes, is no longer mis-flagged as amplification. Some safe-rejecting servers move D→A. `server.json` bumped in lockstep.
