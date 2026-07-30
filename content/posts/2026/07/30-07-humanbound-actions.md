---
title: Humanbound — AI Agent Security Testing
date: 2026-07-30 07:11:48 +00:00
tags:
  - humanbound
  - GitHub Actions
draft: false
repo: https://github.com/humanbound/actions
marketplace: https://github.com/marketplace/actions/humanbound-ai-agent-security-testing
version: v1.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action automates adversarial security testing on AI agents by leveraging the Humanbound CLI. It performs OWASP-aligned tests, including prompt injection, tool misuse, data exfiltration, and more, via multi-turn attacks. The findings are automatically recorded with severities and can gate a build if they reach `high` or above severity levels. The results are displayed in GitHub's Security tab as SARIF output and can be further analyzed in the **Security tab**.
---


Version updated for **https://github.com/humanbound/actions** to version **v1.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/humanbound-ai-agent-security-testing) to find the latest changes.

## Action Summary

This GitHub Action automates adversarial security testing on AI agents by leveraging the Humanbound CLI. It performs OWASP-aligned tests, including prompt injection, tool misuse, data exfiltration, and more, via multi-turn attacks. The findings are automatically recorded with severities and can gate a build if they reach `high` or above severity levels. The results are displayed in GitHub's Security tab as SARIF output and can be further analyzed in the **Security tab**.

## What's Changed

## [1.2.0] - 2026-07-30

### Added

- **Platform mode is now available.** `api-key` accepts a Humanbound **user** API
  key (`hb_…` from `hb api-keys create`), which authenticates headlessly via the
  `x-api-key` header — no `hb login`, no browser. Results land in your dashboard.
- `org-id` and `project-id` inputs (mapping to `HUMANBOUND_ORG_ID` and
  `HUMANBOUND_PROJECT_ID`). Both are required in platform mode: a headless run has
  no stored selection, and the results export resolves the organisation from
  `org-id`. `project-id` is validated in the detect step, so a missing value fails
  before the CLI is installed.

### Changed

- The `version` input now defaults to `2.8.0` — the CLI release that adds headless
  `HUMANBOUND_API_KEY` auth, and the release this action is tested against.
  Platform mode requires it; the action checks the installed version and fails with
  a clear message on older releases.
- `api-key` is documented as a **user** API key, not a project key — they are
  different credentials.

### Removed

- The "platform mode is coming soon" gate. Platform mode previously exited with an
  error regardless of inputs; it now runs.


