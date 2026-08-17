---
title: rung gate
date: 2026-08-17 21:47:35 +00:00
tags:
  - rung-dev
  - GitHub Actions
draft: false
repo: https://github.com/rung-dev/rung
marketplace: https://github.com/marketplace/actions/rung-gate
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The rung GitHub Action automates the grading of verifications based on reasoning and code execution, providing a two-axis model to assess real-world changes. It solves problems related to verifying code integrity and quality by offering a shared vocabulary, reference schema, and deterministic gate mechanism.
---


Version updated for **https://github.com/rung-dev/rung** to version **v0.2.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rung-gate) to find the latest changes.

## Action Summary

The rung GitHub Action automates the grading of verifications based on reasoning and code execution, providing a two-axis model to assess real-world changes. It solves problems related to verifying code integrity and quality by offering a shared vocabulary, reference schema, and deterministic gate mechanism.

## What's Changed

Fail-closed hardening and documentation consolidation.

Changes:
- Standalone entries (python -m rung.gate, python -m rung.run) fail closed to exit 2 on any unexpected exception, never a raw traceback; the 0/30/2 exit-code contract and argparse usage errors pass through unchanged.
- A malformed RUNG_MAX_CAPTURE_BYTES (non-integer or non-positive) fails closed to exit 2 before the probe runs, instead of crashing or silently reverting to the default cap.
- The threat model moved to a standalone THREAT-MODEL.md; the README is reorganized by task role. No changes to the schema, policy, or the run/gate surfaces.

Published as:
- pip install rung-ai==0.2.0
- uses: rung-dev/rung@v0.2.0
- docker run --rm ghcr.io/rung-dev/rung:0.2.0 version
