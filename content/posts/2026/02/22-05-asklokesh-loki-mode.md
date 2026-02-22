---
title: Loki Mode Code Review
date: 2026-02-22 05:49:50 +00:00
tags:
  - asklokesh
  - GitHub Actions
draft: false
repo: https://github.com/asklokesh/loki-mode
marketplace: https://github.com/marketplace/actions/loki-mode-code-review
version: v5.51.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/asklokesh/loki-mode** to version **v5.51.0**.
- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/loki-mode-code-review) to find the latest changes.

## Action Summary

Loki Mode is an autonomous multi-agent system designed to transform a Product Requirements Document (PRD) into a fully built, tested, and deployed product with minimal human intervention. It automates the entire software development lifecycle, including coding, testing, and deployment, while allowing human oversight for critical decisions and configurations. The tool supports multi-provider environments and features parallel agent execution, making it a robust solution for streamlining complex development workflows.

## Release notes


### Added - Enterprise Wiring (P0.5)
- OTEL bridge: background Node.js process creates OpenTelemetry spans from RARV events
- Policy engine wiring: pre-execution policy checks in RARV cycle (ALLOW/DENY/REQUIRE_APPROVAL)
- Audit subscriber: event-driven hash-chained audit logging from event bus
- Integration sync subscriber: event-driven Jira/GitHub/Linear dispatch
- Enterprise process manager: unified lifecycle management for background services

### Added - Enterprise Integrations (P1-1, P1-2)
- Slack integration: HMAC-SHA256 webhook verification, slash commands (/loki-status, /loki-approve, /loki-stop), Block Kit messages
- Microsoft Teams integration: shared-secret webhook auth, Adaptive Cards, webhook-only (no SDK dependency)
- Both integrations fail-closed when secrets not configured, 1MB body size limits

### Added - Knowledge Graph (P1-5)
- Organization knowledge graph: cross-project pattern aggregation
- Cross-project memory index: multi-project discovery and indexing
- RAG context injection CLI for knowledge-enhanced prompts

### Added - ConsensAgent v2 (P1-6)
- Blind review protocol: isolated evidence packages per reviewer
- Sycophancy detection: 4-signal weighted scoring (unanimity, similarity, severity, count)
- Reviewer calibration tracking: EMA-based accuracy scoring over time
- All reviewer failure paths default to REJECT (fail-closed)

### Added - Control Plane API v2 (P1-3)
- Multi-tenant project isolation with slug-based routing
- Run lifecycle management: create, cancel, replay, timeline visualization
- API key rotation with configurable grace periods
- 21 new /api/v2/ endpoints (tenants, runs, api-keys, policies, audit)
- Auth required on all endpoints (read=read scope, audit=audit scope, write=control/admin scope)

### Added - Control Plane Web UI (P1-4)
- 6 new web components: RARV timeline, quality gates, audit viewer, tenant switcher, run manager, API key management
- Follows existing vanilla Web Components pattern (no framework)

### Added - SDKs (P1-7, P1-8)
- Python SDK (`autonomi`): zero-dependency, stdlib-only, Python 3.9+
- TypeScript SDK (`@autonomi/sdk`): zero-dependency, Node.js 18+ built-in modules only

### Added - Enterprise Documentation (P1-9)
- Architecture, security, performance, integration cookbook, migration guide, SDK quickstart
- Wiki pages: Enterprise overview and setup guide

### Security
- Webhook HMAC-SHA256 verification on Slack and Teams (fail-closed)
- Run status transition guards: terminal states cannot be cancelled, active runs cannot be replayed
- Policy update size limit (1MB)
- Audit export capped at 10,000 entries
- Python SDK: ForbiddenError (no longer shadows builtin PermissionError)
- TokenAuth.__repr__ masks credentials


