---
title: Sentrik Gate
date: 2026-07-19 06:37:42 +00:00
tags:
  - maxgerhardson
  - GitHub Actions
draft: false
repo: https://github.com/maxgerhardson/sentrik-community
marketplace: https://github.com/marketplace/actions/sentrik-gate
version: v1.8.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Sentrik is a governance runtime that automates compliance checks on AI-generated code. It enforces coding standards, security policies, and compliance rules before code ships by scanning every change against regulatory standards and gating PRs that fail. The free tier includes 6 standards packs with 193 rules for free, while paid tiers offer more features like OWASP, SOC 2, and supply chain standards. Sentrik integrates seamlessly with GitHub Actions to enforce gates in CI/CD pipelines, providing a comprehensive solution for AI-generated code quality and governance.
---


Version updated for **https://github.com/maxgerhardson/sentrik-community** to version **v1.8.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sentrik-gate) to find the latest changes.

## Action Summary

Sentrik is a governance runtime that automates compliance checks on AI-generated code. It enforces coding standards, security policies, and compliance rules before code ships by scanning every change against regulatory standards and gating PRs that fail. The free tier includes 6 standards packs with 193 rules for free, while paid tiers offer more features like OWASP, SOC 2, and supply chain standards. Sentrik integrates seamlessly with GitHub Actions to enforce gates in CI/CD pipelines, providing a comprehensive solution for AI-generated code quality and governance.

## What's Changed

## v1.8.0

- **Claude Code integration** — `sentrik claude-init` makes any repo Claude-ready: a project skill with an onboarding interview (Claude interviews you about your project and enables the right standards packs), MCP server registration, a maintained CLAUDE.md section, and a scan-on-edit hook that feeds findings back to Claude after every file edit (`--no-hooks` to opt out). One-time hint after `sentrik scan` when Claude Code is detected but not yet wired up
- **New MCP tools (26 total)** — `suggest_packs` (what should this project enable, and why), `manage_pack` (enable/disable with license gating), `lint_pack_yaml` (validate draft packs) — the onboarding interview is fully executable by AI agents
- **Java and C#/.NET security packs** (Team tier) — JDBC/JPA and EF injection, unsafe deserialization, XXE, weak crypto, TLS bypass, framework misconfig — now 26 packs, 632 rules
- **Suppression governance** — every waiver carries provenance (who, when, why), expiry dates resurface findings instead of hiding them forever, full audit trail plus `out/suppressed.json` and a dashboard suppressions view
- **`sentrik exclude` and `sentrik lint-pack`** — one-command scan exclusions; lint custom packs for authoring footguns (over-broad globs, unanchored wildcards, bare-word patterns, ReDoS shapes)
- **Dashboard** — Vue migration feature-complete across all pages; persona home views (Developer / Compliance / Agent Ops); AI chat on threats and vulnerabilities; Fix-with-AI restored on findings
- **Deeper dependency scanning** — optional dependency groups and nested manifests are now covered
- **Executive summary** now explains severity vs contextual risk so auditors see why a medium can outrank a high
- **Pack quality** — major false-positive cleanup across EU AI Act, GDPR, NIST 800-53, CMMC, HIPAA, ISO 27001, SOC2, and PCI packs: system-level obligations no longer fire on every file, doc placeholders are no longer flagged as hardcoded secrets
- **Fixes** — SDK `check_code` silently scanned nothing when given absolute paths (also fixed the MCP `check_file` tool); MCP `run_scan` no longer inherits the protocol stdin and reports diagnostics on timeout; telemetry no longer counts CI runners as installs; tree-sitter text predicates now evaluated in-engine

**Install:** `npm install -g sentrik` (prebuilt binary, no Python needed) — binaries below report engine 1.5.113.

