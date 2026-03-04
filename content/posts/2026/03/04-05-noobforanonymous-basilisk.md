---
title: Basilisk AI Security Scan
date: 2026-03-04 05:42:15 +00:00
tags:
  - noobforanonymous
  - GitHub Actions
draft: false
repo: https://github.com/noobforanonymous/basilisk
marketplace: https://github.com/marketplace/actions/basilisk-ai-security-scan
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/noobforanonymous/basilisk** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/basilisk-ai-security-scan) to find the latest changes.

## Action Summary

Basilisk is an open-source AI red teaming framework designed for testing and improving the security of AI and LLM (Large Language Model) applications. It automates the discovery of vulnerabilities using a genetic algorithm-based prompt evolution engine, enabling dynamic bypass detection beyond static testing methods. The framework provides comprehensive coverage of OWASP LLM Top 10 attack vectors and supports features like differential analysis across LLMs, aiding in the identification of provider-specific weaknesses.

## Release notes

## What's New

### 🔬 Differential Mode
Compare LLM behavior across providers side-by-side. Detects behavioral divergences where one model refuses but another complies.

```bash
basilisk diff -t openai:gpt-4o -t anthropic:claude-3-5-sonnet-20241022
```

### 🛡️ Guardrail Posture Scan
Non-destructive recon-only security assessment. Produces an A+ to F security grade without running attacks. Safe for production.

```bash
basilisk posture -p openai -m gpt-4o
```

### 📋 Audit Logging
Forensic-grade, SHA-256 checksummed audit trails enabled by default. JSONL format with automatic API key redaction.

### ⚙️ CI/CD GitHub Action
Native `action.yml` for pipeline integration with SARIF baseline regression detection.

### 🆓 GitHub Models Support
Use GPT-4o, DeepSeek-R1, Llama, Mistral and more for FREE via GitHub Marketplace Models. No API key purchases required.

### 🖥️ Desktop App
Three new tabs: Differential comparison, Posture assessment with live grading, and Audit trail viewer.

---

## Full Feature List
- 29 attack modules covering OWASP LLM Top 10  
- Smart Prompt Evolution (SPE-NL) genetic algorithm  
- 5 recon modules  
- 5 report formats (HTML, JSON, SARIF, Markdown, PDF)  
- Native C/Go performance extensions  
- Universal provider support (OpenAI, Anthropic, Google, Azure, GitHub Models, Ollama)  
- Electron desktop app (Windows, macOS, Linux)  

---

## Install

```bash
pip install basilisk-ai
```

---

## Links
- 🌐 https://basilisk.rothackers.com  
- 📖 Documentation  
- ⚙️ GitHub Action  

Built by Regaan — Rot Hackers
