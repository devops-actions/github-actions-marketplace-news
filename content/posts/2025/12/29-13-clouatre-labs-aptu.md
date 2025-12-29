---
title: Aptu Triage
date: 2025-12-29 13:12:53 +00:00
tags:
  - clouatre-labs
  - GitHub Actions
draft: false
repo: https://github.com/clouatre-labs/aptu
marketplace: https://github.com/marketplace/actions/aptu-triage
version: v0.2.10
dependentsNumber: "0"
---


Version updated for **https://github.com/clouatre-labs/aptu** to version **v0.2.10**.
- This action is used across all versions by **0** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aptu-triage) to find the latest changes.

## Action Summary

Aptu is an AI-powered triage utility designed for automating issue and pull request management in open-source projects. It leverages efficient AI models to summarize issues, suggest labels, generate clarifying questions, review pull requests, and curate release notes. The GitHub Action feature streamlines workflows by auto-triaging new issues with labels and comments, helping maintainers manage repositories more effectively.

## Release notes

## Enhanced AI Reviews and Robust Release Workflows

This release introduces AI-powered pull request reviews and significantly improves the reliability of AI interactions. It also optimizes the release pipeline with enhanced security and faster publishing workflows.

### Highlights

- **AI-powered PR Reviews** - Automated code review comments integrated directly into pull requests (#479)
- **Improved AI Reliability** - Enhanced handling of truncated responses and context-aware error reporting (#481, #480)
- **Secure Release Pipeline** - Mandatory tag signing and parallelized publishing for faster releases (#473, #474)

---

## Installation

**Homebrew (macOS/Linux)**
```bash
brew install clouatre-labs/tap/aptu
```

**Snap (Linux)**
```bash
snap install aptu
```

**Cargo**
```bash
cargo install aptu-cli
```

**Cargo-binstall**
```bash
cargo binstall aptu-cli
```

---

## What's Changed

### Features
- **AI-powered PR review comments** - Integrated automated review feedback into the GitHub Action (#479)

### Fixes
- **Truncated response handling** - Improved graceful management of AI responses that exceed token limits (#481)
- **Repository references** - Corrected project-aptu links to point to the public repository URL (#472)
- **Release notes generation** - Fixed issues handling annotated or signed tags during note generation (#476)
- **CI tag verification** - Use GitHub API to verify signed tags in release workflow (#486)

### Improvements
- **Increased token limit** - Raised the default max_tokens to 4096 for more detailed AI responses (#485)
- **Professional branding** - Renamed the AI Review header to Aptu Review (#484)
- **Contextual error hints** - Included provider data in AI errors to provide better troubleshooting context (#480)
- **Rate limit mitigation** - Transitioned to GitHub API for fetching releases to avoid common rate limits (#475)

### Documentation
- **Feature list update** - Included the Release Notes feature in the aptu-core README (#483)

### Maintenance
- **Parallel publishing** - Optimized CI by parallelizing snap and crates.io publishing tasks (#474)
- **Tag verification** - Added a gate job to enforce signed tags before release execution (#473)

---

## Contributors

- @clouatre

