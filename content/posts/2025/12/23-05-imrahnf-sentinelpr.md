---
title: SentinelPR Code Auditor
date: 2025-12-23 05:29:03 +00:00
tags:
  - imrahnf
  - GitHub Actions
draft: false
repo: https://github.com/imrahnf/sentinelpr
marketplace: https://github.com/marketplace/actions/sentinelpr-code-auditor
version: v1.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/imrahnf/sentinelpr** to version **v1.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentinelpr-code-auditor) to find the latest changes.

## Action Summary

SentinelPR is a GitHub Action that automates semantic code reviews for pull requests using a context-aware Retrieval-Augmented Generation (RAG) architecture and Concrete Syntax Tree (CST) parsing. It enhances traditional code auditing by analyzing modified functions, retrieving relevant code patterns across the project, and ensuring deterministic, hallucination-free suggestions. Designed for high-velocity teams, it reduces noise, improves review accuracy, and optimizes runtime by caching and incrementally processing changes.

## Release notes

Here's a professional release note for your GitHub Release page:

---

## **SentinelPR v1.1.0 - Cache Release** 

### **Overview**
SentinelPR is now production-ready! A deterministic, context-aware code review agent for Python and Java that combines Concrete Syntax Tree (CST) parsing with Retrieval-Augmented Generation (RAG) to deliver high-quality, context-grounded code reviews directly in your PR workflow.

### **Key Features**
- **Compiler-Grade Parsing:** Tree-sitter CST extraction for accurate symbol mapping
- **Semantic Context Awareness:** ChromaDB vector store for intelligent code pattern retrieval
- **Hallucination-Resistant:** Schema Guard validation ensures all suggestions map to actual changed lines
- **Incremental Indexing:** File-level hashing prevents redundant re-parsing
- **GitHub Actions Integration:** Seamless CI/CD workflow with fail-open design
- **Privacy-First:** All processing happens locally; vectors are cached in GitHub Actions

### **Supported Languages**
- Python (`.py`)
- Java (`.java`)

### **Installation**
Add to sentinel.yml:

```yaml
- name: Run SentinelPR
  uses: imrahnf/sentinelpr@v1.0.0
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    gemini_api_key: ${{ secrets.GEMINI_API_KEY }}
```

See the [README](https://github.com/imrahnf/sentinelpr#usage) for full setup instructions.

### **What's Included**
- ✅ CST-based symbol extraction (functions & classes)
- ✅ Semantic RAG pipeline with Google Gemini 1.5 Flash
- ✅ Line-level PR comments with severity tagging
- ✅ Distributed state caching via GitHub Actions
- ✅ Structured output validation

### **Known Limitations**
- ❌ Single-repo scope (no cross-repo indexing)
- ❌ Top-level symbols only (no nested method analysis)
- ❌ Respects free-tier API limits (15 req/min for Gemini)

---

**Built with ❤️ for high-velocity teams. MIT Licensed.**
