---
title: runward gate
date: 2026-07-20 07:24:40 +00:00
tags:
  - stranxik
  - GitHub Actions
draft: false
repo: https://github.com/stranxik/runward
marketplace: https://github.com/marketplace/actions/runward-gate
version: v0.21.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  **Runward automates the verification of engineering decisions made by AI-generated code, ensuring that all critical design points are followed and documented. It provides a deterministic gate to verify load-bearing decisions and offers comprehensive compliance evidence, making it suitable for ISO 42001, NIST AI RMF, and EU AI Act standards.**
---


Version updated for **https://github.com/stranxik/runward** to version **v0.21.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/runward-gate) to find the latest changes.

## Action Summary

**Runward automates the verification of engineering decisions made by AI-generated code, ensuring that all critical design points are followed and documented. It provides a deterministic gate to verify load-bearing decisions and offers comprehensive compliance evidence, making it suitable for ISO 42001, NIST AI RMF, and EU AI Act standards.**

## What's Changed

A launch-review pass (multi-agent, adversarially verified) found the first-contact story promised more than one command delivered. The fix is in the product, not the copy: the demo path now *is* one command.

- **`init --example` ends by running the gate itself.** After scaffolding the filled `request-triage` reference, `init --example` chains `check --strict` on the fresh mission — the whole chain goes green in front of you, in one command, exactly as advertised. Deterministic, zero-network, skipped under `--dry-run`. The example's next-steps now point at the guard demo (`cd code && npm install && npm run demo` — req-005 carries a fabricated account reference the deterministic guard refuses, fail-closed) instead of asking you to run a check that already ran.
- **README accuracy pass (the HN landing).** The hand-over uniqueness claim is aligned with the project's own sourced comparison (Spec Kitty *does* carry the mission past tested code; runward's difference is a plain-code succession check and standardized OSCAL evidence, not bespoke YAML). "FDE" is expanded on first use (Forward Deployed Engineer), the Why section leads with what runward does, and the sourced comparison + dropyour case study are linked from the Documentation list.
- **Example docs.** The reference floor's README now counts all five demo requests, including the guard-refused fabrication.

Full changelog: [CHANGELOG.md](https://github.com/stranxik/runward/blob/main/CHANGELOG.md)
