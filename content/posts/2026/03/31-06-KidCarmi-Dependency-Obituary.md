---
title: Dependency Obituary
date: 2026-03-31 06:13:50 +00:00
tags:
  - KidCarmi
  - GitHub Actions
draft: false
repo: https://github.com/KidCarmi/Dependency-Obituary
marketplace: https://github.com/marketplace/actions/dependency-obituary
version: v0.4.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/KidCarmi/Dependency-Obituary** to version **v0.4.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/dependency-obituary) to find the latest changes.

## Action Summary

Dependency Obituary is a GitHub Action and tool that evaluates the health and sustainability of project dependencies by analyzing public signals such as update frequency, issue resolution, contributor activity, and security vulnerabilities. It automates the identification of abandoned or at-risk dependencies to help developers proactively plan migrations and maintain secure, stable projects. Key capabilities include generating health scores, risk levels, and actionable insights for dependencies across multiple ecosystems, ensuring informed decision-making without manual audits.

## What's Changed

<img width="2848" height="1240" alt="og-image" src="https://github.com/user-attachments/assets/9391b977-f85f-45f7-b859-5c902f502415" />

## Dependency Obituary v0.4.0

**Your dependencies are dying. You just don't know it yet.**

### What's in this release

**Core**
- 8 ecosystems: npm, PyPI, Cargo, Go, RubyGems, PHP, Java, Dart
- Health scoring with null weight redistribution + version-specific CVE filtering
- Score breakdown with actionable explanations per signal
- License detection (permissive/copyleft classification)
- Export JSON/CSV + search/filter by risk level
- Chunked analysis for 350+ package files

**Integrations**
- GitHub App - auto-comments health reports on PRs
- GitHub Action - `uses: KidCarmi/Dependency-Obituary@main`
- CLI tool - `node bin/check.js --threshold 60`
- Badge generator - SVG badges for READMEs

**Platform**
- GitHub OAuth sign-in
- Watchlist dashboard with PR activity feed
- Shareable report links (30-day TTL)
- Per-user GitHub tokens (5k req/hr per signed-in user)
- Bot settings (thresholds, comment behavior)

**Security**
- Full CI: CodeQL SAST, Gitleaks, SCA, custom checks
- SSRF protection with URL allowlists
- Input validation on all endpoints
- Security headers (X-Frame-Options, X-Content-Type, Referrer-Policy)

**Legal**
- MIT License
- Privacy Policy, Terms of Service
- SECURITY.md

### Try it
- Web: https://dependency-obituary.orelsec.com
- GitHub App: Install from the integrations page
- CLI: `node bin/check.js package.json --threshold 50`
