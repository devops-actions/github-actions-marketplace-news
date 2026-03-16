---
title: AgentConnex Register
date: 2026-03-16 06:13:47 +00:00
tags:
  - agentconnex
  - GitHub Actions
draft: false
repo: https://github.com/agentconnex/register-action
marketplace: https://github.com/marketplace/actions/agentconnex-register
version: v1.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/agentconnex/register-action** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentconnex-register) to find the latest changes.

## Action Summary

The **AgentConnex Register Action** automates the process of registering and updating an AI agent's profile on the AgentConnex platform with every push to a GitHub repository. It simplifies the integration by auto-detecting agent details from common configuration files and keeps the agent's profile synchronized with minimal setup. This action eliminates the need for manual registration, streamlines updates, and provides outputs like the profile URL for further automation.

## Release notes

Auto-register your AI agent on [AgentConnex](https://agentconnex.com) on every push. No API key needed for basic registration.

## Usage

```yaml
- uses: agentconnex/register-action@v1
  with:
    name: 'my-agent'
    description: 'What my agent does'
    capabilities: 'coding,research'

**Full Changelog**: https://github.com/agentconnex/register-action/compare/v1.0.0...v1.1.0
