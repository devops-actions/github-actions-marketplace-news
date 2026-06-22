---
title: MCP Deprecate
date: 2026-06-22 15:57:42 +00:00
tags:
  - shurugiken
  - GitHub Actions
draft: false
repo: https://github.com/shurugiken/mcp-deprecate
marketplace: https://github.com/marketplace/actions/mcp-deprecate
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/shurugiken/mcp-deprecate** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-deprecate) to find the latest changes.

## What's Changed

First public release of **mcp-deprecate** — a linter for the [2026-07-28 MCP specification release candidate](https://blog.modelcontextprotocol.io/posts/2026-07-28-release-candidate/), the largest revision of the Model Context Protocol since launch (it makes the protocol stateless and removes the `initialize` handshake, `Mcp-Session-Id`, and several methods).

It scans an MCP server's source for protocol features the RC **removes or deprecates** and emits a dated migration checklist. One rule engine, three surfaces:

- **CLI** — `npx mcp-deprecate ./src` (`--format text|md|json`, `--fail-on error|warning|none`, `--list-rules`)
- **GitHub Action** — `uses: shurugiken/mcp-deprecate@v0.1.0` to fail CI when removed/deprecated features are used
- **MCP server** — `mcp-deprecate-server` over stdio, to run the scan from inside an MCP client

### Two severities
- **error** — feature *removed* in the RC (breaking against a final-spec server): `Mcp-Session-Id`, the `initialize` handshake, `logging/setLevel`, `resources/subscribe`, error code `-32002`, and others.
- **warning** — feature *deprecated* but still working (removable no sooner than 12 months out): Roots, Sampling, Logging, the HTTP+SSE transport.

It also prints a **manual-review checklist** for changes with no reliable static signature. Every rule cites its originating SEP, and the ruleset is verified against the modelcontextprotocol.io changelog, the RC blog post, and the referenced SEPs.

### Install
- **npm:** `npx mcp-deprecate@0.1.0` (or `npm i -g mcp-deprecate`)
- **Action:** pin `shurugiken/mcp-deprecate@v0.1.0` — see the [README](https://github.com/shurugiken/mcp-deprecate#readme) for inputs and a CI example

Full rule list: `mcp-deprecate --list-rules`. MIT licensed.
