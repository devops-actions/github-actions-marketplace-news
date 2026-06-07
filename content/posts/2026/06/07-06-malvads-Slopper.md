---
title: Slopper - AI Slop Detector
date: 2026-06-07 06:35:02 +00:00
tags:
  - malvads
  - GitHub Actions
draft: false
repo: https://github.com/malvads/Slopper
marketplace: https://github.com/marketplace/actions/slopper-ai-slop-detector
version: v0.1.0
dependentsNumber: "?"
actionType: Node
nodeVersion: 20
---


Version updated for **https://github.com/malvads/Slopper** to version **v0.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Node** action using Node version **20**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/slopper-ai-slop-detector) to find the latest changes.

## What's Changed

## Slopper v0.1.0

First tagged release. GitHub Action that detects AI slop in pull requests using heuristic signals and optional AI analysis.

### Highlights

- **24 static checks** — fingerprint, spray-and-pray, new-account, supply-chain, unsigned-commits, no-tests, code-duplication, and more
- **4 agentic AI checks** (optional) — slop-content, security-concern, description-mismatch, code-quality
- **Deterministic mode by default** — runs all heuristics without any AI provider, produces a 0-10 risk score
- **Optional AI providers** — OpenAI, Anthropic, Vertex, Groq, Gemini
- **Pipeline table in PR comment** — every step and check shown with PASS/FAIL status and timing
- **Vouch/ban system** — `/slopper vouch` and `/slopper report` commands with merge-safe `.slopper.d/` per-user files
- **Auto-actions** — auto-close, auto-approve, request-review based on score thresholds
- **Configurable** — thresholds, weights, label rules via `.slopper` YAML config
