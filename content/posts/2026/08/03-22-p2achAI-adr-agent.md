---
title: ADR 2.0 Agent Promotion
date: 2026-08-03 22:50:58 +00:00
tags:
  - p2achAI
  - GitHub Actions
draft: false
repo: https://github.com/p2achAI/adr-agent
marketplace: https://github.com/marketplace/actions/adr-2-0-agent-promotion
version: v2.0.2
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  ADR 2.0 is a GitHub Action designed to automate the promotion of AI-generated AARs into formal ADR documents, enhancing architectural consistency in AI-assisted software development by providing automation, integration with AI agents, and machine-verifiable rules. The action handles AAR creation, ADR promotion, human review, continuous enforcement through validation rules, and benefits from a philosophy that accepts AI-driven design reasoning and captures decisions with minimal friction.
---


Version updated for **https://github.com/p2achAI/adr-agent** to version **v2.0.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/adr-2-0-agent-promotion) to find the latest changes.

## Action Summary

ADR 2.0 is a GitHub Action designed to automate the promotion of AI-generated AARs into formal ADR documents, enhancing architectural consistency in AI-assisted software development by providing automation, integration with AI agents, and machine-verifiable rules. The action handles AAR creation, ADR promotion, human review, continuous enforcement through validation rules, and benefits from a philosophy that accepts AI-driven design reasoning and captures decisions with minimal friction.

## What's Changed

ownership backfill에서 허용 taxonomy 기반 domain 분류를 함께 수행합니다.
