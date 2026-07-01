---
title: RepoScope Security scanning + AI-code provenance
date: 2026-07-01 22:30:33 +00:00
tags:
  - xdun1698
  - GitHub Actions
draft: false
repo: https://github.com/xdun1698/reposcope-action
marketplace: https://github.com/marketplace/actions/reposcope-security-scanning-ai-code-provenance
version: v1.0.4
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/xdun1698/reposcope-action** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/reposcope-security-scanning-ai-code-provenance) to find the latest changes.

## What's Changed

Scan your codebase for security vulnerabilities **and AI-code provenance** on every push and pull request — inline PR comments, a build-gating security score, and a shareable HTML report.

## New in 1.0.4
- Listing name updated to "RepoScope Security scanning + AI-code provenance".

## What it does
- **30 security detectors across 14 languages** — secrets, SQL injection, XSS, command injection, TLS misconfigurations, permissive CORS, and weak crypto.
- **AI-code provenance** — flags which scanned files are attributed to AI coding tools (Copilot, Cursor, Claude, Codeium, Windsurf, Aider, Devin) in git history, and writes a machine-readable `provenance.json` record. Local and deterministic — no network, no LLM.
- **Inline PR review comments** — one per finding: file, line, severity badge, CWE ID, and a fix hint.
- **GitHub Check run** — PASS/FAIL against your score threshold, with annotations.
- **HTML report artifact** + build gating (`fail-on`, `threshold`) + `# reposcope-ignore:` suppression.

## Quickstart
```yaml
- uses: actions/checkout@v4
  with:
    fetch-depth: 0
- uses: xdun1698/reposcope-action@v1
  with:
    token: ${{ secrets.GITHUB_TOKEN }}
```

**Source:** https://github.com/xdun1698/reposcope-action · **Website:** https://reposcope.app
