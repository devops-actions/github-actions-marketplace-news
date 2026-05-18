---
title: GitHub self-hosted runners for Hetzner Cloud
date: 2026-05-18 06:33:23 +00:00
tags:
  - wydler
  - GitHub Actions
draft: false
repo: https://github.com/wydler/hcloud-self-hosted-github-runner
marketplace: https://github.com/marketplace/actions/github-self-hosted-runners-for-hetzner-cloud
version: 1.0.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/wydler/hcloud-self-hosted-github-runner** to version **1.0.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/github-self-hosted-runners-for-hetzner-cloud) to find the latest changes.

## Action Summary

This GitHub Action automates the creation, usage, and termination of self-hosted GitHub Actions runners on Hetzner Cloud servers. It enables dynamic provisioning of compute resources for CI/CD workflows, ensuring cost efficiency and scalability by using temporary servers that are only active during job execution. This action is particularly beneficial for reducing costs and bypassing usage limits associated with GitHub-managed runners.

## What's Changed

## What's Changed
* Add workflow to sync fork with upstream master branch by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/2
* Support multiple values where the HCloud API supports it by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/3
* Add CodeQL analysis workflow for customize branch by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/4
* Update Dependabot configuration for GitHub Actions schedule by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/5
* Add YAML linter workflow for validating YAML schema by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/6
* Refactor CI workflow for Bash script testing by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/7
* Add permissions section to CI workflow for content access by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/8
* Update Hetzner pricing details in README for 2026 by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/9
* Fix typo in CI workflow name by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/10
* Bump actions/checkout from 6.0.1 to 6.0.2 by @dependabot[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/11
* Bump actions/create-github-app-token from 3.0.0 to 3.1.0 by @dependabot[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/12
* Bump github/codeql-action from 4.35.1 to 4.35.2 by @dependabot[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/13
* Bump actions/create-github-app-token from 3.1.0 to 3.1.1 by @dependabot[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/14
* Bump github/codeql-action from 4.35.2 to 4.35.4 by @dependabot[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/16
* Add support for organization scoped self-hosted runners by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/19
* Fix formatting issues in YAML files by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/20
* Add runner start method configuration by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/21
* Do not disable default labels and updates for long-running runners by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/22
* Enc do not retry on delete 404 by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/23
* Add 'systemd-stopped' option to runner start method by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/24
* Add server ID label to runner configuration by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/25
* Update README with new server types and Linux versions by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/26
* Add contributor credits in README by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/27
* Update repository owner information and templates by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/28
* Update README for clarity and accuracy by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/29
* Add Renovate configuration and workflow for automated dependency management by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/30
* Fix formatting and clarify README parameters by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/32
* chore(deps): Update github/codeql-action from v4.35.4 to v4.35.5 by @renovate-dependency-app[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/33
* chore(deps): Update actions/create-github-app-token from v3.1.1 to v3.2.0 by @renovate-dependency-app[bot] in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/34
* Update GitHub Action details by @dwydler in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/35

## New Contributors
* @dependabot[bot] made their first contribution in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/11
* @renovate-dependency-app[bot] made their first contribution in https://github.com/wydler/hcloud-self-hosted-github-runner/pull/33

**Full Changelog**: https://github.com/wydler/hcloud-self-hosted-github-runner/commits/1.0.0
