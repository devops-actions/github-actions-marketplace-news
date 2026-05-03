---
title: Strata MCP Security Check
date: 2026-05-03 13:53:23 +00:00
tags:
  - PThrower
  - GitHub Actions
draft: false
repo: https://github.com/PThrower/strata-mcp-check
marketplace: https://github.com/marketplace/actions/strata-mcp-security-check
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PThrower/strata-mcp-check** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/strata-mcp-security-check) to find the latest changes.

## Action Summary

The **Strata MCP Security Check** GitHub Action scans a repository for Model Context Protocol (MCP) server configurations, verifies their trustworthiness against Strata's security directory, and generates a risk report. It automates the identification of high-risk servers, posts an idempotent pull request (PR) comment with findings, and optionally fails checks for critical risks. This action helps developers ensure the security and compliance of MCP servers used in their projects by providing transparency and automated risk assessments.

## What's Changed

Automatically verify MCP servers in your repository against 
Strata's trust scores — before they reach production.

strata-mcp-check scans your repo for MCP server references 
in claude_desktop_config.json, .claude/, mcp.json, Cursor 
and Cline config files, and package.json. It verifies each 
server against Strata's directory of 2,179 scored MCP servers, 
then posts an idempotent PR comment with a full trust report.

Each server is checked for:
- Security score (repo trust: stars, license, activity)
- Runtime score (behavioral trust: capability flags, tool analysis)
- Capability flags: shell_exec, dynamic_eval, fs_write, 
  arbitrary_sql, net_egress, secret_read, process_spawn
- Injection risk (prompt injection scanning)
- Quarantine status

The check fails on critical risk servers by default. 
Configure fail_on to high or medium for stricter policies.

Works without an API key (10 req/hr anon tier) or with a 
Strata API key for higher limits.

Powered by Strata — AI Ecosystem Intelligence (usestrata.dev)
