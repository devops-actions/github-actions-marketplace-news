---
title: SkillTotal AI Component Security Scan
date: 2026-07-05 06:22:21 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.29.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.29.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Added
- **`skilltotal inventory --sbom` — AI-BOM export.** The installed-component inventory
  (every MCP server and skill your agent hosts reference) as a standard CycloneDX 1.6 JSON
  document, ready for Dependency-Track / compliance pipelines. Components carry a `purl`
  when the source is an `npm:`/`pypi:` spec and the SkillTotal scan verdict as
  `skilltotal:*` properties (host, kind, risk level/score, verdict). New pure module
  `skilltotal.sbom`.
- **`skilltotal scan --provenance` — opt-in registry provenance signals.** For `npm:` /
  `pypi:` sources: *recently published* (<30 days), *deprecated* (npm) / *yanked* (PyPI),
  *no recent releases* (>3 years), *no repository link*. Registry metadata is context about
  a component, not component content, so the component-only invariant holds: opt-in flag,
  fetched at the CLI layer (never inside the engine), and emitted only as `needs_review` —
  never findings, never the score, never the verdict. New pure module
  `skilltotal.provenance`.


