---
title: Bidda Agent Compliance Scanner
date: 2026-05-01 13:54:07 +00:00
tags:
  - Bidda-Ai
  - GitHub Actions
draft: false
repo: https://github.com/Bidda-Ai/agent-compliance-scanner
marketplace: https://github.com/marketplace/actions/bidda-agent-compliance-scanner
version: v0.1.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Bidda-Ai/agent-compliance-scanner** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bidda-agent-compliance-scanner) to find the latest changes.

## Action Summary

The **Bidda Agent Compliance Scanner** is a GitHub Action that automatically scans pull requests for AI-related code patterns and identifies potential regulatory compliance considerations. It references a comprehensive registry of regulatory nodes (e.g., EU AI Act, DORA, GDPR) to provide advisory comments highlighting relevant compliance areas, helping teams proactively address legal and governance risks associated with AI systems. This action streamlines compliance reviews, offering early detection of potential regulatory exposures without blocking the development workflow.

## What's Changed

Free GitHub Action that scans AI agent code on every PR for regulatory compliance considerations against the Bidda Sovereign Intelligence registry of 3,680 cryptographically-signed regulatory nodes.

### What it detects (12 patterns)

- LangChain / CrewAI / AutoGen / Pydantic AI imports
- OpenAI-style and Anthropic-style system prompts
- MCP tool definitions (`@mcp.tool`, `FastMCP`)
- Biometric identification (EU AI Act Annex III high-risk)
- HR / resume scoring (NYC LL 144 + EU AI Act)
- Credit decisioning (GDPR Art 22 + ECOA + EU AI Act)
- Web scraping / browser automation
- Critical/production third-party ICT usage (DORA Art 28)

### Drop-in usage

```yaml
name: Bidda Agent Compliance
on:
  pull_request:
    branches: [main]

permissions:
  pull-requests: write
  contents: read

jobs:
  scan:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: Bidda-Ai/agent-compliance-scanner@v0

**Full Changelog**: https://github.com/Bidda-Ai/agent-compliance-scanner/commits/v0.1.0
