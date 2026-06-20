---
title: Rafter Security Scan
date: 2026-06-20 07:10:28 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.8.9
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.8.9**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.8.9
```

**Python:**
```bash
pip install rafter-cli==0.8.9
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* fix(hook): bound stdin read so a never-closing stdin can't wedge the hook by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/172
* Update scan.ts to run secret dection on added/modified lines and remove old path for checking modified files. by @atoniolo76 in https://github.com/Raftersecurity/rafter-cli/pull/171
* skill review --deep: couple skill-scanner as opt-in deep engine, Node+Python parity (sable-7g7) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/170
* fix(config): harden RAFTER_API_KEY handling — 0600 perms, redaction, wire backend.apiKey (sable-q9to) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/173
* chore(release): 0.8.9 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/175
* fix(release): bump ClawHub skill resource versions to 0.8.9 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/177

## New Contributors
* @atoniolo76 made their first contribution in https://github.com/Raftersecurity/rafter-cli/pull/171

**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.8.7...v0.8.9
