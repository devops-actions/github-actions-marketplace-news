---
title: Precogs AI Security Scan
date: 2026-04-30 21:53:54 +00:00
tags:
  - PrecogsAI
  - GitHub Actions
draft: false
repo: https://github.com/PrecogsAI/precogs-action
marketplace: https://github.com/marketplace/actions/precogs-ai-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/PrecogsAI/precogs-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/precogs-ai-security-scan) to find the latest changes.

## Action Summary

The "Precogs Security Scan" GitHub Action is an AI-powered security tool designed to identify vulnerabilities, hardcoded secrets, personally identifiable information (PII), and insecure dependencies in code repositories. It automates security scanning for secrets, PII, and dependency vulnerabilities for free, while offering advanced static application security testing (SAST) for deeper code analysis with a paid subscription. Key capabilities include detecting various secret patterns, scanning code for 200+ vulnerability types, and integrating results into GitHub's Code Scanning for streamlined security management.

## What's Changed

# ⚡ Precogs AI Security Scan v1.0.0

Industry-leading AI security scanner for GitHub Actions. Proprietary detection engine with ultra-low false positive rates. Finds vulnerabilities, secrets, PII, and insecure dependencies before they reach production.

## 🆓 Free — No API Key Required

- **Secret scanning** — Proprietary pattern engine covering 25+ credential types (AWS, GitHub, Stripe, Slack, OpenAI, private keys, DB URLs, JWT tokens)
- **PII detection** — Identifies SSNs, credit card numbers, emails, and phone numbers with context-aware filtering to minimize false positives
- **Dependency CVE scan** — Scans npm, pip, Go, Ruby, and Rust manifests against a continuously updated vulnerability database
- **Entropy analysis** — Proprietary Shannon entropy engine catches obfuscated and high-entropy secrets that regex alone misses

## 💎 Pro — With API Key

- **AI code scan (SAST)** — Deep semantic analysis powered by Precogs AI. Detects SQL injection, XSS, command injection, path traversal, insecure crypto, and 200+ vulnerability patterns with industry-leading accuracy
- **Full interactive report** on [app.precogs.ai](https://app.precogs.ai) with remediation guidance, fix suggestions, and compliance mapping

## 🚀 Quick Start

```yaml
- uses: PrecogsAI/precogs-action@v1

