---
title: Publish HTML presentation to Slidesfly
date: 2026-07-31 14:45:57 +00:00
tags:
  - rare
  - GitHub Actions
draft: false
repo: https://github.com/rare/slidesfly-integrations
marketplace: https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly
version: v0.3.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of publishing HTML presentations to Slidesfly, a service that enables existing HTML decks to be hosted online. It provides a marketplace-ready root action with features for creating and updating slides. The action supports various HTML frameworks and can handle multi-file builds, ensuring public integration assets are available for developers to inspect, test, and reuse without accessing the private Slidesfly SaaS application or credentials.
---


Version updated for **https://github.com/rare/slidesfly-integrations** to version **v0.3.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/publish-html-presentation-to-slidesfly) to find the latest changes.

## Action Summary

This GitHub Action automates the process of publishing HTML presentations to Slidesfly, a service that enables existing HTML decks to be hosted online. It provides a marketplace-ready root action with features for creating and updating slides. The action supports various HTML frameworks and can handle multi-file builds, ensuring public integration assets are available for developers to inspect, test, and reuse without accessing the private Slidesfly SaaS application or credentials.

## What's Changed

## Gemini CLI extension

- Adds a root-level `gemini-extension.json` for automatic Gemini CLI Gallery discovery.
- Reuses the canonical Slidesfly Agent Skill and the hosted MCP endpoint at `https://slidesfly.com/api/mcp`.
- Declares `SLIDESFLY_API_KEY` as a sensitive Gemini extension setting; no credential is bundled.
- Validated with Gemini CLI 0.42.0 and 0.53.0, plus repository CI.

## Compatibility

This is a backwards-compatible repository-wide integration release. The existing GitHub Action contract and `actions/publish` path are unchanged.
