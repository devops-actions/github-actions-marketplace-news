---
title: Rafter Security Scan
date: 2026-07-22 06:17:10 +00:00
tags:
  - Raftersecurity
  - GitHub Actions
draft: false
repo: https://github.com/Raftersecurity/rafter-cli
marketplace: https://github.com/marketplace/actions/rafter-security-scan
version: v0.9.1
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of scanning codebases using the Rafter security tool. It helps identify potential security vulnerabilities and ensures that code is compliant with security standards. The action supports various programming languages and can be integrated into CI/CD pipelines to enhance the overall security posture of applications.
---


Version updated for **https://github.com/Raftersecurity/rafter-cli** to version **v0.9.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rafter-security-scan) to find the latest changes.

## Action Summary

This GitHub Action automates the process of scanning codebases using the Rafter security tool. It helps identify potential security vulnerabilities and ensures that code is compliant with security standards. The action supports various programming languages and can be integrated into CI/CD pipelines to enhance the overall security posture of applications.

## What's Changed

## Installation

**Node.js:**
```bash
npm install -g @rafter-security/cli@0.9.1
```

**Python:**
```bash
pip install rafter-cli==0.9.1
```

**OpenClaw (via ClawHub):**
```bash
clawhub skill install rafter-security
```

See [CHANGELOG.md](https://github.com/raftersecurity/rafter-cli/blob/main/CHANGELOG.md) for details.


## What's Changed
* feat: add mailchimp api key scanning pattern and tests by @Minh-Nguyen-2k7 in https://github.com/Raftersecurity/rafter-cli/pull/190
* fix(audit): redact secret-named env-assignment prefixes before logging (ob-y5ep) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/191
* test(scan): Mailchimp negative-case tests + whitespace tidy (follow-up to #190) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/194
* docs(skills): scope rafter security skills by surface, not task label by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/195
* fix(agent): scope injected instruction block by surface, not task label by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/196
* fix(agent): correct Codex hooks dry-run plan string (PostToolUse parity with #196) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/197
* fix(deps): pin cryptography >=46.0.7 (GHSA-537c-gmf6-5ccf) + resync stale poetry.lock by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/198
* fix(skills): restore rafter SKILL.md line budget broken by #195 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/199
* fix(hook): argument-aware command matching so quoted prose isn't run as a command by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/200
* feat(scan): add SendGrid API key secret pattern (#24) by @perez-eduardo in https://github.com/Raftersecurity/rafter-cli/pull/201
* Add npm script by @Minh-Nguyen-2k7 in https://github.com/Raftersecurity/rafter-cli/pull/202
* chore: post-merge tidy for #201 + #202 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/203
* feat(scan): opt-in approval gate for paid Plus scans (sable-9ddf) by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/204
* chore(release): bump to v0.9.1 by @Rome-1 in https://github.com/Raftersecurity/rafter-cli/pull/206

## New Contributors
* @perez-eduardo made their first contribution in https://github.com/Raftersecurity/rafter-cli/pull/201

**Full Changelog**: https://github.com/Raftersecurity/rafter-cli/compare/v0.9.0...v0.9.1
