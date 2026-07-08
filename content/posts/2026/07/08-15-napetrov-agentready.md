---
title: AgentReady Repository Scanner
date: 2026-07-08 15:01:14 +00:00
tags:
  - napetrov
  - GitHub Actions
draft: false
repo: https://github.com/napetrov/agentready
marketplace: https://github.com/marketplace/actions/agentready-repository-scanner
version: v0.2.1
dependentsNumber: "1"
actionType: Node
nodeVersion: 24
---


Version updated for **https://github.com/napetrov/agentready** to version **v0.2.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/agentready-repository-scanner) to find the latest changes.

## What's Changed

## Summary

AgentReady v0.2.1 is a GitHub-only repository polish release. It does **not** publish an npm package.

This release improves first impressions and the next-step story:

- README install instructions now clearly state that the npm package is not published yet.
- README positioning explains AgentReady as repository operability for coding agents, complementary to CI, lint, Scorecard, SAST, and dependency/security scanners.
- Added sample reports for a high-readiness repository and an improvement-plan repository.
- Added product docs for positioning, policy packs, and real-agent evaluation/benchmarks.
- Added v0.3 issue drafts for policy selection, benchmark calibration, instruction-quality analysis, and repository metadata polish.
- Updated backlog and feature roadmap around product trust and policy-pack direction.

## Verification

- `git diff --check`
- `npm run type-check`
- `npm run agentready -- scan . --format markdown --output /tmp/agentready-release-scan.md`

## Package status

The package remains unpublished on npm by design for this release. Use the repository checkout or GitHub Action path.

