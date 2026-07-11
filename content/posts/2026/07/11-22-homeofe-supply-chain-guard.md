---
title: Supply Chain Guard
date: 2026-07-11 22:27:50 +00:00
tags:
  - homeofe
  - GitHub Actions
draft: false
repo: https://github.com/homeofe/supply-chain-guard
marketplace: https://github.com/marketplace/actions/supply-chain-guard
version: v5.12.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/homeofe/supply-chain-guard** to version **v5.12.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/supply-chain-guard) to find the latest changes.

## What's Changed

### v5.12.0 (2026-07-11)
**Issue #54 hardening: oversized-file transparency + threat-intel indicator contract**

Implements both hardening gaps tracked in issue #54 (follow-up to the merged
PR #55 extraction/IOC hardening), plus the dependency maintenance merged this
cycle (docker/login-action 4.4.0, vitest + @vitest/coverage-v8 4.1.10). This
minor also carries PR #55's archive-extraction and self-scan-suppression fix
to npm (it landed after v5.11.1 was published).

- New rule `FILE_TOO_LARGE_SKIPPED` (info): the core, VSIX, npm, and PyPI
  scanners no longer skip files above the 5 MB content-scan limit silently -
  every skipped scannable file is surfaced with its path and size, because an
  attacker can deliberately pad a payload past the limit to dodge scanning.
  info severity: never affects exit codes; filterable via --min-severity or
  --exclude FILE_TOO_LARGE_SKIPPED. The oversized body is never read.
- Threat-intel indicator contract: feed values are LITERAL indicators, never
  regexes. Domain values were previously compiled to RegExp with only dots
  escaped, so a hostile or malformed remote feed value like "(" threw inside
  the per-file loop - swallowed by the per-file catch, silently disabling all
  downstream checks for every file while the scan exited green, and a valid
  catastrophic pattern ("(a+)+b") would be ReDoS-tested against full file
  contents. Now: full metacharacter escaping (values match only themselves),
  compiled once per unique value, with a substring fallback that can never
  throw.
- Type-aware quarantine at every feed ingestion point (`feed refresh`, the
  legacy update API, and the cached-feed load at scan time): each entry must
  match its type's shape (domain/ip/url/hash/package charsets, 2048-char cap).
  Invalid entries are dropped deterministically; a rejected refresh never
  overwrites the previous cache. This also stops a structurally-valid garbage
  literal like a bare "(" from flooding reports with false matches.
- npm/PyPI extracted-file walkers are now exported (scanExtractedNpmFiles /
  scanExtractedFiles) so the size-limit behavior is regression-tested without
  network; 16 new tests across all five scanner families and all three
  ingestion paths.
- An adversarial review gate BLOCKED the first candidate with 6 confirmed
  findings, all fixed pre-tag: (1)+(2) the ip/url value shapes were
  charset-only, so a degenerate flood value like ip "." or url "(" passed the
  quarantine and substring-matched a critical finding onto virtually every
  scanned file - ip now requires IPv4/IPv6 structure, url an 8-char floor;
  (3) the domain regex cache was unbounded (long-running MCP server + rotating
  hostile feed = monotonic memory growth) - now cleared at 10k entries;
  (4) severity is enum-checked and confidence range-checked (an unknown
  severity string would have produced NaN scores downstream); (5) the
  skills-scanner's agent-rules reader also surfaces oversized files now
  (fifth family, full DoD parity); (6) the feed-reject error message bounds
  the attacker-controlled type field, not just the value.

