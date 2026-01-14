---
title: Setup Salesforce CLI
date: 2026-01-14 06:00:48 +00:00
tags:
  - rdbumstead
  - GitHub Actions
draft: false
repo: https://github.com/rdbumstead/setup-salesforce-action
marketplace: https://github.com/marketplace/actions/setup-salesforce-cli
version: v1.0.0
dependentsNumber: "1"
---


Version updated for **https://github.com/rdbumstead/setup-salesforce-action** to version **v1.0.0**.
- This action is used across all versions by **1** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-salesforce-cli) to find the latest changes.

## Action Summary

The "Setup Salesforce CLI Action" is a GitHub Action designed to automate the setup of the Salesforce CLI with support for JWT-based authentication. It streamlines the process of configuring a Salesforce development environment by offering fast, lightweight, and customizable installation options. Key features include intelligent caching, optional integration with development tools (e.g., Prettier, ESLint, LWC Jest), and support for additional plugins like delta deployments and code analysis, making it ideal for both minimal and full-stack Salesforce development workflows.

## Release notes

## 🚀 Initial Release

Fast, flexible, and production-ready Salesforce CLI setup with JWT authentication and optional tooling.

### ✨ Features

- **Lightning Fast Setup** - 20-45 seconds with intelligent caching (vs 2-3 min without)
- **Secure JWT Authentication** - Non-interactive, certificate-based authentication
- **Fully Optional Plugins** - Install only what you need (delta, scanner, prettier, eslint, lwc-jest)
- **Smart Caching** - Automatic CLI and plugin caching for 3-5x speedup
- **Zero Configuration** - Works with minimal inputs, scales to full-stack development
- **Dev Hub Support** - Set as default Dev Hub with `is_dev_hub: 'true'`
- **Skip Auth Option** - CLI-only installation for custom authentication flows

### 📦 What's Included

**Core:**
- Salesforce CLI installation
- JWT authentication with automatic key cleanup
- Node.js version control
- Intelligent caching system

**Optional Plugins:**
- `sfdx-git-delta` - Delta deployments
- `@salesforce/plugin-code-analyzer` - Code security scanning

**Optional Dev Tools:**
- Prettier with Salesforce plugins
- ESLint with LWC plugins
- sfdx-lwc-jest for LWC unit testing

### 🎯 Quick Start
```yaml
- name: Setup Salesforce
  uses: rdbumstead/setup-salesforce-action@v1
  with:
    jwt_key: ${{ secrets.SFDX_JWT_KEY }}
    client_id: ${{ secrets.SFDX_CLIENT_ID }}
    username: ${{ vars.SFDX_USERNAME }}
```

### 📚 Documentation

See the [README](https://github.com/rdbumstead/setup-salesforce-action#readme) for:
- Complete setup guide
- Multiple use case examples
- Performance benchmarks
- Troubleshooting tips

### 🙏 Feedback Welcome

This is the initial release! Please report bugs, request features, or share feedback via [Issues](https://github.com/rdbumstead/setup-salesforce-action/issues).
