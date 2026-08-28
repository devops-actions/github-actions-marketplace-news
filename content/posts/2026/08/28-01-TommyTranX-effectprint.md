---
title: Effectprint behavioral contract audit
date: 2026-08-28 01:43:56 +00:00
tags:
  - TommyTranX
  - GitHub Actions
draft: false
repo: https://github.com/TommyTranX/effectprint
marketplace: https://github.com/marketplace/actions/effectprint-behavioral-contract-audit
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Effectprint is an open-source behavioral contract auditor for imperative WebMCP tools. It checks whether audited invocations of a tool stay within its declared effect boundary, catching attempts to perform unintended actions or mutations on the page. The action helps identify and prevent potential issues related to trust gaps in the WebMCP ecosystem by comparing actual effects with expected behavior.
---


Version updated for **https://github.com/TommyTranX/effectprint** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/effectprint-behavioral-contract-audit) to find the latest changes.

## Action Summary

Effectprint is an open-source behavioral contract auditor for imperative WebMCP tools. It checks whether audited invocations of a tool stay within its declared effect boundary, catching attempts to perform unintended actions or mutations on the page. The action helps identify and prevent potential issues related to trust gaps in the WebMCP ecosystem by comparing actual effects with expected behavior.

## What's Changed

## Effectprint v0.2.0

Deterministic behavioral contract audits for imperative WebMCP tools. Effectprint observes what one audited invocation attempts to change and compares those effects with read-only annotations and explicit contracts.

### Highlights

- Fresh guarded Chromium context for discovery and every audited tool
- HTTP, WebSocket, navigation, cookies, storage, DOM, clipboard, popup, and download evidence
- Safe-mode mutation blocking that preserves attempted effects as evidence
- Terminal, JSON, Markdown, HTML, JUnit, SARIF, and SVG badge reports
- Deterministic poisoned-shop demo with no model key required
- Inputs, outputs, query values, and previews redacted by default

### Rename

This release supersedes ToolTruth v0.1.0. The project was renamed before adoption to avoid an existing AI-tooling namespace collision. The canonical CLI is now `effectprint`, and the default contract file is `.effectprint.json`.

### Try it

```bash
npx --yes github:TommyTranX/effectprint#v0.2.0 demo
```

