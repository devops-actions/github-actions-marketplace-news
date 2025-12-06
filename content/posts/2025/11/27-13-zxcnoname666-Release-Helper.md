---
title: Release Helper - AI-Powered Release Automation
date: 2025-11-27 13:07:30 +00:00
tags:
  - zxcnoname666
  - GitHub Actions
draft: false
repo: https://github.com/zxcnoname666/Release-Helper
marketplace: https://github.com/marketplace/actions/release-helper-ai-powered-release-automation
version: v2.4.0
dependentsNumber: "4"
---


Version updated for **https://github.com/zxcnoname666/Release-Helper** to version **v2.4.0**.
- This action is used across all versions by **4** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/release-helper-ai-powered-release-automation) to find the latest changes.

## Release notes

# 🚀 Release Helper - AI-Powered GitHub Release Automation Action

<div align="center">

![Release Helper Banner](https://img.shields.io/badge/Release_Automation-AI_Powered-blue?style=for-the-badge&logo=github-actions)

**Automated GitHub Release Management | AI Changelog Generator | Smart Version Bumping**

[![GitHub Release](https://img.shields.io/github/v/release/zxcnoname666/release-helper?style=flat-square&logo=github)](https://github.com/zxcnoname666/release-helper/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.6-blue?style=flat-square&logo=typescript)](https://www.typescriptlang.org/)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-Compatible-2088FF?style=flat-square&logo=github-actions)](https://github.com/features/actions)
[![OpenAI](https://img.shields.io/badge/OpenAI-Powered-412991?style=flat-square&logo=openai)](https://openai.com/)

[Quick Start](#-quick-start) • [Features](#-key-features) • [Configuration](#%EF%B8%8F-configuration) • [Examples](#-usage-examples) • [Documentation](#-documentation)

</div>

---

## 📋 Overview

**Release Helper** is an advanced **GitHub Action** that revolutionizes release management through **AI-powered automation**. Eliminate manual changelog writing, automate semantic versioning, and streamline your CI/CD pipeline with intelligent release note generation powered by **OpenAI GPT models**.

Perfect for developers seeking automated release workflows, AI-generated changelogs, and seamless version control integration.

### 🎯 Why Release Helper?

- ⏱️ **Save Hours** - Automate changelog writing and version management
- 🤖 **AI Intelligence** - GPT-powered analysis understands your code changes
- 📈 **Better Documentation** - Generate comprehensive, human-readable release notes
- 🔄 **Zero Config** - Works out of the box with sensible defaults
- 🎨 **Rich Integrations** - Discord notifications, custom formatting, and more

---

## ✨ Key Features

### 🤖 AI-Powered Changelog Generation
Leverage **OpenAI GPT-5** to automatically generate intelligent, context-aware release notes. The AI analyzes commit messages, code diffs, and project context to create comprehensive changelogs that explain what changed and why.

### 📊 Comprehensive Release Statistics
Track detailed metrics for every release:
- **Files Changed** - Total modified files count
- **Code Changes** - Line additions and deletions
- **Contributors** - Active developers in the release
- **Timeline** - Days since last release
- **Commit Analysis** - Type breakdown (features, fixes, chores)

### 🧠 Intelligent Commit Parsing
Advanced **Conventional Commits** parser that:
- Extracts multiple commit types from single commits
- Identifies breaking changes automatically
- Groups related changes intelligently
- Handles complex commit message formats

### 🔧 AI Tools System for Deep Analysis
Provides AI with specialized tools:
- **get_commit_details** - Full commit context with statistics
- **get_commit_diff** - View actual code changes
- **get_changed_files** - Directory-grouped file listings
- **get_commits_by_type** - Filter by conventional commit type
- **analyze_commit_impact** - Assess change scope and impact

### 🎯 Automatic Semantic Versioning (SemVer)
Smart version bumping based on:
- Commit message conventions
- Breaking change detection
- Manual version control via commit tags
- Supports **patch**, **minor**, and **major** releases

### ⚡ Fast & Efficient Build System
- Built with **TypeScript 5.6** for type safety
- **esbuild** compilation (~180ms build time)
- Optimized for GitHub Actions runtime
- Minimal dependencies for fast execution

### 🔔 Rich Discord Integration
Send beautiful release notifications with:
- Embedded release information
- Contributor highlights
- Change summaries
- Direct GitHub release links
- Custom colors and formatting

### 🌍 Multilingual Support
Generate changelogs in any language:
- Support for **English**, **Russian**, **Spanish**, **German**, and more
- AI translates descriptive text naturally
- Preserves technical details (hashes, usernames, URLs)
- Maintains markdown formatting across languages
- Simply set `LANGUAGE` parameter to your preferred locale

### 🔐 Secure & Flexible
- Supports custom OpenAI endpoints
- Optional AI features (works without API key)
- Configurable branch protection
- Draft and pre-release options

---

## 🚀 Quick Start

### Step 1: Add Workflow File

Create `.github/workflows/release.yml`:

```yaml
name: Automated Release

on:
  push:
    branches: [main]

permissions:
  contents: write

jobs:
  release:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0  # Required for changelog generation
          
      - name: Auto Release with AI
        uses: zxcnoname666/release-helper@main
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
```

### Step 2: Trigger Release

Commit with release command:

```bash
git commit -m "feat: add awesome new feature
!release: minor"
git push
```

### Step 3: Enjoy Automated Releases! 🎉

The action will automatically:
1. ✅ Analyze all commits since last release
2. 🤖 Generate AI-powered changelog
3. 📦 Create GitHub release with notes
4. 🏷️ Tag version in git
5. 🔔 Send Discord notification (if configured)

---

## ⚙️ Configuration

### Required Parameters

| Parameter | Description |
|-----------|-------------|
| `GITHUB_TOKEN` | GitHub token for API access (automatic in Actions) |

### AI Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `OPENAI_API_KEY` | - | OpenAI API key for AI changelogs *(optional)* |
| `OPENAI_API_MODEL` | `gpt-4` | Model: `gpt-5`, `gpt-4`, `o3`, or custom |
| `OPENAI_API_BASE_URL` | `https://api.openai.com/v1` | Custom endpoint support |
| `LANGUAGE` | `en` | Changelog language: `en`, `ru`, `es`, `de`, etc. |

### Build & Test Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `BUILD_COMMAND` | - | Pre-release build command *(optional)* |
| `LINT_AND_TESTS_COMMAND` | - | Testing command before release *(optional)* |
| `ASSET_PATTERNS` | - | Glob patterns for release assets |

### Release Configuration

| Parameter | Default | Description |
|-----------|---------|-------------|
| `ALLOWED_BRANCH` | `main` | Branch allowed for releases |
| `DRAFT_RELEASE` | `false` | Create as draft release |
| `PRERELEASE` | `false` | Mark as pre-release |
| `DISCORD_WEBHOOK` | - | Discord webhook URL for notifications |

---

## 📖 Usage Examples

### Basic Usage with AI

```yaml
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
```

### Full-Featured Setup

```yaml
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    OPENAI_API_MODEL: gpt-5
    LANGUAGE: en  # Changelog language (en, ru, es, de, etc.)
    BUILD_COMMAND: "npm run build"
    LINT_AND_TESTS_COMMAND: "npm test && npm run lint"
    ASSET_PATTERNS: "dist/**/*.zip dist/**/*.tar.gz"
    DISCORD_WEBHOOK: ${{ secrets.DISCORD_WEBHOOK }}
```

### Without AI (Traditional Changelog)

```yaml
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    # No OPENAI_API_KEY - uses conventional commits only
```

### Custom OpenAI Endpoint

```yaml
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    OPENAI_API_BASE_URL: "https://api.your-proxy.com/v1"
```

### Multilingual Changelogs

Generate changelogs in different languages:

```yaml
# Russian changelog
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    LANGUAGE: ru

# Spanish changelog
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    LANGUAGE: es

# German changelog
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    LANGUAGE: de
```

> **Note**: Technical details (commit hashes, usernames, URLs) remain in their original form regardless of language.

---

## 🎯 Commit Message Format

### Release Triggering

Add release command to commit message:

```bash
# Patch release (0.0.x) - Bug fixes
git commit -m "fix: resolve memory leak
!release: patch"

# Minor release (0.x.0) - New features
git commit -m "feat: add user authentication
!release: minor"

# Major release (x.0.0) - Breaking changes
git commit -m "feat!: redesign API endpoints
!release: major"
```

### Conventional Commits Support

Follows [Conventional Commits](https://www.conventionalcommits.org/) specification:

| Type | Description | Changelog Section |
|------|-------------|-------------------|
| `feat:` | New features | ✨ Features |
| `fix:` | Bug fixes | 🐛 Bug Fixes |
| `docs:` | Documentation | 📝 Documentation |
| `style:` | Code style | 💄 Styles |
| `refactor:` | Code refactoring | ♻️ Refactoring |
| `perf:` | Performance improvements | ⚡ Performance |
| `test:` | Test updates | ✅ Tests |
| `build:` | Build system | 🏗️ Build |
| `ci:` | CI configuration | 👷 CI |
| `chore:` | Maintenance | 🔧 Chores |

### Multi-Type Commits

Include multiple changes in one commit:

```bash
git commit -m "feat: add OAuth2 login
fix: resolve session timeout issue
docs: update authentication guide
!release: minor"
```

Generates:
- ✨ **Features**: add OAuth2 login
- 🐛 **Bug Fixes**: resolve session timeout issue
- 📝 **Documentation**: update authentication guide

---

## 🤖 AI Tools & Intelligence

The AI has access to specialized tools for comprehensive analysis:

### Available Tools

#### 1. `get_commit_details`
Retrieves comprehensive commit information:
- Full commit message and metadata
- Author and timestamp
- Change statistics (+additions / -deletions)
- Parsed conventional commit types
- Breaking change indicators

#### 2. `get_commit_diff`
Views actual code changes:
- File-by-file diff view
- Automatic truncation for large diffs
- Syntax-aware diff formatting
- Context preservation

#### 3. `get_changed_files`
Lists modified files:
- Grouped by directory structure
- Change type indicators (added/modified/deleted)
- File count statistics
- Path-based organization

#### 4. `get_commits_by_type`
Filters commits by type:
- Group by conventional commit type
- Feature/fix/chore separation
- Breaking change isolation
- Type-specific analysis

#### 5. `analyze_commit_impact`
Assesses change scope:
- Impact level (minor/moderate/major)
- Affected system areas
- Breaking change detection
- Risk assessment

### AI Workflow Example

```
User triggers release → AI analyzes commits
                     ↓
      AI requests: get_commit_details("abc123")
                     ↓
      Returns: { message, stats, types, ... }
                     ↓
      AI requests: get_commit_diff("abc123")
                     ↓
      Returns: { files, additions, deletions }
                     ↓
      AI generates: Intelligent changelog with context
```

This enables:
- ✅ Understanding full context of changes
- ✅ Intelligent grouping of related commits
- ✅ Highlighting important changes
- ✅ Explaining breaking changes with migration notes
- ✅ Generating accurate, helpful release notes

---

## 📋 Generated Changelog Format

### AI-Generated Example

```markdown
## What's Changed

This release introduces OAuth2 authentication and resolves critical performance 
issues with the session management system. Breaking changes require updating 
client configurations.

### ✨ Features
- **auth**: add OAuth2 support with multiple providers [`a1b2c3d`] by @developer
- **api**: implement rate limiting middleware [`e4f5g6h`] by @contributor
- **ui**: redesign login page with modern UI [`i7j8k9l`] by @designer

### 🐛 Bug Fixes
- **core**: fix memory leak in session handler [`m1n2o3p`] by @maintainer
- **api**: resolve timeout issues with large payloads [`q4r5s6t`] by @developer

### 💥 Breaking Changes
- **auth**: OAuth2 migration requires updating client IDs in configuration
- **api**: Rate limiting now requires API keys for all requests

### 📝 Documentation
- **readme**: update authentication setup guide [`u7v8w9x`] by @writer

---

###### 📊 Release Statistics
Files changed: 24 | Additions: 342 | Deletions: 156 | Days since last release: 7
Contributors: 4 | Commits: 15

**Full changes**: https://github.com/owner/repo/compare/1.0.0...1.1.0
```

---

## 🔔 Discord Integration

Rich embeds with release information:

```yaml
- uses: zxcnoname666/release-helper@main
  with:
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    OPENAI_API_KEY: ${{ secrets.OPENAI_API_KEY }}
    DISCORD_WEBHOOK: ${{ secrets.DISCORD_WEBHOOK }}
```

Sends notifications with:
- 🎉 Release version and type
- 📊 Commit count and contributors
- 📝 Files changed summary
- ⚠️ Breaking change warnings
- 🔗 Direct link to GitHub release

---

## 🏗️ Project Architecture

```
src/
├── index.ts          # Main entry point and orchestration
├── types.ts          # TypeScript type definitions
├── version.ts        # Version management and SemVer operations
├── git.ts            # Git operations (commits, diffs, stats)
├── commits.ts        # Commit parsing and conventional commits
├── github.ts         # GitHub API integration
├── ai.ts             # AI integration and changelog generation
├── ai-tools.ts       # Tool definitions for AI context
├── prompts.ts        # AI system and user prompts
└── utils.ts          # Utility functions
```

### Technology Stack

- **Runtime**: Node.js 20+ (ES Modules)
- **Language**: TypeScript 5.6 (strict mode)
- **Build**: esbuild (ultra-fast ~180ms)
- **Commits**: Conventional Commits parser
- **AI**: OpenAI API (GPT-5 support), Gemini, Claude
- **CI/CD**: GitHub Actions native

---

## 💻 Development

### Prerequisites

- Node.js 20+ (LTS recommended)
- pnpm package manager
- Git version control

### Setup

```bash
# Clone repository
git clone https://github.com/zxcnoname666/release-helper.git
cd release-helper

# Install dependencies
pnpm install

# Build project
pnpm run build

# Type checking
pnpm run type-check

# Watch mode (development)
pnpm run dev
```

### Build Output

```bash
dist/
└── index.js    # Bundled action (~180ms build time)
```

---

## 🔗 Related Projects

| Project | Description |
|---------|-------------|
| [AI Code Reviewer](https://github.com/zxcnoname666/ai-code-reviewer) | AI-powered code review automation |

---

## 📄 License

This project is licensed under the **MIT License** - see [LICENSE](LICENSE) file for details.

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing`)
3. Commit changes (`git commit -m 'feat: add amazing feature'`)
4. Push to branch (`git push origin feature/amazing`)
5. Open Pull Request

---

## 📞 Support

- 📫 Issues: [GitHub Issues](https://github.com/zxcnoname666/release-helper/issues)
- 💬 Discussions: [GitHub Discussions](https://github.com/zxcnoname666/release-helper/discussions)
- ⭐ Star this repo if it helps you!

---

## 🏷️ Keywords

`github-actions` `github-action` `release-automation` `ai-changelog` `changelog-generator` `semantic-versioning` `semver` `openai` `gpt-5` `conventional-commits` `ci-cd` `devops` `automation` `typescript` `version-management` `release-notes` `ai-powered` `commit-parser` `discord-integration` `developer-tools`

---

<div align="center">

**Made with ❤️ by [zxcnoname666](https://github.com/zxcnoname666)**

⭐ Star this repo to support the project!

[Report Bug](https://github.com/zxcnoname666/release-helper/issues) • [Request Feature](https://github.com/zxcnoname666/release-helper/issues) • [Documentation](https://github.com/zxcnoname666/release-helper#readme)

---

<img src="https://count.getloli.com/get/@release-helper">
</div>

