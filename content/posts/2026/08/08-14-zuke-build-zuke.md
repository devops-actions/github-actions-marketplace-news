---
title: Zuke Build
date: 2026-08-08 14:18:15 +00:00
tags:
  - zuke-build
  - GitHub Actions
draft: false
repo: https://github.com/zuke-build/zuke
marketplace: https://github.com/marketplace/actions/zuke-build
version: v1.0.1
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  Zuke automates the creation of build pipelines in various CI/CD platforms using a TypeScript-driven approach. It solves the problem of managing complex build processes by providing a type-safe way to define targets and their dependencies through a class-based syntax. The action generates GitHub Actions, GitLab CI, or Azure Pipelines YAML based on the project's configuration, ensuring consistent and maintainable builds across different environments.
---


Version updated for **https://github.com/zuke-build/zuke** to version **v1.0.1**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zuke-build) to find the latest changes.

## Action Summary

Zuke automates the creation of build pipelines in various CI/CD platforms using a TypeScript-driven approach. It solves the problem of managing complex build processes by providing a type-safe way to define targets and their dependencies through a class-based syntax. The action generates GitHub Actions, GitLab CI, or Azure Pipelines YAML based on the project's configuration, ensuring consistent and maintainable builds across different environments.

## What's Changed

Adds a `ref` input, so a job can check out a branch other than the one the event points at — the head branch of a pull request, for instance, when a later step pushes a fix back to it.

 It arrives with a refusal. On any event other than `pull_request`, `push`, `merge_group`, `workflow_dispatch`, `schedule` or `release`, passing ref fails the action outright. Those six are the events whose ref can only come from someone who could push the same code directly; everything else — `issue_comment` and the `slash-command` pattern, `workflow_run`, `pull_request_target`, the discussion and review events — lets a contributor's text choose what gets checked out while the job holds the repository's secrets. The list is an allowlist rather than a denylist, so an event GitHub adds later is refused rather than silently permitted.

 Pin the full commit SHA rather than the moving v1 tag: `zuke-build/zuke@7a62523bb4569e4d90e972dee74bf9cf09cd436f`
