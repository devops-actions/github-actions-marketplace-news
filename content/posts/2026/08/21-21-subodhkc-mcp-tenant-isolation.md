---
title: MCP Tenant Isolation Scan
date: 2026-08-21 21:54:38 +00:00
tags:
  - subodhkc
  - GitHub Actions
draft: false
repo: https://github.com/subodhkc/mcp-tenant-isolation
marketplace: https://github.com/marketplace/actions/mcp-tenant-isolation-scan
version: v2.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This action is a static analysis tool that scans multi-tenant software code to identify and flag potential issues related to tenant isolation. It checks various patterns across database queries, API routes, cache keys, file storage, schema design, logging, and MCP server architecture. The tool provides detailed findings with rule IDs, files, lines, missing guards, and remediation hints. The scan is deterministic and works with TypeScript, JavaScript, Prisma, Drizzle, raw SQL, Next.js, Express, and Fastify.
---


Version updated for **https://github.com/subodhkc/mcp-tenant-isolation** to version **v2.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-tenant-isolation-scan) to find the latest changes.

## Action Summary

This action is a static analysis tool that scans multi-tenant software code to identify and flag potential issues related to tenant isolation. It checks various patterns across database queries, API routes, cache keys, file storage, schema design, logging, and MCP server architecture. The tool provides detailed findings with rule IDs, files, lines, missing guards, and remediation hints. The scan is deterministic and works with TypeScript, JavaScript, Prisma, Drizzle, raw SQL, Next.js, Express, and Fastify.

## What's Changed

## What changed

mcp-tenant-isolation 2.0.0 is a major version. It upgrades to the MCP v2 SDK, adds security boundary enforcement, structured scan output, evidence receipts, and npm Trusted Publishing with provenance attestations.

## What is new

### MCP v2 SDK
- `@modelcontextprotocol/server` v2 (Zod schemas, structured output)
- stdio transport only (SSE removed)
- 4 tools: scan, list rules, explain rule, suppress finding
- Read-only by default. Write tools require `--allow-write-tools`.

### Security boundaries
- Path traversal rejection
- Symlink escape detection via realpath
- UNC/network path rejection
- Windows case-insensitive path normalization
- All filesystem operations constrained to project root

### Structured output
- Completeness states: COMPLETE, PARTIAL, ERROR
- File parse accounting, rule evaluation accounting
- 8 concern families for triage
- Limitations field (what was and was not checked)

### Evidence and receipts
- Scan Receipt with SHA-256 hash and rulepack digest
- Evidence Envelope for verifiable scan artifacts
- v2 semantic fingerprints (stable under line movement)
- Proof-of-fix tracking (STILL_PRESENT, NEW, NOT_VERIFIABLE)

### Supply chain
- npm Trusted Publishing via GitHub Actions OIDC
- Sigstore provenance attestations
- 0 npm audit vulnerabilities
- Cross-platform CI: Ubuntu, Windows, macOS (Node 22, 24)

### Breaking changes
- SSE transport removed. stdio only.
- MCP SDK upgraded from v1 to v2.
- Engine version bumped to 2.0.0.
- Node 22+ required (was 18+).

## Install

```bash
# npm
npm install -g mcp-tenant-isolation
npx mcp-tenant-isolation scan ./src

# Docker
docker run --rm -v $(pwd):/code subodhkc/mcp-tenant-isolation scan /code/src
```

## MCP client configuration

```json
{
  "mcpServers": {
    "tenant-isolation": {
      "command": "npx",
      "args": ["-y", "mcp-tenant-isolation", "mcp"]
    }
  }
}
```

## Verify provenance

```bash
npm view mcp-tenant-isolation@2.0.0 dist.attestations
```

## Verification

- 203 tests passing across 13 test files
- 0 npm audit vulnerabilities
- Cross-platform CI: Ubuntu, Windows, macOS (Node 22, 24)
- Provenance attestations via sigstore
- npm Trusted Publishing via GitHub Actions OIDC
- Docker image: `subodhkc/mcp-tenant-isolation:2.0.0`
- MCP Registry: `io.github.subodhkc/mcp-tenant-isolation`

## Limitations

- Intra-procedural flow analysis only. No cross-function taint tracing.
- No runtime verification. Cannot check if RLS is actually enabled.
- TypeScript and JavaScript only. Python, Go, Ruby are on the roadmap.
- False positives are possible. Configurable via `.mtirc.json`.
- stdio transport only. SSE was removed in v2.0.0.

## Links

- [npm](https://www.npmjs.com/package/mcp-tenant-isolation)
- [GitHub](https://github.com/subodhkc/mcp-tenant-isolation)
- [Docker Hub](https://hub.docker.com/r/subodhkc/mcp-tenant-isolation)
- [Landing page](https://www.haiec.com/mcp-tenant-isolation)
- [Blog post](https://www.haiec.com/blog/mcp-tenant-isolation-v2-security-boundaries-provenance)
- [Changelog](https://github.com/subodhkc/mcp-tenant-isolation/blob/main/CHANGELOG.md)
- [Security policy](https://github.com/subodhkc/mcp-tenant-isolation/blob/main/SECURITY.md)

