---
title: Symfony Security Auditor
date: 2026-08-13 14:00:53 +00:00
tags:
  - vinceAmstoutz
  - GitHub Actions
draft: false
repo: https://github.com/vinceAmstoutz/symfony-security-auditor
marketplace: https://github.com/marketplace/actions/symfony-security-auditor
version: 1.19.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Symfony Security Auditor is an AI-powered security auditing tool designed to catch application-level flaws that traditional static analysis and dependency scanners might miss. It provides a multi-agent adversarial approach where an attacker hunts for vulnerabilities, while a reviewer culls false positives over three iterations before emitting a validated report in various formats such as console, JSON, SARIF, HTML, or Markdown. The auditor can be run as a standalone CLI tool or integrated into a Symfony application via the Symfony bundle. It includes features like dry-run mode to estimate costs and provide a live audit feed in the console.
---


Version updated for **https://github.com/vinceAmstoutz/symfony-security-auditor** to version **1.19.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/symfony-security-auditor) to find the latest changes.

## Action Summary

The Symfony Security Auditor is an AI-powered security auditing tool designed to catch application-level flaws that traditional static analysis and dependency scanners might miss. It provides a multi-agent adversarial approach where an attacker hunts for vulnerabilities, while a reviewer culls false positives over three iterations before emitting a validated report in various formats such as console, JSON, SARIF, HTML, or Markdown. The auditor can be run as a standalone CLI tool or integrated into a Symfony application via the Symfony bundle. It includes features like dry-run mode to estimate costs and provide a live audit feed in the console.

## What's Changed

## What's Changed

- chore(deps): bump DavidAnson/markdownlint-cli2-action from 24.0.0 to 24.1.0 by @app/dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/227
- chore(deps): update symfony/ai-bundle from ^0.11 to ^0.12 by @app/dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/228
- fix(standalone): drop polyfilled ext-uri from the static build by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/229
- docs: use last models by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/230
- chore(deps): bump zizmorcore/zizmor-action to 0.6.1 by @app/dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/236
- fix(docs): drop the invalid expanded model mapping from examples by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/237
- chore: keep main at the released version by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/254
- fix: restore extra.branch-alias to unbreak CI by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/255
- fix(ci): resolve the root version deterministically by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/256
- ci: enforce the core layer boundary in deptrac by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/261
- feat: normalized score and A-F grade by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/262
- feat: --min-score CI gate by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/263
- feat: shields.io badge endpoint from the action by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/264
- feat: PR comment with the audit summary by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/265
- refactor: neutral surface archetype by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/266
- refactor: neutral application security map by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/267
- refactor: neutral synthesizer prompt wording by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/268
- refactor: carry pending reviews in a value object by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/271
- refactor: carry pending chunks in a value object by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/272
- refactor: carry wavefront conversation state in a value object by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/273
- refactor: type the batch request shape behind the ports by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/274
- ci: retarget dependabot by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/283
- chore(deps): bump zizmorcore/zizmor-action from 0.6.1 to 0.6.2 by @app/dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/281
- chore(deps): bump DavidAnson/markdownlint-cli2-action from 24.1.0 to 24.2.0 by @app/dependabot in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/282
- feat(agent): add XSSI detection for GET controller actions by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/284
- fix: PR-comment escaping and failing-gate message by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/276
- fix(standalone): block repo platform override by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/278
- chore: make the local test gates trustworthy by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/279
- docs: fix the duplicate Security heading by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/285
- fix: stop the audited project executing code by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/277
- fix(scan): close three secret-scrubbing gaps by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/280
- fix: prevent false-SAFE results and dropped findings by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/288
- fix: close four prompt/report injection gaps by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/289
- fix(domain): stop Vulnerability id() colliding on join by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/292
- ci(release): scope binary job's write token by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/293
- ci: verify static-php-cli checksum before use by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/296
- fix(domain): stop fingerprint() colliding on join by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/294
- fix(scan): make ThisCallReachability linear-time by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/297
- test: fix SARIF slash-escaping mutant gap by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/300
- fix: harden git-filter, MCP path, and PR-comment exposure by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/290
- fix: reject negative token counts unconditionally by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/291
- fix(scan): stop RegexCodeSlicer segfaulting by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/301
- refactor(scan): decompose RegexCodeSlicer by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/302
- fix(scan): secret-scrubber gaps and hash collisions by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/303
- fix(scan): scan-config path traversal and ReDoS gaps by @vinceAmstoutz in https://github.com/vinceAmstoutz/symfony-security-auditor/pull/304

**Full Changelog**: https://github.com/vinceAmstoutz/symfony-security-auditor/compare/1.18.0...1.19.0

