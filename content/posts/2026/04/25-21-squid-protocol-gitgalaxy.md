---
title: GitGalaxy Scanner
date: 2026-04-25 21:28:29 +00:00
tags:
  - squid-protocol
  - GitHub Actions
draft: false
repo: https://github.com/squid-protocol/gitgalaxy
marketplace: https://github.com/marketplace/actions/gitgalaxy-scanner
version: v2.0.7
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/squid-protocol/gitgalaxy** to version **v2.0.7**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gitgalaxy-scanner) to find the latest changes.

## Action Summary

GitGalaxy is a high-performance, AST-free static analysis tool and knowledge graph engine designed to analyze code repositories at scale. It automates the generation of deterministic function-level insights, architectural mappings, and project structure analysis across 50+ programming languages without requiring compilable code. By bypassing the limitations of Abstract Syntax Trees (ASTs) and Large Language Models (LLMs), it provides accurate, non-probabilistic insights into codebases, solving challenges related to context window limits, language switching, and false positives.

## What's Changed

The official GitHub Action for the **GitGalaxy DevSecOps Suite**.

This release brings GitGalaxy's AST-free, zero-trust static analysis directly into your CI/CD pipelines, allowing you to block poisoned builds and generate forensic artifacts in seconds.

### 🛡️ Available Pipeline Sentinels
* **Supply Chain Firewall (`supply-chain-firewall`)**: Blocks typosquatting and malicious imports.
* **Vault Sentinel (`vault-sentinel`)**: Hyper-speed hardcoded secrets detection.
* **X-Ray Inspector (`xray-inspector`)**: Triage for encrypted payloads and binary anomalies.
* **Zero-Trust SBOM (`zero-trust-sbom`)**: Generates mathematically verified CycloneDX manifests.
* **API Network Map (`api-network-map`)**: Hunts for undocumented Shadow APIs.
* **AI Guardrails**: Automatically evaluates LLM AppSec risks and Agentic context limits via `galaxyscope`.

### 🪶 Zero-Dependency Native
Executes in seconds utilizing Python's standard library. The optional `full_precision` input flag seamlessly unlocks heavy physics engines (NetworkX, TikToken, XGBoost) for ML threat inference and Blast Radius calculations.

### 🚀 Quickstart Example
```yaml
- name: Run GitGalaxy Supply Chain Firewall
  uses: squid-protocol/gitgalaxy@v2.0.7
  with:
    tool: 'supply-chain-firewall'
```

## What's Changed
* pypi fix by @squid-protocol in https://github.com/squid-protocol/gitgalaxy/pull/5
* Add descriptive message about what you changed by @squid-protocol in https://github.com/squid-protocol/gitgalaxy/pull/6
* Potential fix for code scanning alert no. 1: Bad HTML filtering regexp by @squid-protocol in https://github.com/squid-protocol/gitgalaxy/pull/7
* feat: add CI/CD YAML AppSec sensors for supply chain defense by @squid-protocol in https://github.com/squid-protocol/gitgalaxy/pull/8
* feat: add GitGalaxy composite action and modernize Spoke CI/CD docume… by @squid-protocol in https://github.com/squid-protocol/gitgalaxy/pull/9


**Full Changelog**: https://github.com/squid-protocol/gitgalaxy/compare/v2.0.6...v2.0.7
