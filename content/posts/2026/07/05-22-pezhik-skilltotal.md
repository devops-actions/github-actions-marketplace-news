---
title: SkillTotal AI Component Security Scan
date: 2026-07-05 22:02:34 +00:00
tags:
  - pezhik
  - GitHub Actions
draft: false
repo: https://github.com/pezhik/skilltotal
marketplace: https://github.com/marketplace/actions/skilltotal-ai-component-security-scan
version: v0.31.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/pezhik/skilltotal** to version **v0.31.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skilltotal-ai-component-security-scan) to find the latest changes.

## What's Changed


### Fixed
- **Ruleset 29 — four architectural false-positive fixes from a full audit of production
  reports** (see `RULES_CHANGELOG.md`). The tandem "critical exfil" verdict was a symptom of
  broader engine gaps in *where* evidence is trusted; each class is fixed at the demotion layer
  so recall is preserved (efficacy + FP floors stay at 0):
  - **Example/demo/benchmark scaffolding** (`examples/`, `demo/`, `samples/`, `.env.example`
    templates) is demoted to `needs_review` — it ships as illustration, not the component's own
    runtime behavior. Also blocks such scaffolding from feeding `ST-COMBO-EXFIL`.
  - **Prompt-injection phrases inside structured-data values** (`.json` / `.yaml` / `.toml`
    fixtures, scenario/eval data) are demoted — a string in a data blob is not an agent-facing
    instruction. **MCP manifests are excluded** (a tool description there *is* an instruction
    surface), so injection in `mcp.json` still scores.
  - **Over-broad MCP scope** (`ST-MCP-OVERBROAD-SCOPE`) now only applies in an MCP context and
    ignores file-path globs (`**/*.ts`, `.github/**`) — a build-tool `angular.json` / `greptile.json`
    `scope` key is no longer misread as a permission wildcard.
  - Net effect on audited projects: `nopua` high→low, `ECC` low/0, `browser-use` scaffold FP
    removed (real findings kept), and the `tandem` false "critical/malicious" collapses to
    `medium`/not-malicious.


