---
title: EOL Check
date: 2025-12-05 13:13:02 +00:00
tags:
  - abhishekpanda0620
  - GitHub Actions
draft: false
repo: https://github.com/abhishekpanda0620/eol-check
marketplace: https://github.com/marketplace/actions/eol-check
version: v1.5.0
dependentsNumber: "?"
---


Version updated for **https://github.com/abhishekpanda0620/eol-check** to version **v1.5.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/eol-check) to find the latest changes.

## Release notes

## 🚀 Release v1.5.0 - AI/ML Model EOL Tracking

### ✨ New Features

#### AI/ML Models Provider
Track deprecation and EOL for generative AI models from major providers:

**Supported Providers (50+ models):**
- **OpenAI**: GPT-3.5-turbo, GPT-4, GPT-4o, GPT-5, o1/o3, DALL-E
- **Anthropic**: Claude 1-4, Claude 3.5/4.5 Sonnet/Opus/Haiku
- **Google**: PaLM 2, Gemini 1.0/1.5/2.0/2.5/3.0 Pro/Flash
- **Meta**: Llama 2, 3, 3.1, 3.2, 3.3, 4
- **Mistral AI**: Mistral 7B, Mixtral, Mistral Large/Small, Codestral, Pixtral
- **Cohere**: Command, Command-R, Command-A

#### Key Capabilities
- 🔍 **Automatic SDK Detection**: Detects AI SDKs in `package.json`, `requirements.txt`, etc.
- 📝 **Code Scanning**: Scans source files for model references
- 🕷️ **Web Crawlers**: Fetches live deprecation data from AWS Bedrock and Google AI
- 🔎 **Query Support**: `eol-check query openai gpt-4`, `eol-check query anthropic claude-3-opus`

### 📚 Documentation
- Updated roadmap with v1.4-v1.9 milestones and v2.0 planning
- Clarified cloud service data coverage in endoflife.date

### 🔒 Security
- Fixed CodeQL alert for incomplete HTML sanitization in web crawlers

### 📦 Installation
```bash
npm install -g eol-check@1.5.0
```

**Full Changelog**: https://github.com/abhishekpanda0620/eol-check/compare/v1.4.3...v1.5.0
