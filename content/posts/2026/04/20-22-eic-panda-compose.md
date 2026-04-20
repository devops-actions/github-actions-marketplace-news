---
title: Setup PanDA
date: 2026-04-20 22:09:11 +00:00
tags:
  - eic
  - GitHub Actions
draft: false
repo: https://github.com/eic/panda-compose
marketplace: https://github.com/marketplace/actions/setup-panda
version: v1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/eic/panda-compose** to version **v1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/setup-panda) to find the latest changes.

## Action Summary

The `panda-compose` GitHub Action provides a self-contained Docker Compose stack for deploying a local instance of the PanDA workload management system. It is designed for development and CI testing of tools that integrate with PanDA, such as workflow managers and custom plugins. This action automates the setup of key PanDA components, including databases, message brokers, and APIs, enabling users to test and develop against a functional PanDA environment without requiring a full production-grade deployment.

## What's Changed

## What's Changed
* fix: avoid `pip install panda-client` permissions denied error by @wdconinc in https://github.com/eic/panda-compose/pull/1
* Simplify panda-client installation in CI workflow by @wdconinc in https://github.com/eic/panda-compose/pull/2
* Remove jacamar-ci-specific references; make project generic by @wdconinc in https://github.com/eic/panda-compose/pull/3
* chore: switch from bitnami/mariadb to standard mariadb:10.11 by @wdconinc in https://github.com/eic/panda-compose/pull/5
* feat: real compute backend via Harvester subprocess plugins by @wdconinc in https://github.com/eic/panda-compose/pull/4
* docs: add Docsify documentation site with GitHub Pages deployment by @wdconinc in https://github.com/eic/panda-compose/pull/7
* feat: add composite action (uses: eic/panda-compose@main) by @wdconinc in https://github.com/eic/panda-compose/pull/8
* Shorten description in action.yml by @wdconinc in https://github.com/eic/panda-compose/pull/9


**Full Changelog**: https://github.com/eic/panda-compose/commits/v1.0.0
