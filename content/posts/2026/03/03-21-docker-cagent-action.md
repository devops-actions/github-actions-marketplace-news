---
title: cagent Runner
date: 2026-03-03 21:29:04 +00:00
tags:
  - docker
  - GitHub Actions
draft: false
repo: https://github.com/docker/cagent-action
marketplace: https://github.com/marketplace/actions/cagent-runner
version: v1.2.5
dependentsNumber: "25"
actionType: Composite
---


Version updated for **https://github.com/docker/cagent-action** to version **v1.2.5**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **25** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/cagent-runner) to find the latest changes.

## Action Summary

The cagent GitHub Action automates the setup and execution of AI agents in workflows, simplifying tasks such as binary downloads, environment configuration, and execution. It addresses common security concerns by scanning outputs for leaked secrets, detecting prompt injection risks, and automating incident responses. Key capabilities include AI-powered pull request reviews, customizable multi-agent workflows, and robust security features for safe and efficient automation.

## Release notes

## What's Changed
* fix: use timestamp suffix to prevent verbose log artifact name collisions by @trungutt in https://github.com/docker/cagent-action/pull/66
* feat: allow docker-agent[bot] to trigger /review by @derekmisler in https://github.com/docker/cagent-action/pull/65
* Investigation of inconsistent review results on docker/pinata PR #39588 by @derekmisler in https://github.com/docker/cagent-action/pull/62
* --generate-notes uses the commit graph, not semver ordering by @derekmisler in https://github.com/docker/cagent-action/pull/61
* Use comment-only PR reviews, never approve or request changes by @derekmisler in https://github.com/docker/cagent-action/pull/67

## New Contributors
* @trungutt made their first contribution in https://github.com/docker/cagent-action/pull/66

**Full Changelog**: https://github.com/docker/cagent-action/compare/v1.2.4...v1.2.5
