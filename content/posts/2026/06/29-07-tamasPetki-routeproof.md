---
title: routeproof
date: 2026-06-29 07:04:53 +00:00
tags:
  - tamasPetki
  - GitHub Actions
draft: false
repo: https://github.com/tamasPetki/routeproof
marketplace: https://github.com/marketplace/actions/routeproof
version: v0.3.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/tamasPetki/routeproof** to version **v0.3.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/routeproof) to find the latest changes.

## What's Changed

**Try it with no API key.** Before you wire up a key or spend a credit, confirm your setup and see exactly what the routing model will route against:

```bash
npx routeproof intents.yaml --server "node dist/server.js" --dry-run
```

- Parses your suite, handshakes your server, and prints the **routing menu** — every tool's name, schema args, and description (with `read`/`write`/`destructive` tier annotations when `tiers:` is set), exactly as the model receives them.
- Lists the intents you're asserting, and warns if any intent expects a tool the server does not advertise.
- **No model call, no `ANTHROPIC_API_KEY`.** A satisfying first run that proves the plumbing — and an offline smoke test you can drop in CI.

`--validate` is an alias; `--json` emits the structured view. Surfaced by an independent dogfood of the onboarding path. 122 tests pass.
