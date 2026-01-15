---
title: Agent Instructions Kit
date: 2026-01-15 13:22:03 +00:00
tags:
  - malmichaels-gif
  - GitHub Actions
draft: false
repo: https://github.com/malmichaels-gif/agent-instructions-kit
marketplace: https://github.com/marketplace/actions/agent-instructions-kit
version: v0.1.0
dependentsNumber: "?"
---


Version updated for **https://github.com/malmichaels-gif/agent-instructions-kit** to version **v0.1.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agent-instructions-kit) to find the latest changes.

## Action Summary

The `agent-instructions-kit` GitHub Action automates the creation, validation, and safety checks of agent instruction files (e.g., `AGENTS.md` and `CLAUDE.md`) used by AI coding tools. It helps maintain consistency, enforces required sections, and detects potential security issues such as prompt injection risks or unsafe patterns. This action streamlines the management of agent instructions and ensures they remain secure, up-to-date, and well-structured.

## Release notes

## What's New

Initial release of agent-instructions-kit.

### Features

- **init**: Generate AGENTS.md + CLAUDE.md from templates (minimal or opinionated)
- **check**: Validate required sections exist
- **safety**: Lint for suspicious patterns (prompt injection, secret exfiltration)
- **GitHub Action**: Run checks in CI with configurable fail behavior

### CLI Usage

```bash
npx agent-instructions-kit init
npx agent-instructions-kit check
npx agent-instructions-kit safety
```

### Action Usage

```yaml
- uses: malmichaels-gif/agent-instructions-kit@v0
  with:
    mode: "all"
    fail_on_safety: "false"
```

See [README](https://github.com/malmichaels-gif/agent-instructions-kit#readme) for full documentation.
