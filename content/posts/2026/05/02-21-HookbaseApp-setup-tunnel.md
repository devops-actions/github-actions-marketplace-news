---
title: Hookbase Setup Tunnel
date: 2026-05-02 21:32:13 +00:00
tags:
  - HookbaseApp
  - GitHub Actions
draft: false
repo: https://github.com/HookbaseApp/setup-tunnel
marketplace: https://github.com/marketplace/actions/hookbase-setup-tunnel
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/HookbaseApp/setup-tunnel** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/hookbase-setup-tunnel) to find the latest changes.

## Action Summary

The **Hookbase Setup Tunnel** GitHub Action creates a temporary tunnel to expose a local development server running in a CI environment to the internet, enabling webhook integration testing with providers like Stripe, GitHub, and Shopify. It automates the setup and teardown of a public, ephemeral URL for receiving real-time webhooks in CI pipelines, simplifying the process of testing webhooks against CI environments. Key capabilities include automatic tunnel management, custom subdomain support, and the ability to easily access the tunnel URL as an output variable for use in subsequent workflow steps.

## What's Changed

Fixes a bug where the tunnel WebSocket would be torn down by Cloudflare under concurrent load (multiple in-flight requests in the same job).

Root cause: the action spawned the CLI with stdio piped back to itself, then process.exit(0)'d. The CLI's stdio was left pointing at dangling kernel pipes; subsequent writes blocked the CLI's event loop, which stalled the WebSocket and caused Cloudflare to close the connection with code 1006.

Fix: redirect CLI stdio to a temp log file. The action polls the log file for the tunnel-ready JSON event. The CLI can now write freely after the action exits without blocking.

The floating @v1 tag has been moved to this release.
