---
title: Aguara Security Scanner
date: 2026-03-24 22:05:18 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.10.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.10.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanner designed to analyze AI agent skills and MCP servers, detecting vulnerabilities like prompt injection, data exfiltration, and supply-chain attacks before deployment. It automates static code analysis using advanced techniques, including pattern matching, NLP, and taint tracking, to identify and mitigate risks across multiple file formats and configurations. With features like cross-file toxic flow analysis, encoded payload decoding, and context-aware scanning, Aguara helps ensure the security of AI and MCP environments while minimizing false positives.

## Release notes

## v0.10.0 - Engine Improvements

8 engine improvements for evasion prevention, signal quality, and library consumer API. Derived from oktsec IPI Arena benchmark analysis. Validated against 28,207 real MCP skills with zero regressions.

### New features

**Encoded evasion detection** - 4 new decoders (URL encoding, Unicode escapes, HTML entities, hex escapes) join the existing base64/hex decoders. Obfuscated payloads like \`%69%67%6E%6F%72%65\` ("ignore") are decoded and re-scanned automatically. Crypto address filter prevents false positives on Ethereum addresses.

**NLP on JSON/YAML** - The NLP analyzer now processes \`.json\`, \`.yaml\`, and \`.yml\` files, extracting string values from tool descriptions and running authority claim and credential+exfil combo checks. Catches MCP tool poisoning in structured config files.

**Aggregate risk score** - \`ScanResult\` includes a \`RiskScore\` field (0-100) computed with diminishing returns across all findings. Available in JSON (\`risk_score\`), SARIF (\`run.properties.riskScore\`), and terminal output (\`risk: X/100\`).

**Proximity weighting** - The NLP keyword classifier now considers keyword clustering and text density. Clustered keywords get a 1.3x bonus; sparse keywords in long documentation text get penalized. Eliminates false positives on legitimate API docs.

**Dynamic confidence** - Confidence scores now reflect actual signal quality instead of flat per-analyzer values. Pattern matcher: 0.70-0.95 based on how many patterns in a rule matched. NLP: 0.50-0.90 derived from classifier score. Code-block findings get 0.6x penalty.

**Configurable dedup** - New \`WithDeduplicateMode(DeduplicateSameRuleOnly)\` option preserves cross-rule findings on the same line. Default behavior unchanged. Designed for library consumers (like oktsec) that need complete signal for their verdict pipeline.

**Cross-file toxicflow** - Detects dangerous capability combinations split across files in the same MCP server directory (e.g., one tool reads credentials, another sends to a webhook). Rules: TOXIC_CROSS_001/002/003. Flat directory filter (>50 files) prevents false positives on registries.

**Library-mode rug-pull** - New \`WithStateDir()\` option enables rug-pull detection for library consumers. State persists between scans. First scan records baseline; subsequent scans detect content changes with dangerous patterns.

### API additions (non-breaking)

\`\`\`go
aguara.WithDeduplicateMode(aguara.DeduplicateSameRuleOnly)
aguara.WithStateDir("/path/to/state")
aguara.ScanResult.RiskScore // float64, 0-100
\`\`\`

### Stats

- 177 rules, 13 categories, 550 tests, 0 lint issues
- Validated against 28,207 MCP skills from Aguara Watch
- Normalized detection rate delta: -2.1% to +12.7% vs baseline
- Zero false positives on benign content

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.9.1...v0.10.0
