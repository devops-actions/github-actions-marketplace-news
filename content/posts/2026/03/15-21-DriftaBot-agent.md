---
title: DriftaBot Agent
date: 2026-03-15 21:24:02 +00:00
tags:
  - DriftaBot
  - GitHub Actions
draft: false
repo: https://github.com/DriftaBot/agent
marketplace: https://github.com/marketplace/actions/driftabot-agent
version: v2.1.6
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/DriftaBot/agent** to version **v2.1.6**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/driftabot-agent) to find the latest changes.

## Action Summary

The DriftaBot Agent GitHub Action automates the detection of breaking API changes in pull requests by comparing OpenAPI schemas between branches. If breaking changes are identified, it scans consumer repositories within the organization for impacted files and automatically creates or updates GitHub Issues in those repositories to alert maintainers. This action streamlines the process of identifying and addressing downstream impacts of API changes without requiring configuration on consumer repos.

## Release notes

fix: support issue creation on external repos without label write access — falls back to title-based deduplication when the token lacks label permissions
