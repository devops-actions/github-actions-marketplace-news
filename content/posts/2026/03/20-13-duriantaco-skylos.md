---
title: Skylos - Dead Code & Security PR Gate
date: 2026-03-20 13:37:37 +00:00
tags:
  - duriantaco
  - GitHub Actions
draft: false
repo: https://github.com/duriantaco/skylos
marketplace: https://github.com/marketplace/actions/skylos-dead-code-security-pr-gate
version: v4.1.0
dependentsNumber: "11"
actionType: Composite
---


Version updated for **https://github.com/duriantaco/skylos** to version **v4.1.0**.
- This action is used across all versions by **11** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skylos-dead-code-security-pr-gate) to find the latest changes.

## Action Summary

Skylos is a local-first code analysis tool for Python, TypeScript, and Go that identifies dead code, secrets, and exploitable security vulnerabilities, enabling teams to gate pull requests with automated quality checks. It combines dead code detection, security scanning, and PR review workflows into a single CLI and CI pipeline, reducing false positives and supporting modern frameworks like FastAPI, Django, and React. Skylos streamlines development by automating code quality and security validation, offering a reliable alternative to using multiple disconnected tools.

## Release notes

## [4.1.0] - 2026-03-20

### Added
- Security regression detection — SKY-L021 expanded to 13 categories: input validation, security headers, encryption, logging/audit, sanitization, permission checks. Findings include `control_type` field
- Web scanner — public scan page at `skylos.dev/scan`, paste a GitHub URL, get a vibe code risk score. No signup, rate-limited (10/IP/hr)
- MCP guardrails — `validate_code_change` (diff validation for regressions, dangerous patterns, secrets) and `get_security_context` (project security posture for agents)
- Community rules — `skylos rules install|list|remove|validate` for YAML rule packs from `duriantaco/skylos-rules` or any URL. Taint-flow pattern support in YAML rules
- AI provenance — `--provenance` flag annotates findings with AI authorship (cursor, copilot, claude, etc.). Per-agent and per-severity breakdowns
- TypeScript dead code detection — cross-file analysis with SKY-E003 (unused files with transitive propagation), SKY-E004 (unnecessary exports), wildcard re-export chain resolution, `.js`→`.ts` path resolution
- TypeScript export graph — aliased imports, default re-exports, namespace re-exports all tracked correctly
- Next.js security — SKY-D280 (missing auth in API routes), SKY-S102 (server secrets in `"use client"` files), SKY-D281 (SQL injection in `"use server"` actions)
- SKY-S102: Client-side secret exposure in `static/`, `public/`, `.next/`, `dist/`, `build/` paths
- D230 enhanced: catches `redirect(request.args.get("next", "/"))` with `urlparse`/`startswith` guard suppression
- SKY-Q306: Cognitive complexity (SonarQube S3776)
- SKY-L027 (duplicate strings), SKY-L028 (too many returns), SKY-L029 (boolean trap)
- Go quality rules (Q301, Q302, C303, C304) via tree-sitter-go
- `skylos[fast]` — optional Rust accelerator
- `skylos provenance` — detect AI-authored code in PRs
- Agent-aware quality gate (`[tool.skylos.gate.agent]`)
- `skylos agent watch`, `agent pre-commit`, `agent verify --fix --pr`
- Grep-based verification pass with parallel workers, GrepCache, CWE tagging + SARIF taxonomy

### Changed
- Agent CLI consolidated from 16 to 8 commands
- TS definitions use `filename:name` as dict key (prevents collisions)

### Fixed
- `Definition.to_dict()` now includes `is_exported` flag
- TS def key collisions and cross-file import resolution
