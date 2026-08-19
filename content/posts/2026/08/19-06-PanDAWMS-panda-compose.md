---
title: Setup PanDA
date: 2026-08-19 06:30:23 +00:00
tags:
  - PanDAWMS
  - GitHub Actions
draft: false
repo: https://github.com/PanDAWMS/panda-compose
marketplace: https://github.com/marketplace/actions/setup-panda
version: v1.1.0
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  This GitHub Action provides a self-contained Docker Compose stack for running a local PanDA workload management system, designed for development and CI testing of tools that integrate with PanDA. The action automates the setup and configuration of PanDA services including databases, message brokers, and servers, while also providing configuration options and scripts for submitting and managing jobs.
---


Version updated for **https://github.com/PanDAWMS/panda-compose** to version **v1.1.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-panda) to find the latest changes.

## Action Summary

This GitHub Action provides a self-contained Docker Compose stack for running a local PanDA workload management system, designed for development and CI testing of tools that integrate with PanDA. The action automates the setup and configuration of PanDA services including databases, message brokers, and servers, while also providing configuration options and scripts for submitting and managing jobs.

## What's Changed

## What's Changed
* Add Dependabot configuration for GitHub Actions and Docker ecosystems by @wdconinc with @Copilot in https://github.com/PanDAWMS/panda-compose/pull/10
* chore(deps): bump actions/setup-python from 5 to 6 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/15
* chore(deps): bump actions/configure-pages from 5 to 6 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/13
* chore(deps): bump actions/deploy-pages from 4 to 5 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/14
* chore(deps): bump actions/checkout from 4 to 6 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/12
* chore(deps): bump actions/upload-pages-artifact from 3 to 5 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/11
* README.md: replace your-org with eic by @veprbl in https://github.com/PanDAWMS/panda-compose/pull/16
* doc: use PANDA_COMPOSE_LOCAL in example invocation by @veprbl in https://github.com/PanDAWMS/panda-compose/pull/17
* feat: publish docker-compose.yml as OCI artifact to ghcr.io by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/19
* feat: Docker-in-Docker job execution via host socket by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/18
* doc: brings all docs up to date with the current state of the stack by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/20
* fix: inline --script content as 'sh -c' to bridge host-container gap by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/21
* chore(deps): bump docker/login-action from 3 to 4 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/22
* fix(ci): change regex for docker-compose checksum by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/23
* fix(ci): increase healthcheck windows for panda-database by @wdconinc in https://github.com/PanDAWMS/panda-compose/pull/24
* Fixes for partitions initialization and for CI by @veprbl in https://github.com/PanDAWMS/panda-compose/pull/29
* chore(deps): bump actions/checkout from 6 to 7 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/26
* chore(deps): bump actions/setup-python from 6 to 7 by @dependabot[bot] in https://github.com/PanDAWMS/panda-compose/pull/27
* docs: update eic/panda-compose references after transfer to PanDAWMS by @wenaus in https://github.com/PanDAWMS/panda-compose/pull/25

## New Contributors
* @wdconinc with @Copilot made their first contribution in https://github.com/PanDAWMS/panda-compose/pull/10
* @dependabot[bot] made their first contribution in https://github.com/PanDAWMS/panda-compose/pull/15
* @veprbl made their first contribution in https://github.com/PanDAWMS/panda-compose/pull/16
* @wenaus made their first contribution in https://github.com/PanDAWMS/panda-compose/pull/25

**Full Changelog**: https://github.com/PanDAWMS/panda-compose/compare/v1.0.0...v1.1.0
