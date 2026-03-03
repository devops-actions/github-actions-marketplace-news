---
title: Git-Iris Action
date: 2026-03-03 05:51:52 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.0.6
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.0.6**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is an intelligent Git companion that automates tasks such as generating context-aware commit messages, performing in-depth code reviews, creating changelogs, and drafting pull request descriptions and release notes. By deeply analyzing your codebase and its changes, it provides precise, high-quality Git artifacts, saving time and ensuring best practices. Its additional features include a terminal interface for interactive assistance in refining commits and understanding code changes.

## Release notes

# Release Notes v2.0.6

**Released:** 2026-03-02

This release introduces **Opaline theme library integration**, strengthens **API key security**, and modernizes the CI/CD pipeline with **shared workflows and OIDC trusted publishing**. The theme engine extraction removes ~4,000 lines while adding type-safe token constants.

## ✨ Highlights

### 🎨 Opaline Theme Library Migration
Replaced the custom 4,262-line theme engine in `src/theme/` with the standalone **Opaline** library (v0.2.0). Git-Iris becomes the first consumer of this extracted theming system, gaining compile-time token constants via `opaline::names::{tokens, styles, gradients}` that provide autocomplete and typo prevention. All 36 theme files removed; net **-3,595 lines** of code.

### 🔒 API Key Security Hardening
API key handling now validates format prefixes (`sk-` or `sk-proj-` for OpenAI, `sk-ant-` for Anthropic) and minimum lengths before making calls. Error messages are sanitized to prevent accidental credential exposure in logs or user-facing output. The `ApiKeySource` enum tracks where keys originate (config, environment, or client default) for improved observability.

### 🌐 Google Gemini Provider for Parallel Analyze
The `parallel_analyze` subagent tool now supports Google/Gemini alongside OpenAI and Anthropic. Uses the same API key resolution pattern with proper error sanitization. Silent fallback to OpenAI removed—failures now return clear provider-specific error messages.

### 🔧 CI/CD Modernization with Shared Workflows
Migrated CI/CD from inline jobs to `hyperb1iss/shared-workflows`, reducing workflow configuration from **887 to 654 lines**. Enabled OIDC trusted publishing for crates.io (no more stored tokens). Updated action versions: checkout v4→v6, Node 20→24, pnpm 9→10, docker/build-push-action v5→v6.

## 🤖 Provider & Agent Improvements

- **OpenAI project key support**: Added `sk-proj-` prefix to valid OpenAI API key patterns via new `api_key_prefixes()` method
- **Config-based API keys**: Provider builders (`openai_builder`, `anthropic_builder`, `gemini_builder`) now accept optional API keys from config, falling back to environment variables when not provided
- **Consolidated key resolution**: Made `resolve_api_key()` and `ApiKeySource` public for reuse across the codebase, ensuring consistent resolution order (config → env → client default)
- **Better error handling**: Replaced panics with context-aware error returns using `anyhow` in builder functions across `provider.rs`, `iris.rs`, and `status_messages.rs`

## ⬆️ Dependencies

- **ratatui** 0.29 → 0.30
- **crossterm** 0.28 → 0.29
- **tui-textarea** replaced with **ratatui-textarea** 0.8.0
- **opaline** 0.2.0 added with features: `ratatui`, `gradients`, `global-state`, `builtin-themes`, `discovery`, `cli`

## ♻️ Code Quality

- Replaced `unwrap()` with `expect("reason")` across test files for clearer failure diagnostics
- Applied clippy recommendations: `sort_by_key` for clearer sorting, `is_ok_and()` for predicate checks, `checked_div().unwrap_or()` for scroll calculations
- Replaced raw string literals `r#"..."#` with `r"..."` where single-character escapes suffice
- Used `std::time::Duration::from_secs()` instead of `from_millis(2000)`
- Reformatted long function signatures for readability

## 🔧 CI/CD Changes

- Replaced `build-and-test` job with `rust-ci.yml` shared workflow
- Replaced `docker-publish` job with `docker-publish.yml` shared workflow  
- Replaced `cargo-publish` with `rust-publish.yml` using OIDC trusted publishing
- Simplified `docs.yml` to call `docs-deploy.yml` shared workflow
- Added artifact download pattern filter (`git-iris-*`) in release job to avoid pulling unrelated artifacts

## 📦 Installation & Packaging

- **AUR package**: New `update-aur` job automatically publishes to Arch User Repository on release tags
- **Homebrew tap**: Automated formula updates continue via `update-homebrew` job
- Binary artifact naming standardized to `git-iris-{platform}` pattern

## Upgrade Notes

- **Theme API changes**: Replace `.to_ratatui()` calls with `.into()` or `Color::from()`, and `.to_rgb()` with `.to_rgb_tuple()`. String literals for tokens should migrate to `opaline::names` constants.
- **API key behavior**: Empty config strings are now treated as "not configured" and fall back to environment variables—this matches user expectations but may affect edge cases.
- **Provider errors**: The `parallel_analyze` tool no longer silently falls back to OpenAI when your configured provider fails. Check your API key and network connectivity if you see new errors.

