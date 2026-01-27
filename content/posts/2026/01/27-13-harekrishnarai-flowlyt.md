---
title: Flowlyt Security Analyzer
date: 2026-01-27 13:45:40 +00:00
tags:
  - harekrishnarai
  - GitHub Actions
draft: false
repo: https://github.com/harekrishnarai/flowlyt
marketplace: https://github.com/marketplace/actions/flowlyt-security-analyzer
version: v1.0.7
dependentsNumber: "0"
---


Version updated for **https://github.com/harekrishnarai/flowlyt** to version **v1.0.7**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/flowlyt-security-analyzer) to find the latest changes.

## Action Summary

Flowlyt is an AI-powered security analyzer designed to enhance the security of CI/CD pipelines by detecting vulnerabilities and misconfigurations in GitHub Actions and GitLab CI/CD workflows. It leverages advanced Abstract Syntax Tree (AST) analysis combined with AI-powered false positive reduction to provide faster, more accurate scans while minimizing noise. Key capabilities include multi-platform support, real-time vulnerability analysis, supply chain security focus, confidence scoring, and integration with industry-standard tools like SARIF and OSV.dev.

## Release notes

## Highlights
- Add shared code-context builder and embed codeContext in JSON findings
- Deduplicate findings in JSON and SARIF outputs
- Emit durationMs/durationNs in JSON for clear units
- Use raw code snippets and numeric security-severity in SARIF
- Reuse AI analyzer cache for single-finding analysis

## Testing
- go test ./...
