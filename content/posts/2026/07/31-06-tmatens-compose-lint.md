---
title: compose-lint
date: 2026-07-31 06:32:07 +00:00
tags:
  - tmatens
  - GitHub Actions
draft: false
repo: https://github.com/tmatens/compose-lint
marketplace: https://github.com/marketplace/actions/compose-lint
version: v0.14.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  The `compose-lint` GitHub Action is a security-focused linter that scans Docker Compose files to detect and auto-fix common misconfigurations, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It checks for OWASP and CIS Docker Benchmark best practices and provides detailed reports of findings with suggested fixes. The action is designed for developers who ship Compose to production or want a fast pre-merge gate on infrastructure-as-code.
---


Version updated for **https://github.com/tmatens/compose-lint** to version **v0.14.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/compose-lint) to find the latest changes.

## Action Summary

The `compose-lint` GitHub Action is a security-focused linter that scans Docker Compose files to detect and auto-fix common misconfigurations, such as privileged containers, unpinned images, host-network sharing, sensitive bind mounts, hard-coded credentials, and more. It checks for OWASP and CIS Docker Benchmark best practices and provides detailed reports of findings with suggested fixes. The action is designed for developers who ship Compose to production or want a fast pre-merge gate on infrastructure-as-code.

## What's Changed


### Fixed

- `fix --apply` now prints the `⚠ behavior-changing` caveats for the fixes it
  applied, in the same form the dry-run diff uses. Previously the caveats were
  rendered only on the dry-run path, so a one-shot `compose-lint fix --apply`
  (the CI and script-pipeline case) wrote behavior-changing edits and printed
  only `applied N fix(es)` — the warning never reached the user at the moment
  it mattered. Runs whose edits all carry no caveat print no banner; stdout
  stays data-clean. Reported from the r/selfhosted feedback thread (#425,
  #428).


