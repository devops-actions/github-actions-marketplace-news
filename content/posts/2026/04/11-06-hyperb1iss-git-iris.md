---
title: Git-Iris Action
date: 2026-04-11 06:27:03 +00:00
tags:
  - hyperb1iss
  - GitHub Actions
draft: false
repo: https://github.com/hyperb1iss/git-iris
marketplace: https://github.com/marketplace/actions/git-iris-action
version: v2.0.8
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/hyperb1iss/git-iris** to version **v2.0.8**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/git-iris-action) to find the latest changes.

## Action Summary

Git-Iris is an intelligent GitHub Action that automates key version control tasks by analyzing your codebase with contextual understanding. It generates context-aware commit messages, performs in-depth code reviews, creates detailed pull request descriptions, and produces changelogs and release notes with intelligent categorization. This action streamlines Git workflows, reducing manual effort while ensuring high-quality and meaningful Git artifacts.

## What's Changed

# Release Notes 2.0.8

**Released:** 2026-04-10

This release focuses on **security hardening**, **developer experience**, and **intelligent defaults**. Git-Iris now automatically detects your team's commit style, respects XDG config paths, and provides a comprehensive config display showing all providers with API key status. The Studio TUI gains smarter branch handling and history navigation.

## 🌟 Highlights

### Automatic Commit Style Detection
Iris now analyzes your repository's commit history to detect whether your team uses **gitmoji** or **conventional commits** — and matches that style automatically. No configuration needed. A repository with emoji-prefixed commits will get emoji suggestions; one with `feat:`/`fix:` prefixes will get conventional format.

### Git Hook Integration
New `git-iris hook install` and `git-iris hook uninstall` commands let you set up a `prepare-commit-msg` hook that generates AI commit messages automatically when you run `git commit`. The hook respects `core.hooksPath` and handles worktrees correctly.

### XDG Config Path Support
Configuration now follows XDG conventions across platforms. On macOS, new installs use `~/.config/git-iris` (matching `gh`, `neovim`, `bat`, and other modern CLI tools). Existing `~/Library/Application Support/git-iris` configs continue to work — migration is automatic.

### Complete Config Display Overhaul
The `git-iris config` command now shows **all providers** with resolved defaults, context window sizes, and API key status. Keys show masked values (`sk-••••xxxx`) or indicate missing keys with the environment variable to set. Format validation warnings appear inline.

### Compact Project Context
The `project_docs(doc_type="context")` tool now returns a **focused snapshot** of README and agent instructions instead of full documents. Sections are ranked by relevance and trimmed to fit the context budget — giving Iris the right framing without token bloat.

## 🛡️ Security

- **API key redaction** — Keys are now masked in debug logs and `ProviderConfig` debug output; never logged in plaintext
- **Config file permissions** — Personal config files are written with `0o600` permissions on Unix via atomic temp-file rename
- **Symlink rejection** — Hook install/uninstall refuses to write through symlinks to prevent redirect attacks
- **File size guards** — `file_read` tool enforces size limits to prevent context overflow attacks
- **Regex input escaping** — User-provided patterns are escaped before compilation to prevent ReDoS

## ✨ Features

- **Hook commands** — `git-iris hook install [--force]` and `git-iris hook uninstall` manage the `prepare-commit-msg` integration
- **Gemini alias** — `gemini` is now recognized as an alias for `google` provider (like `claude` → `anthropic`)
- **Theme display** — Config output shows the active theme name in the global section
- **Justfile** — New `justfile` provides task-runner commands: `just check`, `just test`, `just studio`, `just docs-dev`

## 🤖 Agent & Provider Updates

- **Default models updated** — OpenAI defaults to `gpt-5.4` / `gpt-5.4-mini`; Anthropic to `claude-opus-4-6`
- **rig-core 0.33** — Updated to latest Rig framework release
- **Commit style prompt** — Style detection moved from Rust regex to agent prompt logic for better accuracy
- **Capability prompts** — All TOML prompts aligned with actual tool definitions and behaviors

## 🖥️ Studio TUI

- **Smart branch defaults** — PR and Review modes now default `base_branch` / `from_ref` to the repository's primary branch (from `init.defaultBranch` or remote HEAD)
- **Primary branch detection** — Mode suggestions use actual default branch instead of hardcoded `main`/`master`
- **Explore history context** — Context panel respects `show_global_log` toggle; Enter copies a `git show` command scoped to the current file
- **Editor hint** — Pressing `o` in code view copies a `$VISUAL`/`$EDITOR` command with line number (prefers `VISUAL` over `EDITOR`)
- **Streaming panel fix** — Structured panel content now clears correctly between regenerations
- **Shortcut hardening** — Keyboard handling in commit and global modes fixed for edge cases

## 📝 Documentation

- **Prose cleanup** — All documentation files reformatted with consistent style and clearer language
- **OpenAI reasoning** — New guidance on reasoning profiles and `max_completion_tokens` parameter
- **Studio architecture** — Reducer and extension guides aligned with actual implementation
- **Development workflow** — Contributing docs updated to use `just` task runner

## ♻️ Refactoring

- **Theme derivation** — Iris-specific styles now derived locally in `src/theme.rs` instead of global state
- **Static strings** — Streaming builder deduplication and static string optimizations
- **Task spawner cleanup** — Deduplicated async spawners and data loaders in Studio
- **Clippy pedantic** — Full pedantic lint pass; hundreds of `#[must_use]`, doc comments, and code clarity fixes
- **Gitmoji cleanup** — Removed unused `apply_gitmoji` and `process_commit_message` functions
- **log → tracing** — Migrated from `log` crate to `tracing` for structured diagnostics

## 🐛 Bug Fixes

- **JSON extraction** — Fixed false positives from template expressions like `{{variable}}`
- **Companion session** — Branch memory and session state now stay consistent across restarts
- **Comparison defaults** — Range comparisons resolve base refs from the repository, not hardcoded values
- **Project config overlay** — Only explicitly-set fields in `.irisconfig` override personal config
- **Provider parity** — Agent builders respect provider-specific configuration consistently

## ✅ Test Coverage

- **Commit style detection** — Integration tests verify gitmoji vs conventional history produces matching output
- **Config path resolution** — Unit tests for XDG, legacy macOS, and fallback path logic
- **Studio handlers** — New test coverage for commit, explore, and global key handlers
- **Documentation drift** — Tests verify prompt guidance matches actual tool behavior

## 🔧 Infrastructure

- **GitHub Actions** — AUR deploy action bumped to v4.1.2 with ref substitution fix
- **Docker entrypoint** — Hardened with proper signal handling and fast-model configuration
- **Feature flags** — Trimmed unused feature flags from dependencies

## Upgrade Notes

1. **Config location may change** — On macOS, new installs use `~/.config/git-iris`. Existing configs at `~/Library/Application Support/git-iris` continue to work.

2. **Gemini users** — The `gemini` provider name is now an alias for `google`. Existing `[providers.gemini]` config sections will be migrated to `[providers.google]` automatically.

3. **Hook installation** — If you want AI commit messages on every `git commit`, run:
   ```bash
   git-iris hook install
   ```

4. **Justfile available** — Development workflows now use `just`. Install with `cargo install just` or your package manager, then run `just --list` for available tasks.

