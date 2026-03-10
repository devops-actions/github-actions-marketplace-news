---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-03-10 13:24:04 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.47.3
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.47.3**.
- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action integrates OpenTelemetry with shell scripts and GitHub workflows to automatically capture and propagate traces, metrics, and logs. It simplifies observability by automating tasks like context propagation, command instrumentation, logging from stderr and GitHub Actions, and spans creation for shell commands and HTTP requests. This tool is particularly useful for enhancing visibility and debugging in CI/CD pipelines and shell-based workflows.

## Release notes

## What's Changed
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/3045
* chore(deps): update plengauer/opentelemetry-github action to v5.47.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3054
* Deploy OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/2996
* chore(deps): update dependency traceloop-sdk to v0.53.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3049
* fix(deps): update opentelemetry-js-contrib monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3058
* chore(deps): update gradle to v9.4.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3051
* chore(deps): update docker/setup-qemu-action action to v4 by @plengauer in https://github.com/plengauer/Thoth/pull/3050
* chore(deps): update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner docker tag to v5.47.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3052
* chore(deps): update actions/setup-node action to v6.3.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3048
* Update Demo injection_deep_java by @plengauer in https://github.com/plengauer/Thoth/pull/2992
* Update Demo injection_docker_renovate by @plengauer in https://github.com/plengauer/Thoth/pull/2994
* Add OpenTelemetry instrumentation deployment criteria by @plengauer in https://github.com/plengauer/Thoth/pull/3066
* Drop leading linefeed in workflow deployment files by @Claude in https://github.com/plengauer/Thoth/pull/3077
* Fix http.request.method attribute type by @plengauer in https://github.com/plengauer/Thoth/pull/3085
* Update Demo injection_deep_gradle by @plengauer in https://github.com/plengauer/Thoth/pull/2993
* Update Demo injection_inner_xargs_parallel by @plengauer in https://github.com/plengauer/Thoth/pull/3053
* Update Demo observe_subprocesses by @plengauer in https://github.com/plengauer/Thoth/pull/2995
* Deploy OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/3072
* Fix segfault in agentic workflow due to leaking LD_PRELOAD from curl and wget by @plengauer in https://github.com/plengauer/Thoth/pull/3087
* chore(deps): update renovatebot/github-action action to v46.1.3 by @plengauer in https://github.com/plengauer/Thoth/pull/3039
* chore(deps): update docker/setup-buildx-action action to v4 by @plengauer in https://github.com/plengauer/Thoth/pull/3064
* chore(deps): update opentelemetry-python monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3056
* chore(deps): lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3038
* Include coding agents for deferred export by @plengauer in https://github.com/plengauer/Thoth/pull/3082
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/2991
* chore(deps): update plengauer/opentelemetry-github action to v5.47.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3101
* chore(deps): update github/codeql-action action to v4.32.6 by @plengauer in https://github.com/plengauer/Thoth/pull/3073
* Add workflow to re-request dismissed approvals by @Codex in https://github.com/plengauer/Thoth/pull/3095
* fix(deps): update dependency @traceloop/node-server-sdk to v0.22.8 by @plengauer in https://github.com/plengauer/Thoth/pull/3057
* chore(deps): update docker/build-push-action action to v7 by @plengauer in https://github.com/plengauer/Thoth/pull/3083
* fix(deps): update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3047
* Add github resource attributes more consistently by @plengauer in https://github.com/plengauer/Thoth/pull/3090
* Change Renovate cron schedule to daily at midnight by @plengauer in https://github.com/plengauer/Thoth/pull/3111
* Fix source file resolver for bash compatibility by @plengauer in https://github.com/plengauer/Thoth/pull/3116
* Fix release target of patch releases by @plengauer in https://github.com/plengauer/Thoth/pull/3107
* Add missing HTTP metrics to gh instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3092
* Fix python venvs for AI instrumentations by @plengauer in https://github.com/plengauer/Thoth/pull/3099
* Fix job-level caching by @plengauer in https://github.com/plengauer/Thoth/pull/3098
* Default repository-level instrumentation to enabled in deploy action by @Copilot in https://github.com/plengauer/Thoth/pull/3121
* chore(deps): update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner docker tag to v5.47.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3100
* Rename triage_new_issues workflow to autotriage by @Copilot in https://github.com/plengauer/Thoth/pull/3124
* Deploy: try direct push first, fall back to PR; trigger on all branches by @Copilot in https://github.com/plengauer/Thoth/pull/3123
* Fix `telemetry.sdk.version` showing "shell" instead of version number on Alpine by @Copilot in https://github.com/plengauer/Thoth/pull/3122
* Fix SSL certificate errors in Python and Node deep injection demos by @Copilot in https://github.com/plengauer/Thoth/pull/3120
* chore(deps): update renovatebot/github-action action to v46.1.4 by @plengauer in https://github.com/plengauer/Thoth/pull/3130
* Rename backport workflow to Autobackport by @Copilot in https://github.com/plengauer/Thoth/pull/3132
* Automatically opt into new semconvs in github actions by @plengauer in https://github.com/plengauer/Thoth/pull/3133
* Fix copilot injection by @plengauer in https://github.com/plengauer/Thoth/pull/3135
* Update Demo injection_deep_gradle by @plengauer in https://github.com/plengauer/Thoth/pull/3104
* Update Demo injection_docker_renovate by @plengauer in https://github.com/plengauer/Thoth/pull/3102
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/3103
* Fix exit trap overwriting our own instrumentation by @plengauer in https://github.com/plengauer/Thoth/pull/3088
* chore(deps): update plengauer/opentelemetry-github action to v5.47.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3108
* chore(deps): update github artifact actions (major) by @plengauer in https://github.com/plengauer/Thoth/pull/2986
* Remove obsolete workflow by @plengauer in https://github.com/plengauer/Thoth/pull/3118
* chore(deps): update actions/github-script action to v8 by @plengauer in https://github.com/plengauer/Thoth/pull/3110

## New Contributors
* @Claude made their first contribution in https://github.com/plengauer/Thoth/pull/3077
* @Codex made their first contribution in https://github.com/plengauer/Thoth/pull/3095

**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5.47.1...v5.47.3
