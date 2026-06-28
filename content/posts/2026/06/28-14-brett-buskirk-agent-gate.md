---
title: AgentGate - AI PR Guardrails
date: 2026-06-28 14:59:47 +00:00
tags:
  - brett-buskirk
  - GitHub Actions
draft: false
repo: https://github.com/brett-buskirk/agent-gate
marketplace: https://github.com/marketplace/actions/agentgate-ai-pr-guardrails
version: v0.2.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/brett-buskirk/agent-gate** to version **v0.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentgate-ai-pr-guardrails) to find the latest changes.

## What's Changed

AgentGate v0.2.1 — guardrail checks for AI-agent-generated pull requests.

## What changed

- Marketplace listing name set to **"AgentGate - AI PR Guardrails"** (the bare "AgentGate" listing name was already taken). Display-name only — `uses: brett-buskirk/agent-gate@v0` is unchanged.
- Fixed the GitHub Marketplace Developer Agreement link in the release runbook.

No functional changes to the rules, CLI, or Action since v0.2.0.

## Install

**GitHub Action**

```yaml
- uses: actions/checkout@v4
- uses: brett-buskirk/agent-gate@v0
  with:
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

Pin to `@v0.2.1` for reproducible builds, or track `@v0` for the latest v0.x.

**CLI**

```bash
npx @brett.buskirk/agent-gate check
```

**Full changelog:** https://github.com/brett-buskirk/agent-gate/compare/v0.2.0...v0.2.1

