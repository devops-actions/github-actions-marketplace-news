---
title: MCP Server Diff
date: 2026-06-29 15:12:33 +00:00
tags:
  - SamMorrowDrums
  - GitHub Actions
draft: false
repo: https://github.com/SamMorrowDrums/mcp-server-diff
marketplace: https://github.com/marketplace/actions/mcp-server-diff
version: v3.0.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SamMorrowDrums/mcp-server-diff** to version **v3.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-server-diff) to find the latest changes.

## What's Changed

## Highlights

**`mcp-server-diff` 3.0** is a major dependency refresh and a forward-compatibility pass for the upcoming MCP draft spec. The headline feature is **clean cross-spec-version diffs**: when a server upgrades its SDK across MCP spec revisions (`2025-06-18` → `2025-11-25` → `draft`), the probe now normalizes away protocol envelope churn so the diff highlights *intentional* API surface changes only.

## ⚠️ Breaking changes

- **Node.js 20 dropped.** Node 20 reached LTS end-of-life on 2026-04-30, and `undici` v8 requires Node 22+ (uses `webidl.util.markAsUncloneable`). `package.json` now declares `"engines": { "node": ">=22" }`. The composite action's `setup_node` input default is now `22` (was `20`); workflows passing an explicit `node_version` of 20 must bump.
- CI matrix is now `[22, 24]` (current LTS + current Current).

## ✨ New features

### Cross-spec-version diff cleanliness

During the draft-spec rollout it's normal for the base ref and the branch to be on different protocol revisions. The diff should highlight intentional changes, not protocol churn. Now normalized away before snapshotting:

- **CacheableResult hints** (SEP-2461) — top-level `ttlMs` / `cacheScope` stripped from `tools/list`, `prompts/list`, `resources/list`, `resources/templates/list` results.
- **`_meta` protocol plumbing** — exact-key denylist (`io.modelcontextprotocol/protocolVersion`, `clientInfo`, `clientCapabilities`, `subscriptionId`, `logLevel`) stripped from every `_meta` at any depth.
- **W3C trace context inside `_meta`** — `traceparent`, `tracestate`, `baggage` stripped.
- **`initialize` envelope churn** — `protocolVersion` and `capabilities.experimental` excluded from the `initialize` diff body.

**Not** normalized (intentionally): `serverInfo.version`, nested cache hints inside tool/prompt/resource definitions, and the entire MCP Apps surface (`_meta.ui` per SEP-1865) plus vendor extensions (`x.acme/*` etc.) which all round-trip cleanly.

### Protocol-version capture + reporter banner

The negotiated MCP protocol version is now captured per probe (via a `transport.setProtocolVersion(...)` hook, since the SDK doesn't expose a public getter). When base vs branch negotiated different versions, the report annotates the affected configuration with:

> ℹ️ **MCP protocol version changed:** `2025-11-25` → `draft`. Protocol-level plumbing is normalized away; any diff below reflects real public-surface changes.

The PR summary surfaces the same drift at the very top so reviewers immediately know the diff was taken across spec revisions even when the diff body is empty.

### Endpoint rename forward-compat

A new `CANONICAL_SNAPSHOT_NAMES` table in `probe.ts` maps both `initialize` and the upcoming `server/discover` (SEP-2575) to the same `initialize` snapshot file. When SDK v2 ships and servers move across the rename, the change surfaces as a content diff on one file instead of "removed + added".

### One-sided startup failures diff against empty baseline (#58)

When exactly one side fails to start (e.g. a PR introduces a new server configuration behind a CLI flag that doesn't exist on the compare ref), the failed side is now treated as an empty `ProbeResult` and the working side's full surface renders as added/removed. New `config-missing` diff category renders a 🚫 callout in both the markdown report and PR summary. Only genuine both-sides probe failures still hard-error under `fail_on_error`.

### Tool metadata diff coverage (#60)

First direct unit tests for the diff engine confirm that tool-level `description` changes AND nested `inputSchema.properties.<arg>.description` changes both surface under the `tools` endpoint diff. Thanks to @kigland.

## 📦 Major dependency bumps

- `zod` ^3 → ^4 (breaking `z.record` signature handled internally)
- `undici` ^6 → ^8
- `@actions/core` ^1 → ^3, `@actions/exec` ^1 → ^3, `@actions/io` ^1 → ^3
- `typescript` ^5 → ^6, `eslint` ^9 → ^10, `jest` ^29 → ^30
- `@types/node` ^22 → ^24, `@vercel/ncc` ^0.38 → ^0.44, `diff` ^8 → ^9
- Production `npm audit`: **0 vulnerabilities**

**Kept at current major:** `@modelcontextprotocol/sdk` ^1.13.2 (resolves to 1.29.0 — SDK v2 not yet released; adoption is a follow-up). `ts-jest` ^29.4.x (no v30 published, but peer-deps already accept jest 30 + ts 6).

## 🔭 Coming next

- Adopt `@modelcontextprotocol/sdk` v2 once published; switch the SDK call from `initialize` to `server/discover`; drop the `transport.setProtocolVersion` hook if `client.getProtocolVersion()` becomes public.
- Probe the server-card endpoint once the SEP lands (tracked in #65).

## Migration

Most users only need to confirm their CI runs on Node 22+ and update any GitHub workflows that pin `node_version: 20`. See README's "Migration to 3.0" section for details.

---

**Full changelog:** https://github.com/SamMorrowDrums/mcp-server-diff/compare/v2.2.0...v3.0.0

