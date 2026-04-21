---
title: middleBrick API Security Scan
date: 2026-04-21 14:27:28 +00:00
tags:
  - middleBrick
  - GitHub Actions
draft: false
repo: https://github.com/middleBrick/scan-action
marketplace: https://github.com/marketplace/actions/middlebrick-api-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/middleBrick/scan-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/middlebrick-api-security-scan) to find the latest changes.

## Action Summary

The **middleBrick Scan Action** is a GitHub Action designed to automate security assessments for API endpoints, including REST, GraphQL, LLM/AI, and Web3 JSON-RPC. It evaluates APIs for vulnerabilities across 14 security categories, assigns a risk score (A–F), and provides actionable findings to help maintain security standards. Key features include the ability to fail CI pipelines based on a score threshold, post findings as PR comments, add inline annotations, and support authenticated scanning, streamlining API security testing in CI workflows.

## What's Changed

First public release of the middleBrick API Security Scan Action.

## What's in this release

- **Authenticated scanning** — new `headers` input accepts a JSON map of auth headers. Allowlist: `Authorization`, `X-API-Key`, `Cookie`, `X-Custom-*`. Requires one-time domain verification in the dashboard.
- **Marketplace-ready** README with full coverage, examples (threshold gate, PR comment, matrix, OpenAPI), and safety notes.
- **Apache 2.0** license (`LICENSE` + `NOTICE`).
- **Rebuilt bundle** — ncc-packaged `dist/index.js` at ~1.9MB.

## Coverage

14 security categories: OWASP API Top 10 (12 checks) + LLM/AI Security (system prompt leakage, injection, jailbreaks) + Web3 JSON-RPC (EVM / Solana / Cosmos) + DeFi application (oracles, slippage, leaked provider keys).

Protocols auto-detected: REST, GraphQL, gRPC-Web, SOAP, JSON-RPC, EVM-RPC, Solana-RPC, Cosmos-RPC.

Compliance mapping: PCI-DSS 4.0, SOC 2 Type II, OWASP API Top 10 2023.

## Usage

```yaml
- uses: middlebrick/scan-action@v1
  with:
    api-key: ${{ secrets.MIDDLEBRICK_API_KEY }}
    url: https://api.staging.example.com/v1/users
    threshold: 70
```

See [README](https://github.com/middleBrick/scan-action/blob/main/README.md) for full inputs, outputs, and examples.

## Links
- [middlebrick.com](https://middlebrick.com)
- [Dashboard](https://middlebrick.com/dashboard)
- [Pricing](https://middlebrick.com/#pricing)
