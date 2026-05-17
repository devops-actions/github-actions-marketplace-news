---
title: env-kit/node-settings
date: 2026-05-17 14:06:05 +00:00
tags:
  - Changsik00
  - GitHub Actions
draft: false
repo: https://github.com/Changsik00/node-settings
marketplace: https://github.com/marketplace/actions/env-kit-node-settings
version: v1.0.2
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Changsik00/node-settings** to version **v1.0.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/env-kit-node-settings) to find the latest changes.

## Action Summary

This GitHub Action, **@env-kit/node-settings**, provides schema-first configuration management for Node.js applications. It automates the generation of runtime-typed configurations, `.env.example` files, Kubernetes manifests, Markdown documentation, and JSON schemas from a single Zod schema. By centralizing environment variable definitions and cascading settings across environments, it simplifies configuration management, reduces manual errors, and ensures consistency across deployment artifacts.

## What's Changed

### Documentation

- **Cascading is now the headline.** README tagline rewritten to
  "Schema-first settings for Node apps — cascading config across env
  files, per-env config files, and packages." The TL;DR diagram is
  redrawn as **two parallel file streams** (env-var files +
  per-env config files) flowing into one frozen `settings`, and the
  surrounding bullets brand three explicit cascades (env-var files
  via `loadDotenvCascade()` / per-env config files via
  `defaults` + `perEnv` / monorepo `extends: [base]`) plus the
  `APP_CONFIG_JSON` runtime override. `sample/README.md` diagram
  updated to match. `package.json` `description` aligned to the
  same framing so the npm preview and the README header agree.
- **Naming convention in docs: `cfg` → `settings`, `settings` →
  `loadSettings`.** Examples in README, sample, AGENTS, ERRORS,
  DEPLOYMENT, migration guides, and `src/*` JSDoc consistently use
  `loadSettings` for the function returned by `defineSettings(...)`
  and `settings` for the frozen, layered result of calling it.
  Public API surface, runtime behaviour, and exported names are
  unchanged — this is convention only.

