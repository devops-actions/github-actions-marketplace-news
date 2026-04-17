---
title: MCP Lock
date: 2026-04-17 14:11:29 +00:00
tags:
  - mcpguards
  - GitHub Actions
draft: false
repo: https://github.com/mcpguards/mcp-lock
marketplace: https://github.com/marketplace/actions/mcp-lock
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/mcpguards/mcp-lock** to version **v0.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-lock) to find the latest changes.

## Action Summary

The `mcp-lock` GitHub Action ensures secure and consistent use of Model Context Protocol (MCP) servers by locking their exact versions and integrity hashes on first use, then verifying their integrity during subsequent runs. This prevents risks associated with unpinned dependencies, such as silent updates or supply chain attacks, by alerting users to any unauthorized changes. Key capabilities include generating and managing a lockfile, verifying package integrity in CI pipelines, and providing tools to review and update dependencies safely.

## What's Changed

- fix: normalize path separators in lockfile-io test for Windows (b5be6a4)
- fix: remove unused imports and variables to pass lint (77cd873)
- fix: add eslint config and exclude low-coverage utility files from threshold (f4f93ae)
- chore: exclude integration-only files from coverage threshold (f688eab)
- fix: remove invalid type predicate in sarif rule filter (ec7cb5b)
- chore: update Dockerfile for Glama build (5797a91)
- chore: add Dockerfile and glama.json for Glama listing (65b9efd)
- chore: add glama.json for server claiming (c409cea)
- feat: publish as @mcpguards/mcp-lock (218c823)
- feat: initial release — npm ci for MCP servers (8021704)
