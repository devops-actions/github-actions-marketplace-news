---
title: sverklo audit
date: 2026-05-29 22:46:32 +00:00
tags:
  - sverklo
  - GitHub Actions
draft: false
repo: https://github.com/sverklo/sverklo
marketplace: https://github.com/marketplace/actions/sverklo-audit
version: v0.28.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/sverklo/sverklo** to version **v0.28.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sverklo-audit) to find the latest changes.

## Action Summary

Sverklo is an open-source, local-first tool that enhances coding agents by providing them with "repo memory," which includes contextual insights like symbol relationships, call hierarchies, code changes, and project decisions. It eliminates the need for external API keys or code uploads, enabling agents like Claude Code, Cursor, and Codex CLI to better understand and interact with local codebases. This action automates the setup of a local MCP server, streamlines agent configuration, and provides detailed repository context to improve code navigation, dependency analysis, and informed decision-making.

## What's Changed

This patch makes the first-run proof shareable.

New:
- `sverklo prove --markdown` prints a GitHub/Discord/Reddit-ready Markdown proof receipt.
- `sverklo prove --receipt` is an alias for the same Markdown artifact.
- `sverklo prove --format markdown` is supported for scripted use.
- Markdown/receipt mode suppresses the indexing summary so the output starts cleanly with the receipt heading.

Example:

```bash
npm install -g sverklo@latest
cd your-project && sverklo init
sverklo prove --markdown
```

The normal `sverklo prove` terminal report is unchanged.

Validation:
- `npm run build`
- `npm test`
- `npm pack --dry-run`
- `node dist/bin/sverklo.js prove --receipt .`
- npm publish with provenance succeeded
