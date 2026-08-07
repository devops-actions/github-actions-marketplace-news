---
title: MCP Tenant Isolation Scan
date: 2026-08-07 07:19:21 +00:00
tags:
  - subodhkc
  - GitHub Actions
draft: false
repo: https://github.com/subodhkc/mcp-tenant-isolation
marketplace: https://github.com/marketplace/actions/mcp-tenant-isolation-scan
version: v1.6.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action, `mcp-tenant-isolation`, is a static analysis tool designed to detect and prevent cross-tenant data leakage in multi-tenant SaaS applications and MCP server codebases. It uses 57 deterministic rules to check for common vulnerabilities related to tenant isolation, database query filtering, IDOR prevention, cache key scoping, RLS, schema gaps, and MCP-specific risks such as tool visibility, cache prefix, session binding, credential vault, and more. The tool supports various frameworks including Prisma, Drizzle, raw SQL, Next.js, Express, and Fastify, making it versatile for different types of projects.
---


Version updated for **https://github.com/subodhkc/mcp-tenant-isolation** to version **v1.6.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-tenant-isolation-scan) to find the latest changes.

## Action Summary

This GitHub Action, `mcp-tenant-isolation`, is a static analysis tool designed to detect and prevent cross-tenant data leakage in multi-tenant SaaS applications and MCP server codebases. It uses 57 deterministic rules to check for common vulnerabilities related to tenant isolation, database query filtering, IDOR prevention, cache key scoping, RLS, schema gaps, and MCP-specific risks such as tool visibility, cache prefix, session binding, credential vault, and more. The tool supports various frameworks including Prisma, Drizzle, raw SQL, Next.js, Express, and Fastify, making it versatile for different types of projects.

## What's Changed

Scans TypeScript and JavaScript codebases for tenant isolation vulnerabilities. 57 deterministic rules covering database query tenant filters, IDOR, cache key scoping, session isolation, file storage scoping, RLS, schema gaps, and MCP-specific risks (tool visibility, cache prefix, session binding, credential vault). Outputs SARIF for GitHub Code Scanning, Markdown for PR reports, and AI-friendly JSON for agent integration. Includes an MCP server for AI agent tool use.
Categories: Security, Developer Tools, Code Quality
Pricing: Free

