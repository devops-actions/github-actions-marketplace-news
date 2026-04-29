---
title: Hookbase Setup Tunnel
date: 2026-04-29 14:42:32 +00:00
tags:
  - HookbaseApp
  - GitHub Actions
draft: false
repo: https://github.com/HookbaseApp/setup-tunnel
marketplace: https://github.com/marketplace/actions/hookbase-setup-tunnel
version: v1.0.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HookbaseApp/setup-tunnel** to version **v1.0.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hookbase-setup-tunnel) to find the latest changes.

## Action Summary

The **Hookbase Setup Tunnel** GitHub Action facilitates webhook integration testing in CI environments by exposing a local development server running on a specified port to the internet via a Hookbase tunnel. It automates the process of creating and tearing down a secure, temporary public URL that can receive real webhooks from external providers (e.g., Stripe, GitHub, Shopify) during CI workflows. This action simplifies testing by enabling ephemeral CI environments to interact seamlessly with external webhook services.

## What's Changed

Fixes a regression in v1.0.2 where the action's main step would still hang despite the listener-cleanup fix. The detach approach wasn't sufficient — likely libuv references on the spawned child process kept the parent alive.

Switched to the standard pattern for actions that spawn long-running detached processes: explicit `process.exit(0)` after setting outputs. The CLI tunnel continues running in the background; the post-step cleanup still SIGTERMs it correctly.

The floating `@v1` tag has been moved to this release.
