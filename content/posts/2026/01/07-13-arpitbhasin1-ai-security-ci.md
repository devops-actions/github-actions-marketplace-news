---
title: AI Prompt Security Test
date: 2026-01-07 13:21:24 +00:00
tags:
  - arpitbhasin1
  - GitHub Actions
draft: false
repo: https://github.com/arpitbhasin1/ai-security-ci
marketplace: https://github.com/marketplace/actions/ai-prompt-security-test
version: v1
dependentsNumber: "?"
---


Version updated for **https://github.com/arpitbhasin1/ai-security-ci** to version **v1**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ai-prompt-security-test) to find the latest changes.

## Action Summary

This GitHub Action automates security testing for AI systems by simulating common prompt-based attacks, such as jailbreak attempts, prompt leakage, and harmful content generation. It identifies vulnerabilities by evaluating system responses using heuristics and optional LLM-based judging, providing detailed reports in JSON and Markdown formats. This tool streamlines the process of ensuring AI prompt security within CI pipelines, helping developers safeguard their AI models from malicious exploitation.

## Release notes

## AI Prompt Security CI – Phase-1 MVP

AI Prompt Security CI automatically runs defensive prompt-based security checks
(jailbreaks, prompt leaks, harmful instructions) against your AI prompts and models
directly inside CI/CD.

### Key Features
- GitHub Action + CLI
- Prompt injection & jailbreak simulation
- Heuristic detection with optional LLM-as-judge
- JSON + Markdown security reports
- DEMO_MODE for zero-API-cost testing (no API key required)
- CI-friendly exit codes (fail on high-severity findings)
- Safe, defensive-only attack library

### What This Tool Does NOT Do (Phase-1)
- No dashboard (reports only)
- No SaaS backend
- No multi-turn attacks
- No inference-time guardrails
- No enterprise or billing features

### Intended Use
This tool is designed for developers and teams testing **their own AI systems**
before deployment. It is defensive-only and meant to surface prompt vulnerabilities
early in development.

See README for setup instructions and usage examples.
