---
title: Pentry — Security tests for your app
date: 2026-06-12 06:40:26 +00:00
tags:
  - Swacky1
  - GitHub Actions
draft: false
repo: https://github.com/Swacky1/pentry
marketplace: https://github.com/marketplace/actions/pentry-security-tests-for-your-app
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Swacky1/pentry** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pentry-security-tests-for-your-app) to find the latest changes.

## What's Changed

Stop hand-listing routes. 1.1.0 adds route discovery, parallel checks, and a watch mode.

  ✨ Highlights

  Route discovery — derive routes from your app instead of typing them out:

  import { scan, discoverExpressRoutes, discoverOpenApiRoutes } from '@red_official/pentry';

  await scan({ target: `http://localhost:${port}`, routes: discoverExpressRoutes(app) });
  await scan({ target: 'http://localhost:3000', routes: discoverOpenApiRoutes(spec) });

  - discoverExpressRoutes(app) — top-level + mounted Express routes
  - discoverOpenApiRoutes(spec) — any OpenAPI/Swagger doc (framework-agnostic)
  - discoverRoutes(input) — auto-detects which adapter to use

  Concurrency — checks now run in parallel (default 6, --concurrency/concurrency), with output kept deterministic. Faster scans, gentle on dev servers.

  Watch mode — pentry scan --watch [--interval <ms>] re-scans on a loop.

  Grouped console output — findings are now grouped under severity headers.

  Upgrade

  npm install --save-dev @red_official/pentry@latest

  Fully backward compatible — everything from 1.0.0 still works.

  📦 npm (https://www.npmjs.com/package/@red_official/pentry) 
📖 Docs (https://github.com/Swacky1/pentry/tree/main/docs) 
🗺️  Roadmap (https://github.com/Swacky1/pentry/blob/main/docs/internal/roadmap.md)
