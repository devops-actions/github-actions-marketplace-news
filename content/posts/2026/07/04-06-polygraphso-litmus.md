---
title: Polygraph MCP gate
date: 2026-07-04 06:19:33 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.26.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.26.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

The lookup tools now attribute the calling agent — and the release pipeline publishes the MCP-registry listing automatically.

- **Client identity on lookups** (#91): `check_server`, `list_servers`, and `request_grade` send the connected client's handshake identity (name/version plus declared title, website, description, and capability keys such as `sampling`/`roots`) to polygraph.so's aggregate per-agent usage counters. Software metadata only — nothing about the user is read or sent; all fields are optional server-side.
- **Official MCP Registry auto-publish** (#93): pushing a `litmus-v*` tag now also publishes `server.json` to registry.modelcontextprotocol.io via GitHub OIDC, with a fail-fast version-drift check.
- polygraph plugin 0.6.0: spawn pinned to this release (#92).

No grading-semantics changes: `litmus-v12` / `litmus-skill-v2` unchanged.
