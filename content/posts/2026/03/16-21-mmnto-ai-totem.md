---
title: Totem Shield
date: 2026-03-16 21:41:33 +00:00
tags:
  - mmnto-ai
  - GitHub Actions
draft: false
repo: https://github.com/mmnto-ai/totem
marketplace: https://github.com/marketplace/actions/totem-shield
version: mmnto/mcp0.40.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mmnto-ai/totem** to version **@mmnto/mcp@0.40.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/totem-shield) to find the latest changes.

## Action Summary

Totem is a CLI tool that automates the compilation of human-readable rules (`.cursorrules`) into deterministic guardrails for code quality and compliance, ensuring AI agents like Copilot or Claude Code adhere to predefined standards without relying on LLMs. It prevents bad code from being committed, provides continuous learning via detected violations, and acts as a shared memory bus for multiple AI agents, enhancing collaboration and productivity. Designed for solo developers, teams, and high-compliance industries, Totem offers local execution, security features like DLP masking, and integration with enterprise-grade tools.

## Release notes

### Patch Changes

-   99f8995: feat: .mdc / .cursorrules ingestion adapter (#555)

    New `totem compile --from-cursor` flag. Scans .cursor/rules/\*.mdc, .cursorrules, and .windsurfrules files. Parses frontmatter and plain text rules. Compiles them into deterministic Totem rules via the existing LLM pipeline.

    docs: README Holy Grail positioning (ADR-049)

    "A zero-config CLI that compiles your .cursorrules into deterministic CI guardrails. Stop repeating yourself to your AI." MCP as step 2, Solo Dev Superpower section, command table with speed metrics.

-   Updated dependencies [99f8995]
    -   @mmnto/totem@0.40.0

