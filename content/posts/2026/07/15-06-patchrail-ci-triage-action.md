---
title: PatchRail CI Triage
date: 2026-07-15 06:53:00 +00:00
tags:
  - patchrail
  - GitHub Actions
draft: false
repo: https://github.com/patchrail/ci-triage-action
marketplace: https://github.com/marketplace/actions/patchrail-ci-triage
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  The PatchRail CI Triage Action classifies a failed CI log locally using the `patchrail` CLI, providing a remediation guide as a job annotation and step summary. It handles logs correctly by redirecting stderr to the output file and supports both local files and raw log text inputs, while also allowing for redaction of sensitive information. The action is designed to be read-only and does not interact with external services or open pull requests.
---


Version updated for **https://github.com/patchrail/ci-triage-action** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/patchrail-ci-triage) to find the latest changes.

## Action Summary

The PatchRail CI Triage Action classifies a failed CI log locally using the `patchrail` CLI, providing a remediation guide as a job annotation and step summary. It handles logs correctly by redirecting stderr to the output file and supports both local files and raw log text inputs, while also allowing for redaction of sensitive information. The action is designed to be read-only and does not interact with external services or open pull requests.

## What's Changed

Classify a failed CI log **locally** on the runner and surface the matching PatchRail `/fix` guide as a job annotation and step summary. Read-only by design: it never opens a pull request, posts a comment, or sends your logs anywhere.

```yaml
- name: Build
  shell: bash
  run: make build 2>&1 | tee build.log
- name: PatchRail CI triage
  if: failure()
  uses: patchrail/ci-triage-action@v1.1.0
  with:
    log-path: build.log
```

## What this release fixes

- **An `unknown` verdict now names the line the runner flagged.** When no rule matches, the action still hands back the line the runner itself reported for the failing step, so you land on the error instead of on "no signal found".
- **A success line announced through the error channel is no longer reported as the place to start.** Runners that print `✅ task started.` on the error stream used to be offered as the cause of the failure. (Ships via the `patchrail` 0.6.1 classifier.)
- **The action refuses a result schema it cannot read** instead of annotating a wrong answer, and it bounds the `patchrail` version it installs.
- **The README capture snippet no longer hides failed builds.** The documented step now runs under `shell: bash` (`-o pipefail`), so `make build | tee build.log` cannot exit `0` on a broken build and sail through CI.

## Pinning

`v1.1.0` is immutable — pin it if you want a fixed version. `v1` is a moving major tag kept on the latest tested commit; both currently point at the same code.

