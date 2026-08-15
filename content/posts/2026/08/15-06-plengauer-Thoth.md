---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-08-15 06:50:03 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.61.0
dependentsNumber: "14"
actionType: Composite
actionSummary: |
  This GitHub Action automates the collection and instrumentation of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows. It automatically propagates context via HTTP requests, instruments all available commands, injects into child scripts and executables using shebangs, and integrates with GitHub actions for workflow-level and job-level monitoring. The action is installable via package managers and provides a comprehensive set of features to monitor applications and CI/CD pipelines efficiently.
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.61.0**.

- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action automates the collection and instrumentation of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows. It automatically propagates context via HTTP requests, instruments all available commands, injects into child scripts and executables using shebangs, and integrates with GitHub actions for workflow-level and job-level monitoring. The action is installable via package managers and provides a comprehensive set of features to monitor applications and CI/CD pipelines efficiently.

## What's Changed

## What's Changed
* Add Xcode 27 preview macOS runner coverage in GitHub workflow tests by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3894
* fix: use `rm -f` in `otel_shutdown` to handle missing FIFO gracefully by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3896
* Keep gh-aw agent execution on the current job trace by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3897
* Fall back to OTEL_KILL_SWITCH repository variable when kill switch input is unset by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3893
* Fix autofix: inject triggering-workflow-run-id into agent prompt context by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3898
* Expand descrption to improve code reviews by @plengauer in https://github.com/plengauer/Thoth/pull/3900
* feat(job): async npm install + shell-based cache restore to remove npm from critical path by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3895
* Update actions/setup-java action to v5.7.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3890
* Prevent `quality` job failures from invalid MegaLinter SARIF fixes payload by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3827
* Analyze: always upload `megalinter-reports` artifact for SARIF-only linter triage by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3866
* Update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/3822
* Update github/codeql-action action to v3.37.6 by @plengauer in https://github.com/plengauer/Thoth/pull/3889
* Update actions/attest-build-provenance action to v4.2.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3916
* Update renovatebot/github-action action to v46.2.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3872
* Update otel/opentelemetry-collector-contrib Docker tag to v0.158.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3904
* Update dependency opentelemetry-resourcedetector-gcp to v1.14.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3811
* Pin dependencies by @plengauer in https://github.com/plengauer/Thoth/pull/3819
* Lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3868
* Update Gradle to v9.7.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3917
* feat: adopt $/ self-repository syntax for same-repo action references by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3899
* Exclude workflow YAML from MegaLinter lychee URL checks by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3864
* Format Python sources with Black + isort (MegaLinter valid finding) by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3859
* Use bash loadable builtins for rm and mkfifo when available by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3912
* chore: exclude generated/captured files from MegaLinter by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3863
* Update Demo injection_shebang by @plengauer in https://github.com/plengauer/Thoth/pull/3924
* Update Demo injection_deep_node by @plengauer in https://github.com/plengauer/Thoth/pull/3926
* Update Demo context_propagation_http_wget by @plengauer in https://github.com/plengauer/Thoth/pull/3930
* Update Demo _simple_hello_world by @plengauer in https://github.com/plengauer/Thoth/pull/3927
* Update Demo injection_deep_python by @plengauer in https://github.com/plengauer/Thoth/pull/3932
* Update Demo context_propagation_http_curl by @plengauer in https://github.com/plengauer/Thoth/pull/3925
* Update Demo injection_inner_xargs_parallel by @plengauer in https://github.com/plengauer/Thoth/pull/3933
* Update actions/upload-artifact action to v7 by @plengauer in https://github.com/plengauer/Thoth/pull/3938
* Update dependency org.junit.jupiter:junit-jupiter to v6.1.3 by @plengauer in https://github.com/plengauer/Thoth/pull/3937
* Fix deep docker injection deadlock caused by bash loadable mkfifo ignoring -m 666 by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3986
* Update renovatebot/github-action action to v46.2.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3978
* Update oxsecurity/megalinter action to v10 by @plengauer in https://github.com/plengauer/Thoth/pull/3954
* Update github/gh-aw-actions action to v0.86.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3821
* Update plengauer/opentelemetry-github action to v5.60.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3961
* Pin actions/upload-artifact action to v7.0.1 by @plengauer in https://github.com/plengauer/Thoth/pull/3936
* Update github/codeql-action action to v4.37.6 by @plengauer in https://github.com/plengauer/Thoth/pull/3747
* Update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner Docker tag to v5.60.0 by @plengauer in https://github.com/plengauer/Thoth/pull/3957
* Triple timeout for SuperLinter and MegaLinter CI jobs by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3982
* Fix report workflow failure on ubuntu-slim by pinning gh repository context by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3984
* Update Demo injection_deep_python by @plengauer in https://github.com/plengauer/Thoth/pull/3960
* Update Demo context_propagation_http_wget by @plengauer in https://github.com/plengauer/Thoth/pull/3958
* Update Demo observe_subprocesses by @plengauer in https://github.com/plengauer/Thoth/pull/3934
* Update Demo injection_shebang by @plengauer in https://github.com/plengauer/Thoth/pull/3956
* Update Demo context_propagation_http_netcat by @plengauer in https://github.com/plengauer/Thoth/pull/3923
* Update Demo injection_child by @plengauer in https://github.com/plengauer/Thoth/pull/3931
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/3929
* Update Demo injection_docker_renovate by @plengauer in https://github.com/plengauer/Thoth/pull/3935
* Update Demo _simple_hello_world by @plengauer in https://github.com/plengauer/Thoth/pull/3955
* Update Demo injection_deep_java by @plengauer in https://github.com/plengauer/Thoth/pull/3928
* Remove __kill_switch from copilot-setup-steps instrumentation by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3977
* Update dependency traceloop-sdk to v0.62.3 by @plengauer in https://github.com/plengauer/Thoth/pull/3988
* Update Demo injection_deep_node by @plengauer in https://github.com/plengauer/Thoth/pull/3963
* Update Demo context_propagation_http_curl by @plengauer in https://github.com/plengauer/Thoth/pull/3962
* Apply shfmt formatting and configure MegaLinter shfmt style by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3869
* Preserve all archived Python deep-injection versions in Docker mode by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3983
* Set executable mode on all shell scripts in `src/usr/share/opentelemetry_shell` by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3981
* Add `otel4sh` executable wrapper via packaged injection script by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3980
* Make job-level container skip opt-in and document the toggle by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3969
* Fix Gradle deep-injection failure on newer Gradle daemons by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3966
* Fix renovate-copilot-instrumentation job failing due to missing git context by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3965
* Fix autofix reported incomplete result due to API access issue by @plengauer with @Codex in https://github.com/plengauer/Thoth/pull/3941
* Apply autobackport.yml template update (580a975) by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3902
* Allow MegaLinter zizmor audits to use `GITHUB_TOKEN` by @plengauer with @Copilot in https://github.com/plengauer/Thoth/pull/3854
* Update Demo injection_inner_xargs_parallel by @plengauer in https://github.com/plengauer/Thoth/pull/3959
* Fix autorerun pattern by @plengauer in https://github.com/plengauer/Thoth/pull/3992
* Fix local redirect by @plengauer in https://github.com/plengauer/Thoth/pull/3993
* Update github/gh-aw-actions action to v0.86.2 by @plengauer in https://github.com/plengauer/Thoth/pull/3990
* Lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/3979
* Update Demo observe_subprocesses by @plengauer in https://github.com/plengauer/Thoth/pull/3999
* Update Demo injection_deep_python by @plengauer in https://github.com/plengauer/Thoth/pull/3997
* Update Demo injection_deep_java by @plengauer in https://github.com/plengauer/Thoth/pull/3995
* Update Demo injection_deep_node by @plengauer in https://github.com/plengauer/Thoth/pull/3998
* Update Demo injection_docker_renovate by @plengauer in https://github.com/plengauer/Thoth/pull/4000
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/3996
* Fix caching in job-level instrumentation by @plengauer in https://github.com/plengauer/Thoth/pull/4003
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/4001


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5.60.0...v5.61.0
