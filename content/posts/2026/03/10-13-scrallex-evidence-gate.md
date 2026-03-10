---
title: Evidence Gate Guardrail
date: 2026-03-10 13:24:00 +00:00
tags:
  - scrallex
  - GitHub Actions
draft: false
repo: https://github.com/scrallex/evidence-gate
marketplace: https://github.com/marketplace/actions/evidence-gate-guardrail
version: v1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/scrallex/evidence-gate** to version **v1**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evidence-gate-guardrail) to find the latest changes.

## Action Summary

Evidence Gate is a GitHub Action designed to ensure reliable and safe decision-making for AI systems by assessing structural evidence and precedents before an agent proceeds with actions. It automates tasks such as ingesting repository content and external data (e.g., incident records), building a structural knowledge base, analyzing change impact, and providing actionable decisions (`admit`, `abstain`, or `escalate`). Its key capabilities include evidence-based decision-making, blast radius computation, and lifecycle management of knowledge bases, making it a valuable tool for improving the reliability and safety of AI-driven workflows in engineering and CI environments.

## Release notes

## Release notes

This release adds the first design-partner deployment and guardrail package for Evidence Gate.

### Added
- Docker evaluator kit with a single container exposing the HTTP API on port `8000` and MCP streamable-http on port `8001`
- `docker-compose.yml` with persistent audit and knowledge-base storage
- `scripts/run_demo_sandbox.sh` for zero-to-value evaluation against a FastAPI demo corpus
- `docs/08_partner_evaluation_guide.md` with step-by-step private-repo mounting instructions
- `POST /v1/decide/action` for allow/block action gating on top of the existing decision engine
- Root `action.yml` composite GitHub Action wrapper for CI adoption
- PR comment formatting script for clean Evidence Gate review output
- MCP audit access through recent-decision tooling and raw ledger resources
- Ingestor abstraction plus initial external incident-ingestion foundation

### Changed
- MCP docs now include local path-resolution troubleshooting and absolute-path examples
- Decision/evidence models now support optional external metadata such as author, timestamp, and external URL

### Verification
- Full test suite passing
- Docker image build verified
- Container smoke test verified for `/health` and MCP endpoint availability

