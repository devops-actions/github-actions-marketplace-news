---
title: MaintainerOps AI
date: 2026-07-04 21:52:56 +00:00
tags:
  - rtonf
  - GitHub Actions
draft: false
repo: https://github.com/rtonf/maintainerops-ai
marketplace: https://github.com/marketplace/actions/maintainerops-ai
version: v0.1.12
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtonf/maintainerops-ai** to version **v0.1.12**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/maintainerops-ai) to find the latest changes.

## What's Changed

MaintainerOps AI v0.1.12 expands model-backed eval readiness and records the first passing 10-case live eval run.

Highlights:
- Added a dedicated 10-case model-backed eval file.
- Added smoke / expanded / all suites plus targeted --case execution.
- Added --cases-file, --summary-json, and API-free npm run eval:model:list.
- Added stricter recommended-action and risk-bound checks.
- Improved normalization for dependency updates, license metadata issues, and direct security-boundary findings.
- Recorded the approved 10-case live model-backed eval result.

Live eval evidence:
- Command: npm run eval:model -- --suite all --budget-usd 0.5 --max-cases 10 --max-output-tokens 1200 --summary-json
- Result: passed 10 cases.
- Model: gpt-4o-mini.
- Successful-run estimated cost: $0.001724.
- Cumulative estimate across failed/adjusted/passing runs: $0.005114.
- Approved ceiling: $0.50.

Guardrails remain unchanged: live model-backed evals are manual-only, not part of CI, and MaintainerOps AI does not auto-merge, auto-close, auto-label, publish releases, or scan unauthorized repositories.
