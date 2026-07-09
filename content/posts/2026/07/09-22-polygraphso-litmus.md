---
title: Polygraph MCP gate
date: 2026-07-09 22:40:48 +00:00
tags:
  - polygraphso
  - GitHub Actions
draft: false
repo: https://github.com/polygraphso/litmus
marketplace: https://github.com/marketplace/actions/polygraph-mcp-gate
version: litmus-v0.32.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/polygraphso/litmus** to version **litmus-v0.32.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polygraph-mcp-gate) to find the latest changes.

## What's Changed

Ships **litmus-v15**: the C-02 egress baseline now includes public package-registry infrastructure (`pypi.org`, `files.pythonhosted.org`, `registry.npmjs.org`), so a framework's default startup update-check — chiefly FastMCP pinging `pypi.org` for a newer version — is no longer scored as the server's egress overreach. The cloud instance-metadata endpoint stays flagged (a real credential-theft target).

Fixes the dominant C-02 false-positive class for FastMCP-based servers. See #110 (analysis) and #111 (fix).
