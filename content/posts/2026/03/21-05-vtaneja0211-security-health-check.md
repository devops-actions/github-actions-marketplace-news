---
title: Security Health Check
date: 2026-03-21 05:49:04 +00:00
tags:
  - vtaneja0211
  - GitHub Actions
draft: false
repo: https://github.com/vtaneja0211/security-health-check
marketplace: https://github.com/marketplace/actions/security-health-check
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/vtaneja0211/security-health-check** to version **v1.0.1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/security-health-check) to find the latest changes.

## Action Summary

The **Security Health Check** GitHub Action performs static security analysis on JavaScript and TypeScript applications to identify issues like hardcoded secrets, authentication vulnerabilities, dependency risks, and code quality problems. It automates the process of assessing security and code health by generating a composite health score (0–100) with detailed diagnostics, which are posted as a pull request comment. This helps developers identify and address security flaws and code issues early in the development workflow.

## Release notes

## Security Health Check v1.0.0 — Initial Release

Static security analysis for JavaScript and TypeScript apps, built as a GitHub Action.

Security Health Check scans your codebase on every PR and produces a **weighted 0–100 health score** with actionable findings posted directly as a collapsible PR comment. Catch security issues before they merge — not after they ship.

---

### What's included

Five security checks, each contributing to your composite score:

| Check | Weight | What it catches |
|---|---|---|
| Security & Secrets | 35% | Hardcoded API keys, tokens, JWTs, `eval()`, XSS sinks, localStorage misuse |
| Auth Patterns | 25% | Client-side role checks, unverified JWTs, hardcoded `isAdmin`, unprotected routes |
| Dependencies | 20% | `npm audit` vulnerabilities, known-risky packages, deprecated libraries |
| Code Quality | 10% | Empty catch blocks, `@ts-ignore`, debugger statements, unimplemented stubs |
| CSP Audit | 10% | Missing or misconfigured Content-Security-Policy meta tags |

---

### What's new in v1.0.0

- Initial release as a GitHub Action
- Weighted composite health score (0–100) with per-check breakdowns
- PR comment output with severity-tagged findings and detected good practices
- Configurable pass/fail threshold (default: `70`)
- `score` and `has-findings` outputs for use in downstream workflow steps
- CLI support via `security-health-check` bin
- JSON report export via `--json` flag

---

### Quick start
```yaml
- uses: actions/checkout@v4
- uses: vtaneja0211/security-health-check@v1
  with:
    app-path: .
    github-token: ${{ secrets.GITHUB_TOKEN }}
\```

See the [README](https://github.com/vtaneja0211/security-health-check#readme) for full configuration options, inputs, and outputs.
```
