---
title: VulnHawk Security Scan
date: 2026-04-10 06:33:14 +00:00
tags:
  - momenbasel
  - GitHub Actions
draft: false
repo: https://github.com/momenbasel/vulnhawk
marketplace: https://github.com/marketplace/actions/vulnhawk-security-scan
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/momenbasel/vulnhawk** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vulnhawk-security-scan) to find the latest changes.

## Action Summary

VulnHawk is an AI-powered static application security testing (SAST) tool designed to identify complex and context-specific vulnerabilities that traditional tools like Semgrep and CodeQL often miss. It uses AI reasoning to analyze code alongside related contextual code, enabling it to detect business logic flaws, cross-file issues, and security gaps that lack explicit patterns. With zero-config setup, support for multiple backends, and seamless CI/CD integration, it automates advanced security scanning to enhance codebase security and reduce manual effort.

## What's Changed

## What's New

### Free backends - no API key needed

VulnHawk now supports **Claude Code CLI** and **OpenAI Codex CLI** as backends. If you have an existing Claude Code or ChatGPT subscription, you can run VulnHawk with **zero additional API costs**.

```bash
vulnhawk scan ./src -b claude-code    # Free for Claude Code Max/Team
vulnhawk scan ./src -b codex          # Free for ChatGPT Pro/Plus
```

### PHP and Ruby language support

First-class support for PHP and Ruby, including framework-aware code chunking:

- **PHP**: Laravel `Route::` detection, class/trait/interface splitting, `use`/`require`/`namespace` import extraction
- **Ruby**: Rails route detection (`get`, `post`, `resources`), class/module splitting, `require`/`include` extraction

### SARIF input - chain with other SAST tools

Feed results from Semgrep, CodeQL, or any SARIF-producing tool into VulnHawk. It uses those findings as additional context to validate, expand, and build multi-step attack chains.

```bash
semgrep --config auto ./src -o semgrep.sarif --sarif
vulnhawk scan ./src --sarif-input semgrep.sarif
```

### Updated GitHub Action

- All 5 backends available: `claude`, `claude-code`, `openai`, `codex`, `ollama`
- New `sarif-input` parameter for tool chaining in CI
- New `claude-code-oauth-token` parameter
- Auto-installs Claude Code / Codex CLI when selected
- Recommended workflow runs on push to main AND every PR

### Other improvements

- Professional README with SAST comparison table, cost breakdown, and collapsible FAQ
- GitHub Sponsors support
- Source-available license (free for all teams/startups from official channels)

### Supported languages

Python, JavaScript, TypeScript, Go, Java, PHP, Ruby

### Quick start

```bash
pip install vulnhawk
vulnhawk scan ./src -b claude-code    # Free
```

### GitHub Action

```yaml
- uses: momenbasel/vulnhawk@v0.2.0
  with:
    target: '.'
    backend: 'claude-code'
    claude-code-oauth-token: ${{ secrets.CLAUDE_CODE_OAUTH_TOKEN }}
```

**Full Changelog**: https://github.com/momenbasel/vulnhawk/compare/v0.1.0...v0.2.0
