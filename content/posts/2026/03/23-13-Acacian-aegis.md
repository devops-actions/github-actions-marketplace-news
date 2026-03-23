---
title: Aegis AI Governance Gate
date: 2026-03-23 13:40:31 +00:00
tags:
  - Acacian
  - GitHub Actions
draft: false
repo: https://github.com/Acacian/aegis
marketplace: https://github.com/marketplace/actions/aegis-ai-governance-gate
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Acacian/aegis** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/aegis-ai-governance-gate) to find the latest changes.

## Action Summary

Aegis is a Python middleware that provides governance and control over AI agent actions by enforcing policy checks, approval gates, and audit logging. It prevents risky or unauthorized actions, such as critical API calls or data deletions, by integrating directly into your agent code without requiring additional infrastructure. This tool helps automate AI action governance, ensuring safety and transparency in real-world AI deployments.

## Release notes

## What's New

### 🖥️ Web Governance Dashboard
- Real-time SPA dashboard with 7 pages (overview, audit, policy, anomalies, compliance, regulatory, system)
- WebSocket real-time streaming: `/ws/audit` streams audit entries live to connected clients
- Policy editor: in-dashboard YAML editor with validate and save/reload (hot-reload)
- Audit JSON export: one-click filtered export from dashboard audit page
- Auto-refresh overview (30s, toggleable)
- `aegis serve policy.yaml --seed-demo 200` populates demo data for evaluation

### 🎮 Interactive Playground
- Browser-only policy playground — no install, no backend
- YAML + glob matching in pure JS, try policies instantly

### 🏢 Enterprise Features
- **Cryptographic audit chain**: SHA-256/SHA3-256 hash-linked, tamper-evident (EU AI Act Art.12 + SOC2 CC7.2)
- **Regulatory compliance mapper**: EU AI Act (10 req), NIST AI RMF (8 req), SOC2 (6 req), ISO 42001
- **Behavioral anomaly detection**: rate spike, burst, new-action, unusual target, auto policy generation
- **Compliance report generator**: SOC2, GDPR, governance from audit logs
- **RBAC**: 12 permissions, 5 hierarchical roles, thread-safe AccessController
- **Multi-tenant isolation**: TenantContext, TenantRegistry, quota enforcement
- **Policy versioning**: git-like commit, diff, rollback, tagging
- **Rate limiter**: per-agent and global sliding-window
- **Webhook notifications**: Slack, PagerDuty, generic JSON

### 🛡️ CI/CD Governance
- **GitHub Action**: `aegis-action` for policy enforcement in PR and deploy pipelines
- **Shields.io badge**: `GET /api/v1/badge/score` for README embedding

### 🔍 AI-Specific Deep Features
- Semantic conditions engine (keyword + pluggable LLM evaluator)
- Agent trust chain (hierarchical identity, delegation, cascade revocation)
- Policy diff & impact analysis (`aegis diff`)
- Natural language autopolicy (`aegis autopolicy`)
- Adversarial probe (`aegis probe`)
- Policy testing framework with auto-generation
- Action replay & simulation engine

### 📊 Stats
- **1,776+ tests passing**
- 27 core modules, 65 source files
- `mypy --strict` clean
- CI green on Python 3.11, 3.12, 3.13

---

**Full Changelog**: https://github.com/Acacian/aegis/compare/v0.1.8...v0.2.0
