---
title: Aptu Triage
date: 2025-12-25 05:24:59 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.1
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.1**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered command-line tool and GitHub Action designed to streamline open-source issue triage by automating tasks such as identifying "good first issues," providing AI-generated summaries, suggesting labels, and offering contributor guidance. It simplifies navigating and managing open-source contributions by integrating with GitHub, detecting previously triaged issues, and supporting flexible issue references with multiple output formats. By automating repetitive triage tasks, Aptu helps contributors focus on meaningful problem-solving and collaboration.

## Release notes

## Multi-Provider AI Architecture

This release introduces a unified AI provider system with support for 4 providers and configurable parameters.

### Highlights

- **Multi-Provider AI** - Choose from OpenRouter, Google AI Studio (Gemini), Groq, or Cerebras
- **Configurable AI Parameters** - Set `max_tokens` and `temperature` in config
- **Unified AI Client** - Single `AiClient` with provider registry replaces 4 separate clients
- **Renderable Trait** - Unified output formatting for all command responses

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
```

**Cargo**
```bash
cargo install aptu
```

**Cargo-binstall**
```bash
cargo binstall aptu
```

---

## What's Changed

### Features
- **Google AI Studio (Gemini)** - Second AI provider option (#243)
- **Groq and Cerebras** - Two additional free-tier AI providers (#256)
- **Configurable AI** - `max_tokens` and `temperature` now in AiConfig (#248)

### Fixes
- **Force flag with --since** - Now includes already-labeled issues (#242)
- **Gemini model name** - Corrected typo (#245)
- **Max tokens** - Increased from 1024 to 2048 (#246)

### Architecture
- **Unified AiClient** - Consolidated 4 provider clients into generic client (#272)
- **AiProvider trait** - Shared logic extraction (#244)
- **Provider registry** - Dynamic provider lookup (#264)
- **Renderable trait** - Unified output formatting (#273, #275)
- **TokenProvider simplification** - Reduced from 5 methods to 2 (#269)
- **Remote curated repos** - Load from remote config (#253)

### Documentation
- **README restructure** - Simplified badges, extracted AI configuration (#267, #268)
- **Free model examples** - GitHub Action examples use free models (#270)

---

## Contributors

- @clouatre

**Full Changelog**: https://github.com/clouatre-labs/aptu/compare/v0.1.4...v0.2.1
