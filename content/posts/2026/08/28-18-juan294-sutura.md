---
title: Sutura Verified Self-Healing CI
date: 2026-08-28 18:04:26 +00:00
tags:
  - juan294
  - GitHub Actions
draft: false
repo: https://github.com/juan294/sutura
marketplace: https://github.com/marketplace/actions/sutura-verified-self-healing-ci
version: v0.1.1
dependentsNumber: "?"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automatically fixes CI failures by reproducing them in isolated sandboxes, races candidate repairs, and audits evidence. It uses AI agents for diagnosis and proposes patches before opening a PR for human review. Sutura ensures safety by rejecting unsafe shortcuts and provides an HTML case file for evidence. It is built for the Nebius x NVIDIA Global AI Hackathon and can be tried with a judge demo.
---


Version updated for **https://github.com/juan294/sutura** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sutura-verified-self-healing-ci) to find the latest changes.

## Action Summary

This GitHub Action automatically fixes CI failures by reproducing them in isolated sandboxes, races candidate repairs, and audits evidence. It uses AI agents for diagnosis and proposes patches before opening a PR for human review. Sutura ensures safety by rejecting unsafe shortcuts and provides an HTML case file for evidence. It is built for the Nebius x NVIDIA Global AI Hackathon and can be tried with a judge demo.

## What's Changed

Sutura v0.1.1 gives the GitHub Action a unique Marketplace name.

It repairs actionable failures from pull requests, pushes, schedules, and manual dispatches. Direct runs receive evidence on the failing commit.

Sutura rejects stale branch heads before repair. The installer publishes as sutura@0.1.1 through npm trusted publishing.
