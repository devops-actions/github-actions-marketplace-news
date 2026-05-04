---
title: Nox Security Scanner
date: 2026-05-04 06:27:18 +00:00
tags:
  - Nox-HQ
  - GitHub Actions
draft: false
repo: https://github.com/Nox-HQ/nox
marketplace: https://github.com/marketplace/actions/nox-security-scanner
version: v0.8.1
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/Nox-HQ/nox** to version **v0.8.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nox-security-scanner) to find the latest changes.

## Action Summary

Nox is a security scanner designed for AI application developers, offering static analysis to identify vulnerabilities specific to LLMs (e.g., prompt injection, embedding leakage, agent over-privilege) alongside traditional checks like secrets detection and dependency CVEs. It automates the process of analyzing source code, configurations, and AI components, producing detailed reports in multiple formats while ensuring data privacy with offline-first, deterministic scanning. By addressing AI-specific risks and providing an extensible, secure plugin ecosystem, Nox streamlines compliance, reduces risk, and integrates seamlessly into CI pipelines without relying on external services or SaaS solutions.

## What's Changed

Nox is the open-source security scanner purpose-built for teams shipping 
LLM features. It catches what every other scanner misses — prompt 
injection at the call site, embedding leakage when secrets reach 
vector stores, agent over-privilege, MCP server hardening, cross-file 
AI taint — alongside the boring stuff: 160 secret detectors, 369 IaC 
rules, dependency CVEs with reachability filtering, and 12 PII 
patterns. 717 rules total, deterministic, offline.

This Action wraps nox scan with first-class GitHub integration:

- Uploads SARIF 2.1.0 to GitHub Code Scanning
- Posts inline PR review comments on findings
- Honours severity thresholds and OpenVEX waivers
- Differential scan via --changed-since for fast PR feedback
- Caches the nox binary install across runs

What sets Nox apart:

- AI-native rule families. AI-PI (prompt injection), AI-EMB 
- (embedding leakage), AI-AGENT (over-privileged agent tools), 
- MCP-001..008 (MCP server hardening), TAINT-AI (cross-file AI taint). 
- No commercial scanner ships these as a cohesive family today.
- Cosign-signed plugin marketplace. 19 official plugins, every 
- release verified via Sigstore keyless OIDC. Default trust policy 
- fails closed on unsigned drops.
- Manifest-driven plugins. Pin plugins in .nox.yaml like 
- dependencies in package.json. Anyone cloning your repo gets the 
- same verified scanners on first run.
- No SaaS. No telemetry. No source upload. Scans run entirely on 
- the runner; OSV vulnerability lookups gated behind a single flag.
- AIBOM v2.0. Polyglot AI component inventory across Python, Go, 
- TypeScript, Java, Rust, C# — every model invocation, auth env var, 
- and endpoint in one document.
- MCP-native. Built-in MCP server lets Claude / Cursor / Continue 
- query scan results read-only.

Apache 2.0. Single binary. One pass for SAST, SCA, IaC, secrets, AI, 
and containers.

