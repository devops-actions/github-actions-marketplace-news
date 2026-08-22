---
title: Lachesis Security Scan
date: 2026-08-22 21:51:04 +00:00
tags:
  - UnboundCompute
  - GitHub Actions
draft: false
repo: https://github.com/UnboundCompute/lachesis-action
marketplace: https://github.com/marketplace/actions/lachesis-security-scan
version: v1.0.4
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  Lachesis is a GitHub Action that automatically analyzes your code to find missing or insufficient authorization checks in functions that lead to dangerous sinks. It builds a compiler-precise code property graph, traces untrusted input to sinks, and posts findings as inline comments on pull requests, with the severity level based on whether the function guards the sink or not. This helps developers identify potential security vulnerabilities early in the development process.
---


Version updated for **https://github.com/UnboundCompute/lachesis-action** to version **v1.0.4**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/lachesis-security-scan) to find the latest changes.

## Action Summary

Lachesis is a GitHub Action that automatically analyzes your code to find missing or insufficient authorization checks in functions that lead to dangerous sinks. It builds a compiler-precise code property graph, traces untrusted input to sinks, and posts findings as inline comments on pull requests, with the severity level based on whether the function guards the sink or not. This helps developers identify potential security vulnerabilities early in the development process.

## What's Changed

Lachesis now delivers findings as **inline pull-request comments from the Lachesis GitHub App (Lachesis[bot])** — the single delivery path.

- Findings post as `lachesis-security[bot]` PR review comments via the hosted poster, authenticated with a short-lived GitHub Actions OIDC token that proves the run's repository. Compute stays in your CI; only findings leave the runner.
- Removed the `upload` and `branded-comments` inputs. Workflows now need `permissions: id-token: write` (not `security-events: write`).
- `report-endpoint` points at the hosted poster by default — no extra config.
- Use `fail-on: error` to fail the check; add the `scan` job as a required status check to hard-block merges.
- If the app isn't installed, the run surfaces a one-click install link (https://github.com/apps/lachesis-security) and continues non-fatally.

Install the app: https://github.com/apps/lachesis-security
