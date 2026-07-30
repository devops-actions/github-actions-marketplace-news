---
title: SFDT for Salesforce
date: 2026-07-30 14:40:52 +00:00
tags:
  - scoobydrew83
  - GitHub Actions
draft: false
repo: https://github.com/scoobydrew83/sfdt
marketplace: https://github.com/marketplace/actions/sfdt-for-salesforce
version: v0.21.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the deployment, testing, and release management of Salesforce changes. It provides features such as interactive workflows, automated release manifest generation, parallel Apex test execution, code quality analysis, pre-release validation, rollback support, post-deploy smoke testing, org metadata drift detection, multi-package project support, smart package.xml generator, AI deployment error log interpreter, AI-generated PR descriptions and Slack messages, and native org health & operations suite.
---


Version updated for **https://github.com/scoobydrew83/sfdt** to version **v0.21.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sfdt-for-salesforce) to find the latest changes.

## Action Summary

This GitHub Action automates the deployment, testing, and release management of Salesforce changes. It provides features such as interactive workflows, automated release manifest generation, parallel Apex test execution, code quality analysis, pre-release validation, rollback support, post-deploy smoke testing, org metadata drift detection, multi-package project support, smart package.xml generator, AI deployment error log interpreter, AI-generated PR descriptions and Slack messages, and native org health & operations suite.

## What's Changed

## What's Changed
* fix(extension): recover the 3 stranded #255 fixes + popup dark-mode contrast by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/266
* lint(H-013): catch package-internal paths resolved from _projectRoot/cwd by @github-actions[bot] in https://github.com/scoobydrew83/sfdt/pull/277
* feat(notify): headersEnv — authenticate a webhook without inlining the token by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/278
* feat(ai): headersEnv for the http provider — keep gateway tokens out of config by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/279
* fix(security): redact secrets that arrive as free text by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/280
* chore(deps): bump the production-dependencies group with 5 updates by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/271
* chore(deps): bump the development-dependencies group with 3 updates by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/272
* chore(deps): bump chalk from 5.6.2 to 6.0.0 by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/273
* chore(deps): bump @testing-library/jest-dom from 6.9.1 to 7.0.0 by @dependabot[bot] in https://github.com/scoobydrew83/sfdt/pull/274
* fix(ci): unblock the audit gate and repair check:features by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/281
* chore(deps): bump jsdom to 30.0.0 (supersedes #275) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/282
* chore: sync harness docs split + skills-pack sync escalation from co-work copy by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/283
* fix(smart-deploy): drop regex `d` flag so CodeQL can parse the file by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/285
* docs: design and roadmap for visual manifest builder + sf-pi review by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/286
* feat(quality): remove legacy Code Analyzer v4 (A-1 / F-001) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/287
* chore(features): F-001 passes=true (verifier) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/291
* feat(soql): sfdt soql command family — schema, validation, plans, bounded execution (D-1) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/290
* feat(apex): apex observability — trace flags, debug logs, anonymous apex (D-2) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/288
* feat(gui): manifest builder — server routes + builder page (B-1) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/289
* docs(roadmap): plan GUI SOQL query console (D-4) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/293
* feat(quality): ApexGuru org-side check — license-gated, additive (D-3) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/292
* feat(vscode): manifest builder command + dashboard deep-link fix (B-2) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/294
* feat(bridge): manifest.discover + manifest.render kinds, protocol 1.3 (B-3) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/295
* feat(gui): SOQL query console page + server routes (D-4) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/296
* feat(ext): metadata-retrieve over bridge manifest kinds (B-4) by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/297
* fix(ext): member-restore truncation + redundant renders in metadata-retrieve by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/298
* chore: release CLI v0.21.0 + extension v0.10.0 + VS Code v0.6.0 by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/299
* fix(apex): write --output debug logs 0600, not world-readable by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/301
* chore: release CLI v0.21.0 + extension v0.10.0 + VS Code v0.6.0 by @scoobydrew83 in https://github.com/scoobydrew83/sfdt/pull/300

## New Contributors
* @github-actions[bot] made their first contribution in https://github.com/scoobydrew83/sfdt/pull/277

**Full Changelog**: https://github.com/scoobydrew83/sfdt/compare/v0.20.0...v0.21.0
