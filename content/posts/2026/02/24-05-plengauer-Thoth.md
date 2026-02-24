---
title: OpenTelemetry for GitHub Workflows, Jobs and Steps
date: 2026-02-24 05:42:29 +00:00
tags:
  - plengauer
  - GitHub Actions
draft: false
repo: https://github.com/plengauer/Thoth
marketplace: https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps
version: v5.45.1
dependentsNumber: "14"
actionType: Composite
---


Version updated for **https://github.com/plengauer/Thoth** to version **v5.45.1**.
- This action is used across all versions by **14** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/opentelemetry-for-github-workflows-jobs-and-steps) to find the latest changes.

## Action Summary

This GitHub Action enables the collection of OpenTelemetry traces, metrics, and logs from shell scripts and GitHub workflows, providing automatic instrumentation, context propagation, and log collection for enhanced observability. It automates the monitoring of shell commands, child scripts, and workflow actions, offering insights into execution and network interactions without requiring manual instrumentation. By integrating seamlessly with various shells and GitHub CI/CD pipelines, it simplifies troubleshooting and performance analysis for developers.

## Release notes

## What's Changed
* Update plengauer/opentelemetry-github action to v5.43.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2888
* Update opentelemetry-js monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/2891
* Fix gcloud action injection by @plengauer in https://github.com/plengauer/Thoth/pull/2814
* Update dependency @actions/cache to v6 by @plengauer in https://github.com/plengauer/Thoth/pull/2857
* Add histogram metrics support by @Copilot in https://github.com/plengauer/Thoth/pull/2880
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/2886
* Update Demo injection_deep_java by @plengauer in https://github.com/plengauer/Thoth/pull/2887
* Update Demo observe_subprocesses by @plengauer in https://github.com/plengauer/Thoth/pull/2890
* Added deep node AI instrumentations by @plengauer in https://github.com/plengauer/Thoth/pull/2894
* Add agentic workflow for auto-approving dependency PRs by @Copilot in https://github.com/plengauer/Thoth/pull/2906
* Add OpenAI and GitHub Copilot API detection by @plengauer in https://github.com/plengauer/Thoth/pull/2920
* Do not self-instrument repository-level instrumentation by @plengauer in https://github.com/plengauer/Thoth/pull/2921
* Remove unnecessary blank lines in main.sh by @plengauer in https://github.com/plengauer/Thoth/pull/2923
* Fix deploy conditions by @plengauer in https://github.com/plengauer/Thoth/pull/2912
* Improve PR description in deploy by @plengauer in https://github.com/plengauer/Thoth/pull/2900
* Improve copilot instructions by @plengauer in https://github.com/plengauer/Thoth/pull/2901
* Fix function definition in busybox by @plengauer in https://github.com/plengauer/Thoth/pull/2899
* Add copilot code review to observed workflows by @plengauer in https://github.com/plengauer/Thoth/pull/2902
* Add auto-recompile workflow for agentic workflow markdown files by @Copilot in https://github.com/plengauer/Thoth/pull/2907
* Remove reviewer resolution step from demo refresh workflow by @plengauer in https://github.com/plengauer/Thoth/pull/2909
* Enhance OpenTelemetry instrumentation for AI requests by @plengauer in https://github.com/plengauer/Thoth/pull/2903
* Fix renovate hang by @plengauer in https://github.com/plengauer/Thoth/pull/2911
* Added deep python ai instrumentations by @plengauer in https://github.com/plengauer/Thoth/pull/2895
* Add GitHub Agentic Workflow for automatic issue labeling by @Copilot in https://github.com/plengauer/Thoth/pull/2905
* Fix random failures due to SIGPIPES in head implementations by @plengauer in https://github.com/plengauer/Thoth/pull/2926
* Improve repository instrumentation with additional metrics by @plengauer in https://github.com/plengauer/Thoth/pull/2924
* Update dependency io.opentelemetry.javaagent:opentelemetry-javaagent to v2.25.0 by @plengauer in https://github.com/plengauer/Thoth/pull/2896
* Update Test Images by @plengauer in https://github.com/plengauer/Thoth/pull/2858
* Update dependency net.bytebuddy:byte-buddy to v1.18.5 by @plengauer in https://github.com/plengauer/Thoth/pull/2908
* Fix agentic workflow compile by @plengauer in https://github.com/plengauer/Thoth/pull/2936
* Correct jammy status handling in Ubuntu updates by @plengauer in https://github.com/plengauer/Thoth/pull/2940
* Fix security flaw that is treated as compile error by @plengauer in https://github.com/plengauer/Thoth/pull/2938
* Update ghcr.io/plengauer/opentelemetry-github-workflow-instrumentation-runner Docker tag to v5.43.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2885
* Update dependency org.junit.jupiter:junit-jupiter to v6.0.3 by @plengauer in https://github.com/plengauer/Thoth/pull/2922
* Simplify auto-approve workflow by removing condition by @plengauer in https://github.com/plengauer/Thoth/pull/2946
* Refine triage process for new issues by @plengauer in https://github.com/plengauer/Thoth/pull/2947
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/2941
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/2949
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/2954
* Update Demo injection_docker_renovate by @plengauer in https://github.com/plengauer/Thoth/pull/2838
* Update Demo _complex_download_github_releases by @plengauer in https://github.com/plengauer/Thoth/pull/2931
* Fix deploy runner by @plengauer in https://github.com/plengauer/Thoth/pull/2948
* Update github/codeql-action action to v4.32.3 by @plengauer in https://github.com/plengauer/Thoth/pull/2898
* Update opentelemetry-js-contrib monorepo by @plengauer in https://github.com/plengauer/Thoth/pull/2939
* Update otel/opentelemetry-collector-contrib Docker tag to v0.146.1 by @plengauer in https://github.com/plengauer/Thoth/pull/2952
* Update actions/checkout action to v6.0.2 by @plengauer in https://github.com/plengauer/Thoth/pull/2927
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/2964
* Update actions/download-artifact action to v7 by @plengauer in https://github.com/plengauer/Thoth/pull/2957
* Optimize event types for autoapprove workflow by @plengauer in https://github.com/plengauer/Thoth/pull/2959
* Update GitHub Action supply chain integrity instructions by @plengauer in https://github.com/plengauer/Thoth/pull/2961
* fix: workflow-level instrumentation BOM stripping broken on Alpine by @Copilot in https://github.com/plengauer/Thoth/pull/2973
* Apply rate limit to triage new issues workflow by @Copilot in https://github.com/plengauer/Thoth/pull/2972
* Add workflow to auto-approve workflow runs on main branch by @Copilot in https://github.com/plengauer/Thoth/pull/2962
* Fix traceloop-sdk compatibility with Python 3.9 by @Copilot in https://github.com/plengauer/Thoth/pull/2971
* Improve dynamic workflow calculation by @plengauer in https://github.com/plengauer/Thoth/pull/2963
* Update Demo injection_deep_gradle by @plengauer in https://github.com/plengauer/Thoth/pull/2889
* Fix artifact upload which made trace context upload / download fail in case it was the first invocation by @plengauer in https://github.com/plengauer/Thoth/pull/2974
* chore(deps): update github/codeql-action action to v4.32.4 by @plengauer in https://github.com/plengauer/Thoth/pull/2969
* chore(deps): update renovatebot/github-action action to v46 by @plengauer in https://github.com/plengauer/Thoth/pull/2860
* Recompile Agentic Workflows by @plengauer in https://github.com/plengauer/Thoth/pull/2975
* Expand renovate integration test to run 10 times in parallel by @Copilot in https://github.com/plengauer/Thoth/pull/2970
* Simplify workflow triggers by @plengauer in https://github.com/plengauer/Thoth/pull/2977
* Add workflow dependency for OpenTelemetry by @plengauer in https://github.com/plengauer/Thoth/pull/2979
* Fix python trigger compilation by @plengauer in https://github.com/plengauer/Thoth/pull/2982
* Re-introduce nodejs traceloop instrumentations by @plengauer in https://github.com/plengauer/Thoth/pull/2981
* chore(deps): lock file maintenance by @plengauer in https://github.com/plengauer/Thoth/pull/2925
* chore(deps): update renovatebot/github-action action to v46.1.2 by @plengauer in https://github.com/plengauer/Thoth/pull/2984
* Re-introduce python traceloop instrumentations by @plengauer in https://github.com/plengauer/Thoth/pull/2980
* Automatic Version Bump by @plengauer in https://github.com/plengauer/Thoth/pull/2985
* Fix publish and republish by @plengauer in https://github.com/plengauer/Thoth/pull/2988


**Full Changelog**: https://github.com/plengauer/Thoth/compare/v5...v5.45.1
