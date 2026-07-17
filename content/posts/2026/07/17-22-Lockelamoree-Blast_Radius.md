---
title: Blast Radius verify
date: 2026-07-17 22:42:16 +00:00
tags:
  - Lockelamoree
  - GitHub Actions
draft: false
repo: https://github.com/Lockelamoree/Blast_Radius
marketplace: https://github.com/marketplace/actions/blast-radius-verify
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  **Blast Radius is a browser-based game designed to help developers practice making safe approval decisions around AI code agents. It offers 20 pre-defined scenarios, a deterministic gate system, and the ability to track action outcomes and evidence with receipts. The application supports multiple browsers and can be run locally or hosted on a server.**
---


Version updated for **https://github.com/Lockelamoree/Blast_Radius** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/blast-radius-verify) to find the latest changes.

## Action Summary

**Blast Radius is a browser-based game designed to help developers practice making safe approval decisions around AI code agents. It offers 20 pre-defined scenarios, a deterministic gate system, and the ability to track action outcomes and evidence with receipts. The application supports multiple browsers and can be run locally or hosted on a server.**

## What's Changed

A deterministic, offline GitHub Action for teams supervising AI coding agents. 
I have designend this project tp help new and upcoming developers with the safe and fun use of ai agents like codex.

This tools help with the gating and decision making process of what commands an agent should actually run on the machine.

- Gate-verify scenario drafts (`scenarios:`) against the production Blast Radius correctness gate — exact, safe to require.
- Screen a PR diff (`diff-base:`) for known agent-security red flags: secret reads, unapproved egress, remote-code pipes, and more. This half is a deterministic keyword heuristic, not a proof of safety — start with `fail-on: never` (advisory) and tighten to `sandbox`/`reject` once you trust it.

```yaml
- uses: Lockelamoree/Blast_Radius@v1
  with:
    scenarios: "scenarios/*.json"
    diff-base: ${{ github.event.pull_request.base.sha }}
    fail-on: never
