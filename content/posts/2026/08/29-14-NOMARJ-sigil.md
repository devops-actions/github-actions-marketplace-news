---
title: Sigil Security Scan
date: 2026-08-29 14:10:10 +00:00
tags:
  - NOMARJ
  - GitHub Actions
draft: false
repo: https://github.com/NOMARJ/sigil
marketplace: https://github.com/marketplace/actions/sigil-security-scan
version: v1.3.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Sigil automates the security auditing of AI agent code before it reaches working environments. It scans repositories, packages, and tools for malicious patterns, including intentional malicious code. The action fills a gap by implementing a quarantine-first approach to protect developers from inadvertently deploying potentially harmful code.
---


Version updated for **https://github.com/NOMARJ/sigil** to version **v1.3.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sigil-security-scan) to find the latest changes.

## Action Summary

Sigil automates the security auditing of AI agent code before it reaches working environments. It scans repositories, packages, and tools for malicious patterns, including intentional malicious code. The action fills a gap by implementing a quarantine-first approach to protect developers from inadvertently deploying potentially harmful code.

## What's Changed

- fix(release): build linux-arm64 natively on the arm runner; bump 1.3.2 (#144) (d518086)
- fix(release): vendor OpenSSL for aarch64-linux cross build; bump 1.3.1 (#143) (3c39f10)
- fix(api): add sentry-sdk to requirements.lock so the image actually has it (#142) (3058497)
- fix(deploy): roll container apps directly after image push (#141) (64e44b6)
- chore(NOM-616): mark brief complete, record DONE in progress.md (#129) (b504325)
- fix(deps): patch HIGH OSV advisories in dashboard and plugin lockfiles (#140) (dc7e683)
- fix(launch): remove Stripe IDs, true-up privacy claims, honest FP framing (#139) (61306ae)
- feat(docs): complete deployment and rollback runbooks (LAUNCH-005) (#134) (0f73627)
- fix(NOM-615): drain stale cursor before rollback in _MssqlStore.upsert (#135) (29557f9)
- feat(billing): test-mode Stripe webhook support (NOM-884 US-003) (#136) (6afd0e8)
