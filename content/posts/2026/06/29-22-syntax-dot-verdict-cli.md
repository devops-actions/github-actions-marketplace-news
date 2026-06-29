---
title: VerdictCI
date: 2026-06-29 22:32:14 +00:00
tags:
  - syntax-dot
  - GitHub Actions
draft: false
repo: https://github.com/syntax-dot/verdict-cli
marketplace: https://github.com/marketplace/actions/verdictci
version: v0.1.1
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/syntax-dot/verdict-cli** to version **v0.1.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/verdictci) to find the latest changes.

## What's Changed

Patch release for the public npm launch.

## What's changed

- Added npm discovery metadata and README trust badges.
- Lowered the supported runtime to Node.js 20+ after a Node 20 smoke test.
- Added the post-release launch checklist for the first public distribution loop.

## Install

```bash
npm install -D @syntaxname/verdictci
npx verdictci --help
```

## Upgrade notes

- Package name: `@syntaxname/verdictci`.
- Runtime requirement: Node.js `>=20.0.0`.
- This release keeps the MVP local-first: CLI, GitHub Action wrapper, result JSON, and Markdown summaries. Hosted dashboards, accounts, billing, GitHub App behavior, SSO, and enterprise governance remain out of scope.

## Verification

Release preparation was verified with docs checks, lint, typecheck, unit tests, e2e tests, package smoke, npm publish dry-run, Node 20 CLI smoke, and pass/fail fixture QA.

npm: https://www.npmjs.com/package/@syntaxname/verdictci/v/0.1.1
