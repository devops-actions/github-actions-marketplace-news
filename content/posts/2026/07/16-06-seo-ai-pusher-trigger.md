---
title: SEO.ai trigger pusher event
date: 2026-07-16 06:28:32 +00:00
tags:
  - seo-ai
  - GitHub Actions
draft: false
repo: https://github.com/seo-ai/pusher-trigger
marketplace: https://github.com/marketplace/actions/seo-ai-trigger-pusher-event
version: v1.0.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action triggers an event on a Pusher channel, providing a simple and reusable way to send custom events with JSON payloads. It automates the process of integrating Pusher notifications into CI/CD pipelines or other automation workflows without requiring manual setup or configuration.
---


Version updated for **https://github.com/seo-ai/pusher-trigger** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/seo-ai-trigger-pusher-event) to find the latest changes.

## Action Summary

This GitHub Action triggers an event on a Pusher channel, providing a simple and reusable way to send custom events with JSON payloads. It automates the process of integrating Pusher notifications into CI/CD pipelines or other automation workflows without requiring manual setup or configuration.

## What's Changed

Run the action on the Node 24 runtime instead of the deprecated Node 20 (GitHub removes Node 20 from Actions runners on 2026-09-16). The bundled dist/index.js is unchanged and already verified running on Node 24 in a production SEO.ai deploy. (#1)
