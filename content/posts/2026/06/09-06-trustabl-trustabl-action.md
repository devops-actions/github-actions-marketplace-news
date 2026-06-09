---
title: Trustabl
date: 2026-06-09 06:51:03 +00:00
tags:
  - trustabl
  - GitHub Actions
draft: false
repo: https://github.com/trustabl/trustabl-action
marketplace: https://github.com/marketplace/actions/trustabl
version: v0.3.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/trustabl/trustabl-action** to version **v0.3.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/trustabl) to find the latest changes.

## What's Changed

A maintenance release. `@v0` now points here.

## Changed
- **Node.js 24 runtime** (`runs.using: node24`), ahead of GitHub's Node 20 deprecation — runners default to Node 24 on **2026-06-16** and remove Node 20 on **2026-09-16**. **No behavior change** — the bundled `dist/` is identical to v0.3.0; build CI and `engines` bump to Node 24 to match. (GitHub-hosted runners already support Node 24; self-hosted runners need Node 24 available.)

## Docs
- Corrected the coverage claim to the analyzer's real surface: Claude / OpenAI / Google ADK / LangChain / CrewAI / Pydantic AI / Vercel AI / AutoGen SDKs, MCP servers, and **Claude subagents & skills**.
- Expanded the `detectors` token list to the full set; added a how-it-works note for the opt-in `vuln-scan`; bumped install pins to `v0.3.1`.

Full notes: [CHANGELOG.md](https://github.com/trustabl/trustabl-action/blob/v0.3.1/CHANGELOG.md)

