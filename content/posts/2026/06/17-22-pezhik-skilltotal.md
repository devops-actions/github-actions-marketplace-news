---
title: SkillTotal AI Component Security Scan
date: 2026-06-17 22:52:10 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.16.3
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.16.3**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed

**SkillTotal** statically scans AI components — MCP servers, agent skills/plugins, npm/PyPI
packages, and repositories — for supply-chain risk, dangerous capabilities, prompt-injection
surfaces, and data-exfiltration paths. Deterministic (regex + AST, **no LLM**), **offline**, and
evidence-anchored (every finding points at an exact file:line). Uploads **SARIF** to GitHub Code
Scanning and fails the build on high/critical findings.

### Usage

```yaml
- uses: pezhik/skilltotal@v0.16.3
  with:
    source: .          # a path, a git URL, or an npm:/pypi:<name> spec
    fail-on: high      # fail on a high/critical finding (or 'none')
```

### Highlights (since 0.15)

- **E-mail/SMTP exfiltration channel** — catches mail backdoors (e.g. constant-BCC).
- **`.pth` auto-exec**, **shell decode-and-exec / `curl | bash`**, **defense-evasion idioms**, and **install-time dropper** correlation.
- **MCP**: over-broad scope detection + mapping to the OWASP MCP Security Cheat Sheet.
- **Data-flow**: lethal-trifecta and malicious-indicator convergence findings.

**Changelog:** https://github.com/pezhik/skilltotal/blob/main/CHANGELOG.md
