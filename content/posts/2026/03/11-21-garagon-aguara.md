---
title: Aguara Security Scanner
date: 2026-03-11 21:46:05 +00:00
tags:
  - garagon
  - GitHub Actions
draft: false
repo: https://github.com/garagon/aguara
marketplace: https://github.com/marketplace/actions/aguara-security-scanner
version: v0.8.0
dependentsNumber: "1"
actionType: Composite
---


Version updated for **https://github.com/garagon/aguara** to version **v0.8.0**.
- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aguara-security-scanner) to find the latest changes.

## Action Summary

Aguara is a security scanning tool designed to detect vulnerabilities in AI agent skills and MCP (multi-agent control protocol) servers before deployment. It identifies threats such as prompt injection, data exfiltration, and supply-chain attacks using a four-layer static analysis engine, which combines techniques like pattern matching, NLP-based markdown analysis, and taint tracking. The tool is CI-ready, provides confidence scoring for prioritizing issues, offers actionable remediation guidance, and supports extensibility with custom rule creation.

## Release notes

## What's Changed
* docs: add stars badge and comparison table to README by @garagon in https://github.com/garagon/aguara/pull/24
* chore: add .gitguardian.yaml to suppress test fixture false positives by @yunior123 in https://github.com/garagon/aguara/pull/31
* feat: add detection rules for .env file exposure patterns by @yunior123 in https://github.com/garagon/aguara/pull/29
* feat: add detection rules for GitHub Actions workflow injection by @yunior123 in https://github.com/garagon/aguara/pull/30
* feat: add markdown output format to aguara discover by @yunior123 in https://github.com/garagon/aguara/pull/28
* fix: apply security audit Phase 1 findings (12 fixes) by @garagon in https://github.com/garagon/aguara/pull/32
* perf: security audit Phase 2 - performance, dedup, and hardening by @garagon in https://github.com/garagon/aguara/pull/33
* fix: security audit Phase 3 - remediation, performance, rules quality by @garagon in https://github.com/garagon/aguara/pull/34
* Release v0.8.0 by @garagon in https://github.com/garagon/aguara/pull/35

## New Contributors
* @yunior123 made their first contribution in https://github.com/garagon/aguara/pull/31

**Full Changelog**: https://github.com/garagon/aguara/compare/v0.7.0...v0.8.0


