---
title: mockdr — Multi-EDR Mock Server
date: 2026-03-20 05:49:47 +00:00
tags:
  - mockdr
  - GitHub Actions
draft: false
repo: https://github.com/mockdr/mockdr
marketplace: https://github.com/marketplace/actions/mockdr-multi-edr-mock-server
version: v1.0.4
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/mockdr/mockdr** to version **v1.0.4**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/mockdr-multi-edr-mock-server) to find the latest changes.

## Action Summary

The `mockdr` GitHub Action is a self-contained mock server that emulates APIs for eight major security platforms, including SentinelOne, CrowdStrike Falcon, Microsoft Defender for Endpoint, and Splunk SIEM. It enables seamless testing of SOAR playbooks, SIEM integrations, automation scripts, and EDR/response tools by mimicking real API behavior with accurate data, paths, and response formats. This action eliminates the need for live environments, reducing dependency on lab licenses, VPNs, rate limits, and vendor-specific constraints, while supporting efficient development, testing, and validation workflows for security engineers, developers, and testers.

## Release notes

The first stable release of mockdr — a self-contained mock server that emulates the APIs of eight security platforms in a single process.

## What's included

### Supported Platforms
- **SentinelOne** Singularity API v2.1 — agents, threats, alerts, Deep Visibility, policies, exclusions, blocklist, firewall, device control, IOCs, tags, users, webhooks
- **CrowdStrike Falcon** — hosts, detections, incidents, IOCs, host groups, quarantine, cases (OAuth2 + FQL parser)
- **Microsoft Defender for Endpoint** — machines, alerts, indicators, investigations, Advanced Hunting with KQL, TVM software & vulnerabilities (OAuth2 + OData v4)
- **Elastic Security** — endpoints, detection rules, alerts, cases, exception lists (Basic Auth + API Key, Elasticsearch Query DSL)
- **Cortex XDR** — incidents, alerts, endpoints, scripts, IOCs, XQL queries, audit logs (HMAC auth)
- **Splunk SIEM** — search jobs with a real SPL execution engine, notable events, saved searches, indexes, HEC, KV Store (Basic Auth + Bearer + HEC tokens)
- **Microsoft Sentinel** — incidents, alert rules, data connectors, watchlists, threat intelligence, bookmarks, Log Analytics KQL (Azure AD OAuth2)
- **Microsoft Graph API** — Entra ID (users, groups, roles, MFA, conditional access, sign-in/audit logs, identity protection), Intune (managed devices, compliance, Autopilot, MAM), M365 (mail, OneDrive, SharePoint, Teams), Security (alerts, incidents, hunting, secure scores, TI, attack simulation) — with plan-based feature gating (Plan 1 / Plan 2 / Defender for Business)

### Query Engines
- **OData v4** — `$filter`, `$select`, `$expand`, `$count`, `$search`, `$skiptoken`, lambda expressions
- **KQL** — Advanced Hunting queries (MDE + Sentinel)
- **SPL** — Full pipeline: `search`, `where`, `head`, `tail`, `table`, `stats`, `sort`, `rename`, `eval`, time modifiers
- **FQL** — CrowdStrike Falcon Query Language
- **Elasticsearch Query DSL** — `_search` endpoint

### Cross-Vendor Integration
- 60 agents seeded once, mirrored across all EDR vendors with consistent identities
- EDR events automatically replayed into Splunk indexes (9 indexes, 5 sourcetypes) and Sentinel incidents
- Notable events auto-generated from all vendor threat data

### Seed Data
- Deterministic: `random.seed(42)` + `Faker.seed(42)` — identical data on every cold start
- 60 agents, 30 threats, 40+ alerts, 15+ incidents per vendor
- Realistic compliance violations baked in: too many Global Admins, former employees with mail forwarding, EOL operating systems, unverified apps with broad permissions, BYOD noncompliant devices
- Reset to known state: `POST /_dev/reset`

### Infrastructure
- 8 vendor-specific auth flows (OAuth2, HMAC, API Key, Basic Auth, HEC)
- 8 ASGI middleware layers (metrics, rate limiting, fault injection, audit, security headers, recording proxy)
- CQRS architecture with in-memory store, optional JSON persistence
- Vue 3 frontend with vendor dashboards, SPL search editor, SIEM dashboard, scenario controls
- Docker image with multi-stage build + healthcheck
- GitHub Action for CI service container usage
- One-click Render deploy (free tier)

### Dev Controls
- Scenarios: Mass Infection, APT Campaign, Agents Offline, Quiet Day
- Fault injection (latency + error rate), rate limiting, webhook testing
- Full request audit log, state export/import

### Recording Proxy
Built-in proxy that connects to real vendor APIs, records the exchanges, and replays them later. Useful for validating mock fidelity against real responses, building regression test fixtures from production data, and offline testing after a single capture session.

- **Three modes:** `off` (default — pure mock), `record` (forward to real API, save the exchange, return the real response), `replay` (serve from saved recordings, fall back to mock if no match)
- **All eight vendors supported** with vendor-appropriate authentication — OAuth2, HMAC, API Key, Basic Auth handled natively
- Recordings matched by vendor + HTTP method + path

## Quick Start
```bash
docker compose up --build
# All 8 vendor APIs on http://localhost:5001
```

## License
BSL 1.1 — free for personal, evaluation, non-profit, and open-source use. Commercial use requires a license. Each release converts to Apache 2.0 after four years.
