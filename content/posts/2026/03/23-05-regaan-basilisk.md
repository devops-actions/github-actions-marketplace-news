---
title: Basilisk AI Security Scan
date: 2026-03-23 05:53:51 +00:00
tags:
  - regaan
  - GitHub Actions
draft: false
repo: https://github.com/regaan/basilisk
marketplace: https://github.com/marketplace/actions/basilisk-ai-security-scan
version: v1.1.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/regaan/basilisk** to version **v1.1.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/basilisk-ai-security-scan) to find the latest changes.

## Action Summary

Basilisk is an open-source AI red teaming framework designed to automate security testing of large language models (LLMs) like ChatGPT, Claude, and others. It leverages advanced genetic prompt evolution to identify vulnerabilities, such as jailbreaks and logic bypasses, providing tools for adversarial prompt testing, behavioral comparisons, and forensic reporting. This action streamlines LLM security assessments for researchers, penetration testers, and AI safety professionals to proactively detect and mitigate risks in AI systems.

## Release notes

## What's New in v1.1.0
### xAI Grok Provider Support
- Full support for xAI Grok models (Grok-2, Grok-beta) via the Grok API
- Set \`XAI_API_KEY\` and scan with \`-p xai -m grok-2\`
- Differential scan support: compare Grok against GPT-4o, Claude, and Gemini
- Desktop app provider dropdown and model suggestions updated
### Security Hardening
- CORS lockdown: backend restricted to localhost-only origins (was \`*\`)
- API key isolation: keys stored in-memory, never leaked to os.environ
- Concurrency safety: asyncio.Lock protecting shared WebSocket and scan state
- Streaming error fix: provider errors logged instead of yielded as fake content
- Preload bypass closed: Electron window.api shim enforces channel allowlist
- Refusal detection centralized: single source of truth for Python and Go paths
- Audit log improvement: auto-generated secrets emit WARNING with save instructions
### Desktop App
- Modular renderer: split 1000+ line renderer.js into 6 focused modules
- Model registry: centralized provider/model config in core/models.py
- PyInstaller spec updated with new module
### Testing
- New conftest.py with MockProvider, refusing_provider, test_profile, test_session fixtures
- Execution-level attack tests for DirectInjection, EncodingBypass, RoleConfusionExtraction
- 113/113 tests passing

### Downloads

| Platform | File |
|---|---|
| **Windows** | `.exe` (NSIS installer) |
| **macOS** | `.dmg` (Apple Disk Image) |
| **Linux (Universal)** | `.AppImage` |
| **Arch Linux** | `.pacman` |
| **Ubuntu/Debian** | `.deb` |
| **Fedora/RHEL** | `.rpm` |

### Install via pip
```bash
pip install basilisk-ai
```

### Install via Docker
```bash
docker pull rothackers/basilisk
docker run --rm rothackers/basilisk scan --help
```

**Full Changelog**: https://github.com/regaan/basilisk/compare/.../v1.1.0

