---
title: Aguara Security Scanner
date: 2026-03-26 22:03:37 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.13.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.13.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanning GitHub Action designed to detect vulnerabilities in AI agent skills and MCP servers, such as prompt injection, data exfiltration, and supply-chain attacks, before deployment. It automates static analysis using advanced techniques like NLP, taint tracking, and cross-file analysis, offering comprehensive threat detection across multiple file formats. Key capabilities include 189 detection rules, evasion decoding, aggregate risk scoring, and context-aware scanning, ensuring robust protection without relying on external APIs or cloud services.

## Release notes

## Cached Scanner API - 82% faster library-mode scanning

New `NewScanner()` API that compiles rules, regex patterns and search structures once at startup. `Scanner.ScanContent()` reuses the cached matcher on every request. Thread-safe, backwards compatible.

### Benchmarks (benchstat, 6 iterations, p=0.002)

| Scenario | v0.12 | v0.13 | Change |
|---|---|---|---|
| Short message | 9.7ms | 0.7ms | -92.5% |
| JSON config | 11.2ms | 1.9ms | -82.6% |
| Structured markdown | 13.4ms | 4.3ms | -68.0% |
| Plain text | 11.3ms | 2.3ms | -79.8% |
| **Latency geomean** | **9.7ms** | **1.7ms** | **-82.7%** |
| Concurrent (8 threads) | 1.9ms/op | 0.08ms/op | -95.6% |
| Memory per scan | 13.2MB | 9KB | -99.9% |

### Usage

```go
// Build once at startup
scanner, err := aguara.NewScanner(opts...)

// Per-request (reuses compiled rules, thread-safe)
result, err := scanner.ScanContent(ctx, content, "message.md")
```

### Other improvements

- Decoder rescan filtered to all-target rules only (skip extension-specific rules for decoded content)
- NLP fast-path: skip Goldmark parsing for structureless plain text while preserving authority claim and credential exfil combo detection
- Post-processing: early return on 0 findings, O(n log n) proximity check replacing O(n^2)

### Full API

```go
scanner.ScanContent(ctx, content, filename)
scanner.ScanContentAs(ctx, content, filename, toolName)
scanner.Scan(ctx, path)
scanner.ListRules()
scanner.ExplainRule(id)
scanner.RulesLoaded()
```

Existing `aguara.ScanContent()` and `aguara.Scan()` package-level functions still work unchanged.

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.12.1...v0.13.0
