---
title: DeepSeek Harness for GitHub
date: 2026-08-27 08:04:14 +00:00
tags:
  - Lixiaoyiao
  - GitHub Actions
draft: false
repo: https://github.com/Lixiaoyiao/deepseek-harness-action
marketplace: https://github.com/marketplace/actions/deepseek-harness-for-github
version: v0.8.1
dependentsNumber: "0"
actionType: Node
nodeVersion: 24
actionSummary: |
  This GitHub Action automates the process of using DeepSeek Harness to review pull requests, issues, and failed CI jobs. It helps maintainers diagnose and fix problems by starting a credential-isolated DSH worker, validating its structured result, and publishing comments or validated changes to trusted repositories. The Action supports various composition modes including native and controlled, allowing for flexible tool management and execution.
---


Version updated for **https://github.com/Lixiaoyiao/deepseek-harness-action** to version **v0.8.1**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Node** action using Node version **24**.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/deepseek-harness-for-github) to find the latest changes.

## Action Summary

This GitHub Action automates the process of using DeepSeek Harness to review pull requests, issues, and failed CI jobs. It helps maintainers diagnose and fix problems by starting a credential-isolated DSH worker, validating its structured result, and publishing comments or validated changes to trusted repositories. The Action supports various composition modes including native and controlled, allowing for flexible tool management and execution.

## What's Changed

## Highlights

- Centralizes UTF-8 prefix/suffix primitives across context, agent-loop, GitHub evidence/Gateway, fetch, and command output. Tiny caps terminate, stay within byte limits, preserve code-point boundaries, and do not introduce U+FFFD.
- Moves input-only DeepSeek URL protocol/userinfo, exact audited DSH, Docker/OCI reference, and host executable failures into `loadInputs()` while keeping runtime checks as defense in depth.
- Makes `dshMode` discriminate controlled/native MCP and Plugin configuration types and removes downstream production casts.
- Makes public Action input metadata typed and deterministic across `action.yml`, configuration tables, runtime names/defaults, and the installer subset.
- Keeps `GitHubAuthorityGateway` as the sole authority facade while extracting deadline, revalidation, mutation reconciliation, public text, and receipt helpers.
- Adds stable additive tool-denial reason codes with deterministic precedence while preserving human reasons and legacy permission digest/task identity.
- Adds `ARCHITECTURE.md`, INV-001 through INV-005, and a manual/weekly advisory next-DSH compatibility canary.

## Security and compatibility

- `controlled` remains the compatible default; no Controller, DshComposition, Gateway, backend, receipt, queue, validation, or external-effect semantics are widened.
- Production remains exact-pinned to the audited DSH `0.1.1-rc.2` family across 188 locked packages.
- No Session/Resume, Action-owned GitHub MCP backend, new GitHub capability, authority widening, or DSH upgrade is included.
- `create-deepseek-harness-action` remains independently versioned at `0.2.0` and keeps its existing formal v0.8.0 Action binding.

## Verification

- Release SHA: `e6c7955843d870b2ecb71c7966ba26b65a4e479b`
- Frozen candidate: `b2c8bfcaede82005b9de061bc6270fb617f08709`
- Release PR: [#208](https://github.com/Lixiaoyiao/deepseek-harness-action/pull/208)
- Frozen candidate CI: [32992758001](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32992758001)
- Pre-merge Core E2E: [32993069689](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32993069689)
- Exact-main CI: [32994011614](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/32994011614)
- Exact-main Core E2E: [33000037708](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/33000037708)
- Local qualification: 69 test files, 833 passed / 2 skipped, coverage thresholds, generated-contract drift, release contract, exact DSH audit, and reproducible `dist` all passed.

The successful Core E2E runs cover controlled/native read-only paths, native ecosystem composition, validation and no-mutation guards, trusted writes, Subagent, Bash, cancellation finalization, structured output, all six typed GitHub operations, cleanup, credential-free checkout, and final immutable binding.

## Formal release smoke

- v0.8.1 controlled/native tag consumer canary: [33001314796](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/33001314796)
- Advisory upstream compatibility canary: [33001500619](https://github.com/Lixiaoyiao/deepseek-harness-action/actions/runs/33001500619) — no version after `0.1.1-rc.2` was published, so candidate install/smoke was correctly skipped and production pins were verified unchanged.

## Known limitations

Native composition remains experimental and Docker-only. The upstream DSH canary is advisory: it never changes production pins or declares support. Existing image-input, Session/Resume, external GitHub MCP, and hard-cancellation limitations remain documented in SECURITY.md and the configuration guide.

