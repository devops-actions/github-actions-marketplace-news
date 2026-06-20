---
title: Charter AI-Agent Readiness
date: 2026-06-20 14:58:31 +00:00
tags:
  - use-charter
  - GitHub Actions
draft: false
repo: https://github.com/use-charter/charter-action
marketplace: https://github.com/marketplace/actions/charter-ai-agent-readiness
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/use-charter/charter-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/charter-ai-agent-readiness) to find the latest changes.

## What's Changed

Composite GitHub Action that runs Charter in CI: it downloads the signed
Charter release binary, verifies it (cosign keyless + SHA-256) against the
release identity, runs `charter doctor --format sarif`, and uploads the
results to GitHub Code Scanning.

## Usage
```yaml
- uses: use-charter/charter-action@v1
  with:
    threshold: 80   # fail the build below this readiness score (0–100)
```

Charter scores any repository 0–100 for AI-agent readiness across 18 rules /
9 categories — offline, deterministic, no LLM. Docs: https://use-charter.dev/docs/ci/github-action

Source of truth: the use-charter/charter monorepo.
