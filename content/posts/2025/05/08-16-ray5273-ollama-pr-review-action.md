---
title: Ollama Code Review
date: 2025-05-08 16:59:03 +00:00
tags:
  - ray5273
  - GitHub Actions
draft: false
repo: https://github.com/ray5273/ollama-pr-review-action
marketplace: https://github.com/marketplace/actions/ollama-code-review
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/ray5273/ollama-pr-review-action** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ollama-code-review) to find the latest changes.

## Release notes

# Ollama GitHub Code Review Action v1.0.0

## 🚀 Initial Release

This GitHub Action uses Ollama to automatically perform code reviews on pull requests with multi-language support.

### ✨ Features

- **Automated code reviews** using Ollama models
- **Multi-language support** with dedicated translation models
- **Technical term preservation** during translation
- **Detailed analysis** with file-by-file review comments
- **Risk assessment** on 1-5 scale

### 🧠 Included Models

- **Default Review Model**: `qwen2.5-coder:32b`
- **Default Translation Model**: `exaone3.5:32b`
- Support for alternative lightweight models

### 🔧 Hardware Requirements

- **Recommended**: NVIDIA GPU with 40GB+ VRAM
- **Alternative**: Lightweight setup using 7-8B parameter models

### 📋 Usage Examples

The release includes examples for:
- Single GPU server setup (recommended)
- Split setup with separate Ollama server

### 📦 Dependencies

- Python 3.8+
- Required packages: requests, pydantic

### 🔍 Next Steps

- See README.md for detailed configuration options
- Check hardware requirements before deployment
