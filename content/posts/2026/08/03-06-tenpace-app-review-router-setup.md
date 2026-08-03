---
title: Set up Review Router
date: 2026-08-03 06:10:00 +00:00
tags:
  - tenpace-app
  - GitHub Actions
draft: false
repo: https://github.com/tenpace-app/review-router-setup
marketplace: https://github.com/marketplace/actions/set-up-review-router
version: v1.1.3
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the setup of a Review Router connection between GitHub and Slack, allowing workflow users to sign in to Tenpace to claim and lock specific repository, Slack destination, routing preset, and reviewer mention policy. The action ensures that no personal credentials or sensitive information are shared, relying on OIDC for authentication.
---


Version updated for **https://github.com/tenpace-app/review-router-setup** to version **v1.1.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/set-up-review-router) to find the latest changes.

## Action Summary

This GitHub Action automates the setup of a Review Router connection between GitHub and Slack, allowing workflow users to sign in to Tenpace to claim and lock specific repository, Slack destination, routing preset, and reviewer mention policy. The action ensures that no personal credentials or sensitive information are shared, relying on OIDC for authentication.

## What's Changed

Publishes the org-owned MCP Registry identity using the canonical `https://api.tenpace.com/v1/review-router/mcp` endpoint. The previous `/mcp` endpoint remains available for compatibility.
