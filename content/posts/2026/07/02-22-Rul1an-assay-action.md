---
title: Assay - AI Agent Security
date: 2026-07-02 22:17:38 +00:00
tags:
  - Rul1an
  - GitHub Actions
draft: false
repo: https://github.com/Rul1an/assay-action
marketplace: https://github.com/marketplace/actions/assay-ai-agent-security
version: v3.0.1
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/Rul1an/assay-action** to version **v3.0.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/assay-ai-agent-security) to find the latest changes.

## What's Changed

v3 is the current major: verify, lint, and diff evidence bundles from AI agent runs in CI, with coding-agent sandbox governance and in-toto/DSSE bundle attestation.

**What v3 carries**
- `sandbox-command`: run a coding agent under `assay sandbox` and verify the resulting evidence bundle in the same job.
- `attest-key`: in-toto/DSSE attestation over the bundle (`assay evidence attest`).
- The v2.1 AI Agent Security feature set: compliance packs, BYOS push, artifact attestation, coverage badges, PR summaries, SARIF for code scanning.

**v3.0.1 fixes**
- Authenticate the latest-release lookup and resolve the release before caching the CLI (#30, #31), removing rate-limit flakes on busy runners.

**Breaking vs v2**: the legacy marketplace `mode`/`run` inputs are not carried; pin `Rul1an/assay-action@v2` if you depend on those. Migration notes in the [action spec](https://github.com/Rul1an/assay/blob/main/docs/architecture/SPEC-GitHub-Action-v2.1.md).

Pin the major: `uses: Rul1an/assay-action@v3`
