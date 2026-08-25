---
title: Delivery Autopilot Runner
date: 2026-08-25 22:42:22 +00:00
tags:
  - Tekunda
  - GitHub Actions
draft: false
repo: https://github.com/Tekunda/autopilot-runner
marketplace: https://github.com/marketplace/actions/delivery-autopilot-runner
version: v1.0.40
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The GitHub Action Delivery Autopilot Runner automates the integration of [Delivery Autopilot](https://tekunda.com), a hosted service that uses AI to plan, build, check, and self-heal pull requests. It requires an active subscription from Tekunda, which triggers the action when a ticket is assigned to it. The action checks out the repository on GitHub's runners, runs AI-generated code, performs quality checks, opens a pull request, and reports status back to Delivery Autopilot. It does not send any source code to Tekunda's servers but uses the chosen model provider (Anthropic or OpenAI) directly for code generation and quality checking. The action is configured using either a GitHub App or by adding a workflow to the repository.
---


Version updated for **https://github.com/Tekunda/autopilot-runner** to version **v1.0.40**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/delivery-autopilot-runner) to find the latest changes.

## Action Summary

The GitHub Action Delivery Autopilot Runner automates the integration of [Delivery Autopilot](https://tekunda.com), a hosted service that uses AI to plan, build, check, and self-heal pull requests. It requires an active subscription from Tekunda, which triggers the action when a ticket is assigned to it. The action checks out the repository on GitHub's runners, runs AI-generated code, performs quality checks, opens a pull request, and reports status back to Delivery Autopilot. It does not send any source code to Tekunda's servers but uses the chosen model provider (Anthropic or OpenAI) directly for code generation and quality checking. The action is configured using either a GitHub App or by adding a workflow to the repository.

## What's Changed

Runner-dist synced from AutoPilot 05f30e57aceb. `@v1` now points here.
