---
title: Git-Iris Action
date: 2026-01-09 13:22:53 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.0.4
dependentsNumber: "0"
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.0.4**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is a GitHub Action and intelligent agent designed to automate and enhance tasks like writing context-aware commit messages, performing detailed code reviews, generating changelogs, and crafting release notes. By analyzing your codebase iteratively and understanding file relationships, it provides accurate and meaningful Git artifacts, saving time and improving collaboration. Its key capabilities include semantic analysis for pull requests, changelog categorization, and an interactive terminal interface for refining and explaining changes.

## Release notes

# Release Notes v2.0.4

**Released:** 2026-01-09

This release focuses on **credential management** and **provider flexibility**. API keys can now be stored in git-iris configuration instead of relying solely on environment variables, and the parallel analysis tool gains full Google/Gemini support with improved error handling.

## 🌟 Highlights

### 🔐 Config-Based API Key Resolution
API keys can now be stored directly in your `.irisconfig` file instead of requiring environment variables. The resolution order is: config → environment variable → client default. This improves portability for containerized deployments and IDE-integrated workflows.

### ✨ Google/Gemini Support for Parallel Analysis
The `parallel_analyze` tool now supports Google/Gemini as a provider alongside OpenAI and Anthropic. All three providers use consistent API key resolution and error handling patterns.

### 🔒 API Key Format Validation
New validation catches common API key misconfigurations early. The system checks expected prefixes (`sk-` or `sk-proj-` for OpenAI, `sk-ant-` for Anthropic) and minimum length requirements before making API calls.

### 🛡️ Sanitized Error Messages
Error messages during authentication failures no longer risk exposing API key material. Client creation errors return generic messages without revealing key prefixes or partial credentials.

## 🔧 Provider Infrastructure

- Added `resolve_api_key()` function in `src/agents/provider.rs` with `ApiKeySource` enum to track where keys originate (Config, Environment, ClientDefault)
- Provider builder functions (`openai_builder`, `anthropic_builder`, `gemini_builder`) now accept optional `api_key` parameter and return `Result`
- Added `validate_api_key_format()` method to `Provider` for format validation with provider-specific prefix checking
- OpenAI now accepts both `sk-` and `sk-proj-` prefixes, supporting project-scoped API keys
- Added `api_key_if_set()` helper to `ProviderConfig` that returns `None` for empty strings

## 🤖 Agent Framework

- `IrisAgent` gains `get_api_key()` method to retrieve provider API keys from stored config
- `IrisAgentService` exposes `api_key()` accessor for config-based key retrieval
- `StatusMessageGenerator` constructor now accepts optional API key parameter
- All agent builder paths thread API keys through to subagents and debug agents

## ⚡ Parallel Analysis

- `SubagentRunner` enum extended with `Gemini` variant for Google provider support
- Added `resolve_openai_client()`, `resolve_anthropic_client()`, and `resolve_gemini_client()` helper methods with consistent resolution logic
- Removed silent fallback to OpenAI when requested provider fails — users now receive clear error messages indicating which provider failed
- `ParallelAnalyze::new()` and `with_timeout()` accept explicit `api_key` parameter

## 🐛 Fixes

- Fixed error handling in LLM builder functions — replaced panics with context-aware error returns using `anyhow`
- `src/studio/app/mod.rs` now passes API key from agent config to `StatusMessageGenerator`

## Breaking Changes

- **Provider builder return type changed** — `openai_builder()`, `anthropic_builder()`, and `gemini_builder()` now return `Result<...Builder>` instead of the builder directly. Callers must handle the error case with `?` or explicit error handling.

- **ParallelAnalyze constructor signature changed** — `ParallelAnalyze::new()` and `with_timeout()` now require an additional `api_key: Option<&str>` parameter.

- **No silent provider fallback** — Previously, if the configured provider (e.g., Anthropic) failed to initialize, the system would silently fall back to OpenAI. This release removes that behavior. If your configured provider fails, you'll receive an explicit error message.

## Upgrade Notes

- If you prefer config-based API key storage, add your key to `.irisconfig`:
  ```bash
  git-iris config --api-key YOUR_API_KEY
  ```
  The key will be stored under the current provider's configuration.

- Environment variables continue to work as before. Config keys take precedence when both are set.

- If you were relying on silent fallback to OpenAI when another provider failed, ensure your provider credentials are valid or explicitly configure OpenAI as your provider.

