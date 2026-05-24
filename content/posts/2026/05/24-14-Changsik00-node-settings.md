---
title: env-kit/node-settings
date: 2026-05-24 14:18:15 +00:00
tags:
  - Changsik00
  - GitHub Actions
draft: false
repo: https://github.com/Changsik00/node-settings
marketplace: https://github.com/marketplace/actions/env-kit-node-settings
version: v1.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Changsik00/node-settings** to version **v1.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/env-kit-node-settings) to find the latest changes.

## Action Summary

This GitHub Action provides a schema-first configuration management solution for Node.js applications, using a `zod` schema to define and validate environment variables, generate `.env.example` files, Kubernetes manifests, Markdown documentation, and JSON schemas automatically. It simplifies managing and synchronizing environment-specific configurations, ensuring consistency across multiple environments and reducing manual effort. Key features include type-safe runtime configuration, secret handling, and a CLI for deployment validation in CI pipelines.

## What's Changed

### Fixed

- **`OVERRIDE_JSON_NOT_OBJECT`** — When `overrideEnvKey` contained valid JSON that was not a plain object (array, string, number, or null), the parsed value was passed directly to `deepMerge`, silently corrupting the config. `parseJsonOverride` now checks the shape before merging and throws `NodeSettingsError` with code `OVERRIDE_JSON_NOT_OBJECT` for any non-object value.

