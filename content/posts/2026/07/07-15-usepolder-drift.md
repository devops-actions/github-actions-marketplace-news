---
title: Polder Drift — Design System Drift Alerts
date: 2026-07-07 15:15:55 +00:00
tags:
  - usepolder
  - GitHub Actions
draft: false
repo: https://github.com/usepolder/drift
marketplace: https://github.com/marketplace/actions/polder-drift-design-system-drift-alerts
version: v1.1.2
dependentsNumber: "0"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/usepolder/drift** to version **v1.1.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/polder-drift-design-system-drift-alerts) to find the latest changes.

## What's Changed

Hardening release (PR #14).

**Security**
- Drift-table cells are sanitized: backticks, pipes, and newlines in import paths or filenames can no longer break the comment table or inject markdown rendered as authored by the bot (fork-PR comment spoofing).

**Correctness**
- Allowlist entries match whole path segments: `#ds` no longer silently allowlists `#dsx/Button`; trailing-slash entries keep prefix semantics.
- Packages declaring types only under the `exports` map (root or nested `import`/`require`/`default` conditions) now resolve their barrel `.d.ts`.

**Visibility**
- Unparseable changed files warn instead of silently reporting zero drift, on both the head and base versions (a base parse failure now warns that drift may be reported as new).
- On GitHub, fork PRs (read-only token) get the drift report written to the workflow step summary when the comment post 403s; the failure still surfaces loudly.

No changes to detection rules, severity, suppression, or adoption math. 289 tests.
