---
title: Trickle Agent Eval
date: 2026-03-16 21:40:37 +00:00
tags:
  - yiheinchai
  - GitHub Actions
draft: false
repo: https://github.com/yiheinchai/trickle
marketplace: https://github.com/marketplace/actions/trickle-agent-eval
version: v1.0.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/yiheinchai/trickle** to version **v1.0.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trickle-agent-eval) to find the latest changes.

## Action Summary

The `trickle` GitHub Action is a tool designed to enhance code observability and reliability for JavaScript and Python applications without requiring code changes. It automatically traces function behavior, identifies real types, generates test suites, creates typed API clients, and detects bugs to prevent issues before deployment. Additionally, it provides advanced debugging, performance insights, cost analysis, and security checks for AI workflows and coding agents, solving the gap between code functionality and correctness.

## Release notes

## Fix: Auto-install Python client

The action now automatically installs `trickle-observe` (Python client) when the command contains `python`, so `trickle run` can properly instrument Python agents.
