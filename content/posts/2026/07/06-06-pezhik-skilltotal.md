---
title: SkillTotal AI Component Security Scan
date: 2026-07-06 06:25:44 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.32.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.32.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **Ruleset 30 — CI-config and vendored-tree false positives** (see `RULES_CHANGELOG.md`),
  found when numpy scored critical/90 on its own infrastructure files:
  - **CI/CD pipeline configuration** (`.circleci/`, `.github/workflows/`, `.gitlab-ci.yml`,
    `Jenkinsfile`, …) is demoted to `needs_review` — a CI job runs on the project's build
    service, never on the consumer's machine, so numpy's docs-deploy SSH setup is not
    component behavior and can no longer feed `ST-COMBO-EXFIL`. Install-time hooks
    (`setup.py`, npm `postinstall`) are unaffected and stay fully scored.
  - **`vendored-*` directories** (numpy's `vendored-meson/`, which bundles the meson build
    system with meson's own CI docker scripts) are now skipped like `vendor/` and
    `node_modules`. Effect: numpy critical/90 → low/20; recall floors unchanged.


