---
title: Rafter Security Scan
date: 2026-06-29 07:08:44 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.8.10
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.8.10**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.8.10
```

**Python:**
```bash
pip install rafter-cli==0.8.10
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* fix(security): unconditional hard-block for critical destructive commands (sable-nf2i) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/181
* fix(hook): tolerate --hook-json flag from Claude Code harness by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/180
* fix(claude-code): narrow PostToolUse hook matcher from .* to Bash|Write|Edit|MultiEdit (sable-h0ah) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/183
* security: remediate Rafter scan (deps + FP triage + tarball hardening) [sable-qsig] by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/184
* release: v0.8.10 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/185
* fix(ci): make fixture-detection checks hermetic (unblock v0.8.10 npm publish) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/187


**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.8.9...v0.8.10
