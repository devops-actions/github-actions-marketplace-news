---
title: Droid LLM Hunter
date: 2026-03-27 13:56:44 +00:00
tags:
  - roomkangali
  - GitHub Actions
draft: false
repo: https://github.com/roomkangali/droid-llm-hunter
marketplace: https://github.com/marketplace/actions/droid-llm-hunter
version: v1.0.0
dependentsNumber: "?"
actionType: Docker
---


Version updated for **https://github.com/roomkangali/droid-llm-hunter** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/droid-llm-hunter) to find the latest changes.

## Action Summary

Droid LLM Hunter is an AI-powered security analysis tool that combines static analysis with large language model capabilities to detect vulnerabilities in Android applications with high accuracy. It automates tasks like hybrid decompilation, intelligent risk filtering, and exploit generation, enabling security engineers to focus on high-severity findings while minimizing false positives. Its key capabilities include contextual code analysis, proof-of-concept script generation, and a dashboard for managing and visualizing security reports.

## Release notes

# Droid LLM Hunter 

**Droid LLM Hunter** is an automated security analysis tool designed to detect vulnerabilities in Android applications with high precision. By combining traditional static analysis (SAST) with the contextual understanding of **Large Language Models (LLMs)**, it bridges the gap between keyword-based scanning and human-like code review.

It supports **Hybrid Decompilation** (Smali/Java), **Context-Aware Analysis** (Call Graphs), and **Intelligent Risk Filtering**, ensuring that security engineers can focus on verified, high-severity findings rather than false positives.

Features **Auto-Exploit Generation**, transforming from a passive scanner into an active capable of verifying vulnerabilities with generated Proof-of-Concept (PoC) scripts.

**Link**: [Droid LLM Hunter](https://github.com/roomkangali/droid-llm-hunter)

## Features

- **🧠 Intelligent Analysis Engine:** Droid LLM Hunter goes beyond regex. It breaks down code into chunks, summarizes functionality, and understands context before flagging vulnerabilities, significantly reducing false positives compared to traditional tools.
- **⭐ Staged Prompt Architecture:** Uses a specialized pipeline of prompts (Summarization -> Filtering -> Deep Scan) to ensure consistent reasoning and reduce hallucination. [Read the Docs](PROMPT-EXPLANATION.md)
- **🔍 Hybrid Filter Modes:** Choose your strategy!
  - **`llm_only`:** Maximum accuracy using pure AI analysis.
  - **`static_only`:** Blazing fast keyword scanning.
  - **`hybrid`:** The best of both worlds Static keywords filter the noise, AI verifies the danger.
- **🏗️ Hybrid Architecture (v1.1.5):** A revolutionary "Search -> Regex Filter -> LLM" pipeline that drastically reduces token usage and increases speed. [Read the Docs](ARCHITECTURE_EXPLANATION.md)
- **🛠️ Flexible Configuration:** a simple yet powerful configuration file (`config/settings.yaml`) allows for easy management of LLM providers, models, rules, and **Decompiler Settings** (Apktool/JADX).
- **🕸️ Context-Aware Scanning:** Utilizes a **Call Graph** to understand file dependencies. Use CrossReference Context to let the AI know _who_ calls a function and with _what_ arguments. [Read the Docs](CROSS_REFERENCE_CONTEXT.md)
- **⚔️ Attack Surface Mapper:** Combines **Manifest Structure** (Exported components) with **Code Logic** (AI Summaries) to identify high-risk entry points (e.g., specific activities processing unvalidated URLs). [Read the Docs](ATTACK_SURFACE_MAPPER.md)
- **📚 RAG with OWASP MASVS:** Every finding is automatically enriched with the relevant **OWASP Mobile Application Security Verification Standard (MASVS)** ID (e.g., `MASVS-STORAGE-1`), making your reports audit-ready instantly.
- **🤖 Multi-Provider Support:** Run locally with **Ollama** (free & private) or scale up with **Gemini**, **Groq**, **OpenAI**, **Anthropic**, and **OpenRouter**.
- **📊 Structured Security Reports:** Get detailed JSON output containing severity, confidence scores, evidence snippets, and even an "Attack Surface Map" of the application.
- **💥 Auto-Exploit Generation:** Automatically generates actionable **Proof-of-Concept (PoC)** scripts (Bash, HTML, Python, Js) for confirmed vulnerabilities, proving the impact instantly. [Read the Docs](EXPLOIT_GENERATOR.md)
- **🛡️ Smart Scope Protection:** The "Immune System" of the scanner. Automatically filters out library code (e.g., `androidx`, `google`, `r0.java`) using a combination of **Package Whitelisting** (via Manifest) and **Library Blocklisting**. [Read the Docs](EXPLOIT_GENERATOR.md#1-smart-scope-filtering-the-immune-system)
- **👑 Cross-Component Chaining:** The "Crown Jewel". Capability that enables the AI to "connect the dots" between different files. It uses a **Two-Pass Analysis** (Discovery -> Global Context -> Execution) to generate chained exploits (e.g., using a token found in File A to exploit File B). [Read the Docs](EXPLOIT_GENERATOR.md#2-cross-component-chaining-the-crown-jewel)
- **📦 XAPK Support:** Direct support for `.xapk` files. The engine automatically handles extraction and selects the main APK for seamless analysis.
erational defaults.

<p align="center">
  <img src="https://raw.githubusercontent.com/roomkangali/droid-llm-hunter/main/logo/dlh-logo.png" width="1000">
</p>
