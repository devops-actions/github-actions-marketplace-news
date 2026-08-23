---
title: NestJS Doctor
date: 2026-08-23 23:03:25 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: v1.0.0
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The `nestjs-doctor` action is a tool designed to automatically scan and audit NestJS projects for security, correctness, architecture, performance, and schema issues. It provides a comprehensive report that helps developers identify potential problems in their codebase and suggests improvements. The action can be run on local machines or integrated into CI/CD pipelines to ensure consistent quality across different environments.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **v1.0.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The `nestjs-doctor` action is a tool designed to automatically scan and audit NestJS projects for security, correctness, architecture, performance, and schema issues. It provides a comprehensive report that helps developers identify potential problems in their codebase and suggests improvements. The action can be run on local machines or integrated into CI/CD pipelines to ensure consistent quality across different environments.

## What's Changed

First release of the NestJS Doctor GitHub Action.

Reviews every pull request and reports **only what the change introduced**, not
your existing backlog. Posts a sticky summary comment, inline review comments on
the changed lines, and a commit status with the score.

```yaml
- uses: RoloBits/nestjs-doctor@v1

Advisory by default — it comments without failing anything. Turn enforcement on
when you are ready:

- uses: RoloBits/nestjs-doctor@v1
  with:
    blocking: error # fail on any error the change introduced
    min-score: 80 # and on a project score below 80

Also supports SARIF for the Security tab, monorepos, and a configurable scope
(changed, files, lines, full).

Docs: https://nestjs.doctor/docs/ci
