---
title: CodeFox AI Review
date: 2026-03-21 13:31:01 +00:00
tags:
  - codefox-lab
  - GitHub Actions
draft: false
repo: https://github.com/codefox-lab/CodeFox-CLI
marketplace: https://github.com/marketplace/actions/codefox-ai-review
version: v0.4.5-alpha
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/codefox-lab/CodeFox-CLI** to version **v0.4.5-alpha**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/codefox-ai-review) to find the latest changes.

## Action Summary

**CodeFox-CLI** is a command-line AI tool designed for automated code reviews of git changes, including diffs and pull requests, within terminal and CI/CD workflows. It streamlines the code review process by analyzing changes in the context of the overall codebase and providing feedback tailored to security, performance, or style. Supporting both local (via Ollama) and cloud-based models, CodeFox enhances developer workflows with flexible, privacy-conscious, and configurable review capabilities.

## Release notes

### ✨ New features

* Added new `index` command
  Enables building and managing project index for improved analysis

* Extended `init` command
  Now supports:

  * token setup during initialization
  * AI provider selection

* Added `max_rag_matching_chunks` parameter
  Allows fine-tuning the number of matched chunks in RAG

---

### ⚡ Improvements

* Optimized RAG performance
  Faster and more relevant context retrieval

* Added caching for GitHub Actions
  Reduces execution time and repeated computations

---

### 🔗 Integrations

* Added GitLab CI/CD integration
  CodeFox can now run in GitLab pipelines and post MR reviews

---

### 📦 Installation

```bash
pip install codefox
```

or

```bash
uv tool install codefox
```

Check the installed version:

```bash
codefox version
```

# Requirements

* **Python 3.11+**

Supported providers:

* Gemini
* Ollama
* OpenRouter

Configuration guide is available in the WIKI:
https://github.com/codefox-lab/CodeFox-CLI/wiki

