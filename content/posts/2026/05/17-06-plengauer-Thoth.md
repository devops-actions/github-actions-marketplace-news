---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-05-17 06:27:06 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.53.0
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.53.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action enables automatic collection and propagation of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows. It automates tasks such as context propagation, command auto-instrumentation, child script integration, and log collection from stderr and GitHub actions, providing enhanced observability for debugging and performance monitoring. Key capabilities include support for multiple shell environments, HTTP client auto-instrumentation, and seamless integration into CI/CD pipelines.

## What's Changed

## What's Changed
* Update plengauer/create-package-repository action to v0.2.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3301
* Deploy OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/3300
* Update plengauer/opentelemetry-github action to v5.50.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3284
* Fix fast install dependency check broken on ubuntu-slim runners by @Copilot in https://github.com/plengauer/Thoth/pull/3286
* Add dynatrace dashboards by @plengauer in https://github.com/plengauer/Thoth/pull/3296
* Fix job-level instrumentation showing wrapper bash path as span name by @Copilot in https://github.com/plengauer/Thoth/pull/3290
* Mute error on old ubis by @plengauer in https://github.com/plengauer/Thoth/pull/3299
* Update actions/download-artifact digest to 3e5f45b by @plengauer in https://github.com/plengauer/Thoth/pull/3209
* Update actions/download-artifact action to v8.0.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3164
* Update dependency io.opentelemetry.javaagent:opentelemetry-javaagent to v2.26.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3270
* Update dependency net.bytebuddy:byte-buddy to v1.18.8-jdk5 by @plengauer in https://github.com/plengauer/Thoth/pull/3279
* Update Gradle to v9.4.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3211
* Update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3271
* Update dependency requests to v2.33.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3272
* Update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner Docker tag to v5.50.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3229
* Update github/codeql-action action to v4.35.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3242
* Update otel/opentelemetry-collector-contrib Docker tag to v0.149.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3212
* Update super-linter/super-linter action to v8.6.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3280
* Update actions/deploy-pages action to v5 by @plengauer in https://github.com/plengauer/Thoth/pull/3275
* Update actions/download-artifact action to v8 by @plengauer in https://github.com/plengauer/Thoth/pull/3213
* Update Node.js to v25 by @plengauer in https://github.com/plengauer/Thoth/pull/3214
* Update plengauer/autoversion action to v3 by @plengauer in https://github.com/plengauer/Thoth/pull/3302
* Lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3276
* Temper the speed of these tests, otherwise they burn up rate limit super fast by @plengauer in https://github.com/plengauer/Thoth/pull/3295
* Added pattern for rate limit in renovate tests by @plengauer in https://github.com/plengauer/Thoth/pull/3277
* chore: add helpers:pinGitHubActionDigests to Renovate config by @Copilot in https://github.com/plengauer/Thoth/pull/3304
* Add self-trigger path to recompile_agentic_workflows workflow by @Copilot in https://github.com/plengauer/Thoth/pull/3305
* Update Test Images by @plengauer in https://github.com/plengauer/Thoth/pull/3292
* Update renovatebot/github-action action to v46.1.8 by @plengauer in https://github.com/plengauer/Thoth/pull/3269
* Update dependency @traceloop/node-server-sdk to v0.24.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3278
* Update plengauer/create-package-repository action to v0.3.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3308
* Improve branch name by @plengauer in https://github.com/plengauer/Thoth/pull/3309
* Fix curl spans incorrectly setting request body size from response content-length by @Copilot in https://github.com/plengauer/Thoth/pull/3283
* Fix copilot coding agent span injection (tar -zxv extraction never matched) by @Copilot in https://github.com/plengauer/Thoth/pull/3291
* Update opentelemetry-python monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3311
* Add GitHub agentic workflow (gh-aw) instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3298
* Introduce architecture specific packages by @plengauer in https://github.com/plengauer/Thoth/pull/3179
* Update actions/github-script action to v9 by @plengauer in https://github.com/plengauer/Thoth/pull/3312
* Update workflow to use dynamic base and branch names by @plengauer in https://github.com/plengauer/Thoth/pull/3306
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/3334
* Update dependency traceloop-sdk to v0.58.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3210
* Update opentelemetry-js-contrib monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3274
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/3329
* Update actions/github-script digest to 3a2844b by @plengauer in https://github.com/plengauer/Thoth/pull/3342
* Update actions/download-artifact action to v8.0.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3344
* Update github/gh-aw-actions digest to ea222e3 by @plengauer in https://github.com/plengauer/Thoth/pull/3343
* Update Vampire/setup-wsl action to v7 by @plengauer in https://github.com/plengauer/Thoth/pull/3345
* Add name to auto-generated copilot-setup-steps workflow by @Copilot in https://github.com/plengauer/Thoth/pull/3338
* Lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3348
* Update plengauer/autoversion action to v3.1.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3347
* Fix agentic workflow compilation by @plengauer in https://github.com/plengauer/Thoth/pull/3354
* Update actions/upload-artifact action to v7.0.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3323
* Update peter-evans/create-pull-request action to v8.1.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3324
* Update docker/build-push-action action to v7.1.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3326
* Update actions/upload-pages-artifact action to v5 by @plengauer in https://github.com/plengauer/Thoth/pull/3328
* Update otel/opentelemetry-collector-contrib Docker tag to v0.150.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3363
* Update actions/cache action to v5.0.5 by @plengauer in https://github.com/plengauer/Thoth/pull/3360
* Update dependency com.google.guava:guava to v33.6.0-jre by @plengauer in https://github.com/plengauer/Thoth/pull/3364
* Add Copilot coding agent subagents for shell instrumentation, tests, actions, packaging, and dependencies by @Copilot in https://github.com/plengauer/Thoth/pull/3369
* Update alpine Docker tag to v3.23.4 by @plengauer in https://github.com/plengauer/Thoth/pull/3371
* Update github/codeql-action action to v4.35.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3372
* Fix agentic workflow segfault by cleaning HTTP injection state before async log-drain wait by @Copilot in https://github.com/plengauer/Thoth/pull/3375
* Integrate with gh-aw built-in otel by @plengauer in https://github.com/plengauer/Thoth/pull/3379
* Update dependency @traceloop/node-server-sdk to v0.26.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3346
* Update renovatebot/github-action action to v46.1.10 by @plengauer in https://github.com/plengauer/Thoth/pull/3362
* Update actions/setup-node action to v6.4.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3381
* Update dependency io.opentelemetry.javaagent:opentelemetry-javaagent to v2.27.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3382
* Preserve full nested GitHub Action names in `github.actions.action.name` by @Copilot in https://github.com/plengauer/Thoth/pull/3378
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/3393
* Update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3380
* Update opentelemetry-python monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3385
* Deploy OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/3392
* Add masking pattern for new GitHub App installation token format by @Copilot in https://github.com/plengauer/Thoth/pull/3387
* Rename "Copilot coding agent" to "Copilot cloud agent" by @Copilot in https://github.com/plengauer/Thoth/pull/3337
* Add monthly GitHub changelog monitor agentic workflow by @Copilot in https://github.com/plengauer/Thoth/pull/3390
* Update dependency traceloop-sdk to v0.60.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3407
* Update github/gh-aw-actions action to v0.71.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3361
* Update dependency opentelemetry-resourcedetector-gcp to v1.12.0a0 by @plengauer in https://github.com/plengauer/Thoth/pull/3411
* Fix token for compile aw by @plengauer in https://github.com/plengauer/Thoth/pull/3370
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/3415
* Lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3420
* Update Node.js to v26 by @plengauer in https://github.com/plengauer/Thoth/pull/3423
* Fix /proc/PID/cmdline race condition in otelapi.sh by @Copilot in https://github.com/plengauer/Thoth/pull/3424
* Update github/codeql-action action to v4.35.4 by @plengauer in https://github.com/plengauer/Thoth/pull/3419
* Optimize package size by deduplicating Node/Python version archives by @Copilot in https://github.com/plengauer/Thoth/pull/3321
* Fix _otel_commandline_override: unbound variable error under set -u by @Copilot in https://github.com/plengauer/Thoth/pull/3425
* Update dependency semver to v7.8.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3426
* Replace `rev`-based basename extraction with `_otel_path_2_name` across shell runtime and tests by @Copilot in https://github.com/plengauer/Thoth/pull/3428
* Update renovatebot/github-action action to v46.1.14 by @plengauer in https://github.com/plengauer/Thoth/pull/3406
* Add custom commit message and commit signing support to deploy action by @Copilot in https://github.com/plengauer/Thoth/pull/3432
* Update Gradle to v9.5.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3412
* Update otel/opentelemetry-collector-contrib Docker tag to v0.152.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3413
* Update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3414
* Expose repository custom properties as resource attributes in all instrumentation types by @Copilot in https://github.com/plengauer/Thoth/pull/3399
* Update opentelemetry-js-contrib monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3408
* Prevent malformed `OTEL_RESOURCE_ATTRIBUTES` from GitHub job instrumentation by @Copilot in https://github.com/plengauer/Thoth/pull/3431
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/3433
* Fix publish workflow release action resolution and bump major version for re-release by @Copilot in https://github.com/plengauer/Thoth/pull/3438
* Remove unnecessary download-artifact step from publish.yml by @plengauer in https://github.com/plengauer/Thoth/pull/3443
* Fix token secret name in publish workflow by @plengauer in https://github.com/plengauer/Thoth/pull/3444


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5...v5.53.0
