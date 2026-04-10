---
title: AIBOM Scanner
date: 2026-04-10 22:00:47 +00:00
tags:
  - saasvista
  - GitHub Actions
draft: false
repo: https://github.com/saasvista/aibom-scanner
marketplace: https://github.com/marketplace/actions/aibom-scanner
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/saasvista/aibom-scanner** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aibom-scanner) to find the latest changes.

## Action Summary

The GitHub Action "aibom-scanner" automates the detection of AI SDKs in codebases and generates an AI Bill of Materials (AIBOM) that maps compliance risks to frameworks like NIST AI RMF, ISO 42001, and the EU AI Act. It helps developers identify AI-related risks, such as data privacy, security, and governance issues, while ensuring adherence to regulatory standards. Key capabilities include scanning for AI SDK usage, detecting secrets, and providing compliance controls, all with zero dependencies.

## What's Changed

## What's New

**aibom-scanner** scans codebases for AI SDK usage and maps compliance risks to NIST AI RMF, ISO 42001, and the EU AI Act.

### Features

- **61 detection patterns** across 30+ AI providers (OpenAI, Anthropic, Google AI, AWS Bedrock, Cohere, Mistral, Groq, and more)
- **10 Chinese AI providers** with US BIS Entity List flagging — Zhipu, iFlytek, SenseTime trigger CRITICAL findings
- **Agentic AI detection** — CrewAI, AutoGen, LangGraph, Semantic Kernel, MCP
- **34 risk rules** across 8 categories with evidence-qualified severity
- **48 compliance controls** mapped to NIST AI RMF (23), ISO 42001 (15), EU AI Act (10)
- **Secrets detection** — hardcoded API keys, Vault, AWS Secrets Manager, dotenv
- **Dev tool detection** — Cursor, GitHub Copilot, Claude Code, Aider
- **Output formats** — table (terminal), JSON, SARIF (GitHub Code Scanning)
- **GitHub Action** for CI integration
- **Zero dependencies** beyond Python stdlib

### Quick Start

```bash
pip install aibom-scanner
aibom-scanner scan --path /your/repo
```

### What We Found

We scanned 5 popular AI repos (470K combined GitHub stars): 389 AI detections, 116 compliance findings, zero governance controls fully mapped. One had a BIS Entity-Listed Chinese AI provider nobody knew about.
