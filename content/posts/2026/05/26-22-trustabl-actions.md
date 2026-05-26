---
title: Trustabl
date: 2026-05-26 22:51:26 +00:00
tags:
  - trustabl
  - GitHub Actions
draft: false
repo: https://github.com/trustabl/actions
marketplace: https://github.com/marketplace/actions/trustabl
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/trustabl/actions** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustabl) to find the latest changes.

## Action Summary

The **Trustabl GitHub Action** automates the process of running the Trustabl static reliability and safety analyzer on repositories that use agent SDKs (e.g., Claude Agent SDK, OpenAI Agents SDK). It scans the codebase for tools, agents, subagents, and MCP servers, generating detailed JSON and SARIF reports with findings, risk scores, and severity levels, and optionally failing workflows based on pre-defined thresholds. This action simplifies the detection and reporting of potential risks in codebases while providing actionable insights through downloadable artifacts and summary outputs.

## What's Changed

First Marketplace release. Reusable composite Action that runs [trustabl](https://github.com/trustabl/trustabl) — the static reliability/safety analyzer for agent-SDK repos (Claude Agent SDK, OpenAI Agents SDK, Google ADK, MCP) — against any repository and gates the pipeline on readiness, risk, or severity thresholds.

> ⚠️ **0.x pre-stable.** Pin to `@v0.1.0` (not a sliding `@v0`). Minor bumps may carry breaking changes until 1.0.0.

## Quick start

```yaml
name: Trustabl
on: [push, pull_request]
permissions:
  contents: read
jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: trustabl/actions@v0.1.0

**Full Changelog**: https://github.com/trustabl/actions/commits/v0.1.0
