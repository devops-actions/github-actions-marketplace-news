---
title: Rafter Security Scan
date: 2026-06-03 15:38:34 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.8.4
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.8.4**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.8.4
```

**Python:**
```bash
pip install rafter-cli==0.8.4
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* feat(agent-init): add Hermes platform support (sable-gyw) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/151
* feat: add JSON output for agent status by @cettyTheDev in https://github.com/Raftersecurity/rafter-cli/pull/153
* feat(policy): read backend's .rafter/config.yml + flat-shape compat (sable-c1c) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/154
* fix(scan): honor .rafter.yml scan.exclude_paths on both engines (sable-yz0) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/152
* chore(release): bump to v0.8.4 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/155
* fix(agent): report OpenClaw via canonical ClawHub path in status (sable-1vq) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/157
* feat(agent): surface Hermes in verify/status/list detection (sable-gyw) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/156
* pattern: add HashiCorp Vault token detection by @cettyTheDev in https://github.com/Raftersecurity/rafter-cli/pull/159

## New Contributors
* @cettyTheDev made their first contribution in https://github.com/Raftersecurity/rafter-cli/pull/153

**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.8.3...v0.8.4
