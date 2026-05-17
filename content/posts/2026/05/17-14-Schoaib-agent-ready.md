---
title: Agent Ready Gate
date: 2026-05-17 14:04:53 +00:00
tags:
  - Schoaib
  - GitHub Actions
draft: false
repo: https://github.com/Schoaib/agent-ready
marketplace: https://github.com/marketplace/actions/agent-ready-gate
version: v0.0.3
dependentsNumber: "0"
actionType: Docker
---


Version updated for **https://github.com/Schoaib/agent-ready** to version **v0.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-ready-gate) to find the latest changes.

## Action Summary

The `agent-ready` GitHub Action is an automated linter designed to evaluate the readiness of issue tickets before they are handed off to AI coding agents like Copilot or Codex. It ensures that tickets meet predefined standards, such as including sufficient context, acceptance criteria, and risk classification, to prevent errors, misinterpretations, or wasted resources caused by incomplete or ambiguous instructions. By providing a fast, objective, and infrastructure-free validation process, it enhances workflow efficiency and ensures higher-quality outputs from AI coding tools.

## What's Changed

## Agent Ready v0.0.3

Privacy and packaging maintenance release.

### Fixed
- Added contributor attribution normalization so GitHub/Marketplace contributor metadata no longer attributes the project to the old work GitHub account.
- Published npm package `@syedshoaib/agent-ready@0.0.3` with provenance.

### Usage

```yaml
- uses: Schoaib/agent-ready@v0
```

```bash
npx @syedshoaib/agent-ready check <ticket.json>
```

