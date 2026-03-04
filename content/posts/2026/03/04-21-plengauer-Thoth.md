---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-03-04 21:27:17 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.46.0
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.46.0**.
- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action enables the seamless generation and collection of OpenTelemetry traces, metrics, and logs from POSIX-compliant shell scripts and GitHub workflows. It automates tasks such as context propagation, auto-instrumentation of commands, injection into child scripts and GitHub actions, and automatic log collection, simplifying observability for shell-based operations and CI/CD pipelines. The action enhances debugging and monitoring by providing detailed telemetry data without requiring extensive manual setup.

## Release notes

## What's Changed
* chore(deps): update plengauer/opentelemetry-github action to v5.45.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2990
* chore(deps): update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner docker tag to v5.45.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2989
* Deploy OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/2897
* chore(deps): update github/gh-aw action to v0.50.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2956
* Fix python instrumentation by @plengauer in https://github.com/plengauer/Thoth/pull/3009
* chore(deps): update dependency traceloop-sdk to v0.52.6 by @plengauer in https://github.com/plengauer/Thoth/pull/2934
* fix(deps): update dependency @opentelemetry/auto-instrumentations-node to v0.70.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3011
* fix(deps): update dependency @actions/artifact to v6.2.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3010
* chore(deps): update actions/attest-build-provenance action to v4 by @plengauer in https://github.com/plengauer/Thoth/pull/3012
* Remove concurrency group from repository-level instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3016
* Fix 404 errors in repository-level instrumentation contributor count by @Copilot in https://github.com/plengauer/Thoth/pull/3017
* Fix inconsistent CICD span attributes in job-level instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3020
* Rename observability.yml to observability_workflow.yml by @Copilot in https://github.com/plengauer/Thoth/pull/3021
* Fix caching broken on ubuntu-slim in agentic workflows by @Copilot in https://github.com/plengauer/Thoth/pull/3018
* Optimize performance by @plengauer in https://github.com/plengauer/Thoth/pull/2983
* Add tests for repository-level instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3025
* Refactor signal headers assignment and content-encoding in export function by @plengauer in https://github.com/plengauer/Thoth/pull/3014
* Deploy Super Linter by @Copilot in https://github.com/plengauer/Thoth/pull/3022
* Refactor agent.sh by removing redundant alias commands by @plengauer in https://github.com/plengauer/Thoth/pull/3033
* Remove obsolete cache option from workflow steps by @plengauer in https://github.com/plengauer/Thoth/pull/3036
* Rename job 'collect' to 'export' in action.yml by @plengauer in https://github.com/plengauer/Thoth/pull/3035
* Add default patters for masking by @plengauer in https://github.com/plengauer/Thoth/pull/3037
* Add agentic workflow to auto-create issues from Analyze workflow failures by @Copilot in https://github.com/plengauer/Thoth/pull/3041
* fix(deps): update dependency net.bytebuddy:byte-buddy to v1.18.7-jdk5 by @plengauer in https://github.com/plengauer/Thoth/pull/3026
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/3044
* Fix fast-path install overwriting /opt ACL by @Copilot in https://github.com/plengauer/Thoth/pull/3031
* chore(deps): update github/codeql-action action to v4.32.5 by @plengauer in https://github.com/plengauer/Thoth/pull/3040


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5...v5.46.0
