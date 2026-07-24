---
title: MCP Trust Checker — MCP Security Scan
date: 2026-07-24 19:18:28 +00:00
tags:
  - illiahaidar
  - GitHub Actions
draft: false
repo: https://github.com/illiahaidar/mcptrustchecker
marketplace: https://github.com/marketplace/actions/mcp-trust-checker-mcp-security-scan
version: 1.10.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  MCP Trust Checker is a deterministic security scanner that assesses Model Context Protocol servers to ensure they are safe before connecting them to data. It uses the Capability-Flow Trust Model, an original algorithm, to evaluate servers based on their roles and behavior, identifying threats such as untrusted input ingress, sensitive data sources, and exfiltration paths, ensuring they do not pose a risk.
---


Version updated for **https://github.com/illiahaidar/mcptrustchecker** to version **1.10.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mcp-trust-checker-mcp-security-scan) to find the latest changes.

## Action Summary

MCP Trust Checker is a deterministic security scanner that assesses Model Context Protocol servers to ensure they are safe before connecting them to data. It uses the Capability-Flow Trust Model, an original algorithm, to evaluate servers based on their roles and behavior, identifying threats such as untrusted input ingress, sensitive data sources, and exfiltration paths, ensuring they do not pose a risk.

## What's Changed


Methodology `mcptrustchecker-1.9` — **unchanged**. No weight, rule, gate or grade
band moved, so **every grade this release produces is identical to 1.9.0**.

## Added — a GitHub repository is now a scan target

```bash
mcptrustchecker scan upstash/context7
mcptrustchecker scan https://github.com/modelcontextprotocol/servers
mcptrustchecker scan owner/repo@v1.2.3
```

- Accepts `owner/repo`, `owner/repo@ref`, https/ssh github.com URLs, `.git`
  suffixes and `/tree/<ref>` links. Every other target shape is untouched — a
  scoped package, a path and a live URL still take their own branch, pinned by a
  regression test.
- **Nothing is cloned, written to disk or executed.** The archive is fetched over
  https from GitHub's pinned hosts and unpacked **in memory** by the same bounded
  reader used for npm/PyPI artifacts: same size cap, same redirect re-validation,
  same zip-slip-safe entry paths, same unpacked-bytes ceiling. No git binary runs,
  so no hook can fire.
- A repository is **not** a released artifact and the scan says so: the surface is
  marked `repo`, verification is the `repo` tier (never `source` or `vendor`,
  which require publish provenance), and the archive's own SHA-256 is recorded —
  "the default branch" is only reproducible against the bytes actually read.
- `GITHUB_TOKEN` or `--github-token` lifts GitHub's anonymous rate limit; it is
  sent to `api.github.com` only and never survives a redirect.

## Fixed — DNS rebinding could walk past the SSRF guard

`isBlockedHost()` compared the hostname as a **string**, so a public name whose
`A` record points at loopback sailed through. That mattered most in **OAuth**,
where discovery, registration and token endpoints are chosen by the target
server's own metadata.

- New `isBlockedHostResolved()` resolves the name and blocks it when **any**
  returned address is non-routable — a multi-record name is only as safe as its
  worst answer. Applied at the `acquireHttp` entry and on **every** fetch hop, so
  it covers redirects and every OAuth host.
- Private-range coverage widened: CGNAT (`100.64/10`), multicast (`224/4`) and
  reserved space (`240/4`). `100.63.x` and `100.128.x` stay routable.
- `--allowed-hosts` now **overrides** the private-host guard, which previously
  refused a host you had explicitly allowed — `100.64/10` is Tailscale's range.
- The guard's DNS lookup is time-boxed to 3s; `dns.lookup` takes no timeout.

Deliberate limits: an unresolvable name is not treated as blocked, and a sub-TTL
rebind between lookup and connect still needs a custom dispatcher to close.

## Install

```
npm i -g mcptrustchecker@1.10.0
mcptrustchecker --version     # 1.10.0 (methodology mcptrustchecker-1.9)
```

415 tests pass, including new ones pinning the repository parser and the resolved
host guard.

Also live: the free online scanner — **https://mcptrustchecker.com/scan**

**Full changelog:** https://github.com/illiahaidar/mcptrustchecker/blob/main/CHANGELOG.md
