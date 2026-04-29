---
title: Inkog - AI Agent Security Scanner
date: 2026-04-29 14:42:16 +00:00
tags:
  - inkog-io
  - GitHub Actions
draft: false
repo: https://github.com/inkog-io/inkog
marketplace: https://github.com/marketplace/actions/inkog-ai-agent-security-scanner
version: v1.2.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/inkog-io/inkog** to version **v1.2.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/inkog-ai-agent-security-scanner) to find the latest changes.

## Action Summary

Inkog is a static analysis GitHub Action designed to identify vulnerabilities specific to AI agent code, such as token bombing, prompt injection, recursive tool calls, and compliance gaps. It automates the detection of issues that could lead to costly API usage, security risks, or regulatory non-compliance, providing actionable insights aligned with frameworks like the EU AI Act, NIST, and OWASP. By integrating directly into CI/CD workflows, it streamlines pre-deployment checks to enhance the reliability and security of AI agents.

## What's Changed

A documentation refresh and quality-of-life patch. **No code changes to detection logic** — your scan results are identical to v1.2.0.

## What's new

- 📒 **CHANGELOG.md** — proper release history covering v1.0.0 → v1.2.1, in [Keep a Changelog](https://keepachangelog.com/) format
- ⚡ **Faster GitHub Action** — `inkog-io/inkog@v1` now downloads pre-built binaries instead of building from source. CI scans run **~10× faster** (~60s → ~5s)
- 📝 **Better contributor docs** — `CONTRIBUTING.md` rewritten with a Universal IR primer and clearer guidance for adding framework support
- 🛡️ **Stronger security policy** — `SECURITY.md` now points to GitHub Security Advisories, lists supported versions, and covers the MCP server and GitHub Action
- 🤖 **Dependabot enabled** — weekly automated updates for Go modules and GitHub Actions
- 🐛 **New issue template** — dedicated framework-support template with checklists for detection categories and example agent code
- ✨ Refreshed bug report, feature request, and PR templates

## Upgrade

Pin in your workflow:

```yaml
- uses: inkog-io/inkog@v1   # always tracks latest 1.x
# or
- uses: inkog-io/inkog@v1.2.1
```

CLI:

```bash
brew upgrade inkog
# or
go install github.com/inkog-io/inkog/cmd/inkog@v1.2.1
# or
npx -y @inkog-io/cli scan .
```

## Full Changelog

See [CHANGELOG.md](https://github.com/inkog-io/inkog/blob/main/CHANGELOG.md) or the [v1.2.0...v1.2.1 diff](https://github.com/inkog-io/inkog/compare/v1.2.0...v1.2.1).
