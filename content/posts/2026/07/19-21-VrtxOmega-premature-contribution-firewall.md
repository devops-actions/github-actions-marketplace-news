---
title: Premature Contribution Firewall dry-run
date: 2026-07-19 21:52:40 +00:00
tags:
  - VrtxOmega
  - GitHub Actions
draft: false
repo: https://github.com/VrtxOmega/premature-contribution-firewall
marketplace: https://github.com/marketplace/actions/premature-contribution-firewall-dry-run
version: v0.2.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  Premature Contribution Firewall automates the review-readiness assessment of pull requests and patches, helping maintainers prioritize actionable tasks before submission. It ensures that contributions meet key criteria such as reproducibility, scope, testing, and worth human attention, reducing the workload by focusing on issues most likely to be beneficial for the project.
---


Version updated for **https://github.com/VrtxOmega/premature-contribution-firewall** to version **v0.2.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/premature-contribution-firewall-dry-run) to find the latest changes.

## Action Summary

Premature Contribution Firewall automates the review-readiness assessment of pull requests and patches, helping maintainers prioritize actionable tasks before submission. It ensures that contributions meet key criteria such as reproducibility, scope, testing, and worth human attention, reducing the workload by focusing on issues most likely to be beneficial for the project.

## What's Changed

PCF v0.2.0 adds an offline, fail-closed way to reason about contributions after upstream has moved.

## Contribution lifecycle gate

The new `pcf lifecycle` command decomposes a contribution into atomic claims and distinguishes:

- `CURRENT_AND_APPLICABLE`
- `DRIFTED_BUT_REBASEABLE`
- `SALVAGEABLE_INVARIANT`
- `PARTIALLY_SUPERSEDED`
- `SUPERSEDED_EQUIVALENT`
- `INVALIDATED`
- `NEEDS_MAINTAINER_DECISION`

Each result includes a controlled next action, claim-level reasoning, and—when appropriate—a bounded salvage packet. JSON, Markdown, and plain-text output are available without network access or GitHub writes.

## Hindsight boundary

Later outcomes and attribution may be recorded as provenance, but they are excluded from the observation-time classification and assessment SHA-256. Removing the later outcome from the retrospective Hermes Agent fixture produces the same decision and fingerprint.

This release does not claim that a lifecycle assessment proves correctness, mergeability, maintainer endorsement, or permission to publish.

## Verification

- 274/274 unit and integration tests
- 77/77 maintainer benchmark cases
- 29/29 adversarial cases
- maintainer demo and MCP no-write smoke passed
- published package exposes `pcf`, `premature-contribution-firewall`, and `pcf-mcp`
- registry-installed lifecycle CLI reproduced the expected assessment hash
- registry-installed MCP server exposed 25 tools and no write-like tools

## Install or run

```bash
npx premature-contribution-firewall@0.2.0 lifecycle lifecycle-input.json
```

Feature PR: #13  
Release PR: #14

