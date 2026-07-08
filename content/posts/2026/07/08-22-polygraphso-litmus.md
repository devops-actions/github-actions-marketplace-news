---
title: Polygraph MCP gate
date: 2026-07-08 22:20:54 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.31.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.31.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Adds three composable, backward-compatible launch knobs (#107) so the harness can grade honestly-built MCP servers that do not boot from a bare declared entry:

- **`serverArgs`** (`--server-arg` / `server_args`) — arguments appended to the server command, e.g. a `mcp serve` subcommand. Recorded in the evidence.
- **`serverEnv`** (`--server-env KEY=VALUE` / `server_env`) — startup env the server needs to boot, e.g. an API key. Injected privately like the planted canaries and **redacted** from the recorded command.
- **`entrySubpath`** (`--entry` / `entry`) — a package-relative entry file instead of a declared bin. Resolved inside the staged package root and rejected on traversal. Docker isolation only (npm/github).

Setting `serverArgs` or `entrySubpath` bypasses bin probing and does a single named launch; the C-02 egress target launches the same way, so it grades the same process. All three are optional and default off (semver-minor).

**No methodology-version change** — stays `litmus-v14`. The knobs change *how* a server is launched, not the pass/fail semantics, so existing attestations are unaffected. `server.json` bumped in lockstep.
