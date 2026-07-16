---
title: UCP Conformance (spck)
date: 2026-07-16 06:19:50 +00:00
tags:
  - vishkaty
  - GitHub Actions
draft: false
repo: https://github.com/vishkaty/spck-conformance-action
marketplace: https://github.com/marketplace/actions/ucp-conformance-spck
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action adds a behavioral UCP conformance gate to your CI pipeline. It runs the spck-conformance suite against your UCP merchant server, checking for MUST deviations and ensuring compliance. The action supports both server and agent-side modes, allowing you to verify shopping agent functionality. It outputs JUnit reports with spec citations for any deviations found during testing.
---


Version updated for **https://github.com/vishkaty/spck-conformance-action** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/ucp-conformance-spck) to find the latest changes.

## Action Summary

This GitHub Action adds a behavioral UCP conformance gate to your CI pipeline. It runs the spck-conformance suite against your UCP merchant server, checking for MUST deviations and ensuring compliance. The action supports both server and agent-side modes, allowing you to verify shopping agent functionality. It outputs JUnit reports with spec citations for any deviations found during testing.

## What's Changed

First release.

- **Server mode**: runs the [spck-conformance](https://pypi.org/project/spck-conformance/) suite against a UCP merchant server; fails the build on MUST deviations; writes a JUnit report — every entry is named with its check id from the spec-derived register, and deviations include the full spec citation. Versions 2026-01-11 / 2026-01-23 / 2026-04-08 auto-detected.
- **Agent-lane mode**: self-contained agent-side conformance harness (reference agent vs adversarial sandbox), no server needed.
- Input validation (exactly one mode), pinned-version support, configurable JUnit path.

The action's own CI proves the gate both ways on every change and weekly: agent lane passes, a non-UCP server fails the build, and a full run against the UCP reference sample merchant must produce a JUnit report consistent with the verdict.

Unofficial; not affiliated with the UCP project.
