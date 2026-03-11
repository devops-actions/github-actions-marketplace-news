---
title: cagent Runner
date: 2026-03-11 21:46:23 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: https://github.com/docker/cagent-action
marketplace: https://github.com/marketplace/actions/cagent-runner
version: v1.2.9
dependentsNumber: "25"
actionType: Composite
---


Version updated for **https://github.com/docker/cagent-action** to version **v1.2.9**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **25** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cagent-runner) to find the latest changes.

## Action Summary

The **cagent GitHub Action** enables seamless integration of AI-powered agents, such as Docker Agent, into GitHub workflows. It automates the setup, execution, and management of these agents, including downloading binaries, configuring environments, and scanning outputs for security vulnerabilities like leaked secrets and prompt injections. This action is particularly useful for tasks such as automated pull request reviews, providing enhanced security, efficiency, and customization for workflow automation.

## Release notes

## What's Changed
* chore: update cagent to v1.30.0 by @docker-agent[bot] in https://github.com/docker/cagent-action/pull/78
* Update cagent repo URLs by @gtardif in https://github.com/docker/cagent-action/pull/79
* fix: use jq for review body JSON to prevent double-escaped newlines by @derekmisler in https://github.com/docker/cagent-action/pull/80
* fix: add skip-summary input to prevent GITHUB_STEP_SUMMARY exceeding 1MB limit by @derekmisler in https://github.com/docker/cagent-action/pull/81
* Add conversational replies to PR review feedback by @derekmisler in https://github.com/docker/cagent-action/pull/64
* Allow `docker-agent` to request reviews on its own PRs by @derekmisler in https://github.com/docker/cagent-action/pull/72
* Add file reading guardrails to prevent review agent hallucination loops by @derekmisler in https://github.com/docker/cagent-action/pull/77
* chore: update cagent to v1.30.1 by @docker-agent[bot] in https://github.com/docker/cagent-action/pull/83
* Update release workflow to pin new sub-action refs by @derekmisler in https://github.com/docker/cagent-action/pull/82

## New Contributors
* @docker-agent[bot] made their first contribution in https://github.com/docker/cagent-action/pull/78
* @gtardif made their first contribution in https://github.com/docker/cagent-action/pull/79

**Full Changelog**: https://github.com/docker/cagent-action/compare/v1.2.8...v1.2.9
