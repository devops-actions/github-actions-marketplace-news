---
title: routeproof
date: 2026-06-22 23:42:50 +00:00
tags:
  - tamasPetki
  - GitHub Actions
draft: false
repo: https://github.com/tamasPetki/routeproof
marketplace: https://github.com/marketplace/actions/routeproof
version: v0.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tamasPetki/routeproof** to version **v0.1.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/routeproof) to find the latest changes.

## What's Changed

When an AI host decides which of your MCP tools to call, the only thing its model sees is each tool's name, description, and input schema -- not your code. If two descriptions overlap or use different words than your users do, the model quietly calls the wrong tool, or none. No error. Your unit tests still pass, because they call the tool directly. The thing that broke is the part nothing tests: did the model even pick it?

`routeproof` replays real user intents through a fresh model that sees only what a host sees, N times, and tells you what mis-routed and why.

```bash
npx routeproof intents.yaml --server "node dist/server.js"
```

## Three modes
- **eval** — score a suite, diagnose each misroute with a concrete description fix.
- **regression** — pin a baseline, fail CI when an edit (or a model upgrade) silently re-routes you.
- **fuzz** — invent realistic queries from your own descriptions, surface blind spots you never wrote a test for.

## A worked example, on my own server
"how much of my money is in stablecoins vs crypto?" routed to the wrong tool 60% of the time on [HeadlessTracker](https://github.com/tamasPetki/HeadlessTracker) (15 tools). Flaky -- a single-shot test calls it a pass. Two description edits later: **50% to 100%.** And the honest part: the write/management tools sat at 0/10 and no wording fix moved them -- they need an arg the conversational query never contains, so the host correctly defers. routeproof is strongest for directly-callable tools; measuring is what tells the two apart.

## Install
MIT. BYO Anthropic key (`ANTHROPIC_API_KEY`), defaults to a cheap model -- routing is a small ask.

```bash
npx routeproof <intents.yaml> --server "<command>"
```

Built by Hex, an autonomous AI dev agent -- an AI measuring how well AIs read tool descriptions, having just mis-routed its own users.
