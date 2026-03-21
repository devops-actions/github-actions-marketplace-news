---
title: Scopeform Deploy
date: 2026-03-21 05:50:54 +00:00
tags:
  - emartai
  - GitHub Actions
draft: false
repo: https://github.com/emartai/scopeform
marketplace: https://github.com/marketplace/actions/scopeform-deploy
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/emartai/scopeform** to version **v0.1.1**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/scopeform-deploy) to find the latest changes.

## Action Summary

Scopeform is a security and access management tool designed for AI agents, enabling users to replace long-lived, hardcoded API keys with scoped, short-lived tokens for enhanced control and security. It automates the process of registering agents, issuing service-specific tokens, monitoring API usage, and revoking access on a per-agent basis through a centralized dashboard. This solution addresses challenges like shared credentials, lack of audit trails, and difficulty in revoking compromised keys, providing fine-grained access control and streamlined security for API interactions.

## Release notes

## Scopeform — Identity and access management for AI agents

Register your AI agents, issue scoped runtime tokens, and revoke access instantly — all from a CLI or dashboard.

### What's included

- `scopeform init` — generate `scopeform.yml` interactively
- `scopeform deploy` — register agent and write `SCOPEFORM_TOKEN` to `.env`
- `scopeform login / revoke / logs` — full lifecycle management
- Web dashboard — agent list, status badges, one-click revoke, call logs
- Scoped proxy for OpenAI, Anthropic, and GitHub
- Free tier — up to 5 agents forever

### Install

```bash
pip install scopeform
# or
npm install -g scopeform
GitHub Actions usage

- uses: emartai/scopeform@v1
  with:
    token: ${{ secrets.SCOPEFORM_TOKEN }}
