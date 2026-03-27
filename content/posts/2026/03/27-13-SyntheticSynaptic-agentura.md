---
title: Agentura Eval
date: 2026-03-27 13:56:15 +00:00
tags:
  - SyntheticSynaptic
  - GitHub Actions
draft: false
repo: https://github.com/SyntheticSynaptic/agentura
marketplace: https://github.com/marketplace/actions/agentura-eval
version: v0.2.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/SyntheticSynaptic/agentura** to version **v0.2.2**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentura-eval) to find the latest changes.

## Action Summary

Agentura is a self-hostable CI/CD platform designed for evaluating AI agents, enabling automated testing to catch regressions before they reach production. It supports multiple evaluation strategies, including multi-turn conversation consistency, semantic similarity scoring, and performance metrics, ensuring reliable agent behavior across realistic workflows. The platform integrates seamlessly with GitHub and works with various AI frameworks, making it ideal for maintaining high-quality AI deployments in regulated and production environments.

## Release notes

## What's new in v0.2.2

### Anthropic Claude agent example
Complete example with multi-turn conversation eval demonstrating
instruction drift detection, context carryover, and constraint
consistency testing across a realistic multi-step workflow.
See examples/anthropic-agent/

### Multi-turn eval prominently documented
New section in README and expanded explanation in docs/strategies.md
covering the real failure modes multi-turn eval catches.

### Adversarial eval generation
agentura generate --adversarial generates test cases specifically
designed to expose failure modes rather than happy-path coverage.

### fuzzy_match as a first-class scorer
fuzzy_match is now an explicit scorer option alongside exact_match,
semantic_similarity, and contains. No more silent fallbacks.

### Friendly provider warning messages
Provider warnings no longer shout at users with ALL_CAPS.
Clear, actionable messages guide users to the right fix.

### YAML anchor support documented
agentura.yaml supports YAML anchors for sharing config across suites.
See the Tips section in docs/agentura-yaml.md.

## Install
npx agentura@latest run --local
