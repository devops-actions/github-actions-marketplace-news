---
title: AI Prompt Security Test
date: 2026-01-13 06:01:02 +00:00
tags:
  - arpitbhasin1
  - GitHub Actions
draft: false
repo: https://github.com/arpitbhasin1/ai-security-ci
marketplace: https://github.com/marketplace/actions/ai-prompt-security-test
version: v1.0.1
dependentsNumber: "?"
---


Version updated for **https://github.com/arpitbhasin1/ai-security-ci** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-prompt-security-test) to find the latest changes.

## Action Summary

The AI Security CI GitHub Action automates security testing for AI systems within CI pipelines by simulating prompt-based attacks to identify vulnerabilities, such as jailbreak attempts, prompt leakage, and harmful content generation. It evaluates responses using heuristics and an optional LLM-based judge, providing detailed JSON and Markdown reports. This tool helps developers identify and mitigate security risks in AI models, ensuring safer and more robust deployments.

## Release notes

AI Prompt Security CI automatically runs defensive prompt-based security checks
(jailbreaks, prompt leaks, harmful instructions) against your AI prompts and models
directly inside CI/CD.

**Key Features**

- GitHub Action + CLI
- Prompt injection & jailbreak simulation
- Heuristic detection with optional LLM-as-judge
- JSON + Markdown security reports
- DEMO_MODE for zero-API-cost testing (no API key required)
- CI-friendly exit codes (fail on high-severity findings)
- Safe, defensive-only attack library

**What This Tool Does NOT Do (Phase-1)**

- No dashboard (reports only)
- No SaaS backend
- No multi-turn attacks
- No inference-time guardrails
- No enterprise or billing features

**Intended Use**

This tool is designed for developers and teams testing their own AI systems
before deployment. It is defensive-only and meant to surface prompt vulnerabilities
early in development.

See README for setup instructions and usage examples.
