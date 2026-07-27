---
title: Spooled — Behavioral CI for AI Agents
date: 2026-07-27 06:41:19 +00:00
tags:
  - spooled-ai
  - GitHub Actions
draft: false
repo: https://github.com/spooled-ai/spooled-action
marketplace: https://github.com/marketplace/actions/spooled-behavioral-ci-for-ai-agents
version: v1.0.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The Spooled action automates the process of monitoring AI agent behavior by generating and comparing behavioral fingerprints of test runs against baseline data. It helps catch changes that could indicate behavioral drift, providing a way to gate PRs based on predefined policies. The action supports both local trace generation in CI and fetching production traces from backend for comparison, offering enhanced flexibility in handling different types of AI model development workflows.
---


Version updated for **https://github.com/spooled-ai/spooled-action** to version **v1.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/spooled-behavioral-ci-for-ai-agents) to find the latest changes.

## Action Summary

The Spooled action automates the process of monitoring AI agent behavior by generating and comparing behavioral fingerprints of test runs against baseline data. It helps catch changes that could indicate behavioral drift, providing a way to gate PRs based on predefined policies. The action supports both local trace generation in CI and fetching production traces from backend for comparison, offering enhanced flexibility in handling different types of AI model development workflows.

## What's Changed

Fail closed on invalid configuration, install exact Spooled sources safely, and preserve actionable reports before enforcing the behavioral gate.
