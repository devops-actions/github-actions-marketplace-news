---
title: pi GitHub Action
date: 2026-06-02 23:40:28 +00:00
tags:
  - shaftoe
  - GitHub Actions
draft: false
repo: https://github.com/shaftoe/pi-coding-agent-action
marketplace: https://github.com/marketplace/actions/pi-github-action
version: v2.19.0
dependentsNumber: "5"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/shaftoe/pi-coding-agent-action** to version **v2.19.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pi-github-action) to find the latest changes.

## What's Changed

## [2.19.0] - 2026-06-02

### Added

- add `loaded_tools` input for selective tool loading (#218)
- add CI/CD awareness tools (get_ci_status / get_workflow_run_logs) (#216)
- add optional auto-compaction and JSONL session export (#227)
- add separate Cost column in comment footer (#248)

### Changed

- add auto-compaction and JSONL session export to README (#231)
- add PR review with existing context example to README (#234)
- cleanup AGENTS.md
- consolidate ESLint config to reduce duplication (#220)
- eliminate env-var coupling in library code (#242)
- eliminate module-level singletons and @actions/* fallbacks (#238)
- implement reusable Pi orchestrator library (#233) (#236)
- README.md: fix `|` char escape (#246)
- replace build-time constants with runtime version resolution (#244)
- Update AGENTS.md
- **deps**: update dependencies (#217)
- **deps**: update dependencies (#223)

### Fixed

- ensure custom models/providers are imported before Agent setup
- ensure newline char before debug log
- ensure packages are loaded correctly in the build
- ensure versions strings are ok
- stop tracking dist/ in git, prevent PRs from sneaking in dist changes
- update dependencies and simplify loaded_tools with SDK native tools option (#222)
- use correct path for packageDir
- use list for loaded_tools inputs

[2.19.0]: https://github.com/shaftoe/pi-coding-agent-action/compare/v2.18.0...v2.19.0

