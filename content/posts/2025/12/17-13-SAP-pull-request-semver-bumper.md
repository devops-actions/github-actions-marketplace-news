---
title: pull-request-semver-bumper
date: 2025-12-17 13:20:18 +00:00
tags:
  - SAP
  - GitHub Actions
draft: false
repo: https://github.com/SAP/pull-request-semver-bumper
marketplace: https://github.com/marketplace/actions/pull-request-semver-bumper
version: v1.0.0
dependentsNumber: "?"
---


Version updated for **https://github.com/SAP/pull-request-semver-bumper** to version **v1.0.0**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pull-request-semver-bumper) to find the latest changes.

## Release notes

# Changelog

## 🚀 Features

- feat: Add `merge_group` trigger and refine `if` conditions for pull request specific steps in build workflow.
- feat: Add an `all-tests-passed` job to aggregate test results and set commit status.
- feat: Add changelog configuration file and integrate it into the release workflow.
- feat: add GitHub issue templates for bug reports and feature requests.
- feat: add release workflow, MPL-2.0 license, and update REUSE.toml.
- feat: add workflow concurrency to build-and-test workflow and update core action paths in version bumping actions.
- feat: rename core package and action display names to pull-request-semver-bumper
- feat: update package name to pull-request-semver-bumper-core and add peer dependencies in package-lock.json

## 🐛 Fixes

- fix: Add step to copy actions to workspace as a workaround for a GitHub Actions runner limitation.
- fix: correct copyright year in README.md
- fix: correct core action path in npm version bumping workflow
- fix: correctly copy action contents to the workspace instead of the directory itself.
- fix: correctly copy action directory contents to workspace (#12)
- fix: correctly copy action directory contents to workspace instead of the directory itself.
- fix: fix calling branch in documentation (#22)
- fix: fixed the core action name (#25)
- fix: make 'build-type' input required and update default value in action.yml
- fix: remove angle brackets from SPDX fields in REUSE.toml
- fix: update workflow group (#7)
- fix: use external invoking for sub-actions (#13)
- fix: workaround for invoke local action from external repo (#11)

## 🧰 Maintenance

- chore: Add `CHANGELOG.md` to REUSE ignore list
- chore: add build test final status for PR's status check (#14)
- chore: Add configuration.json to REUSE ignore list.
- chore: remove package-lock.json
- chore: Rename action from "pull request semver bumper" to "Version Bumping Action".
- chore: rename action from "Version Bumping Action" to "pull request semver bumper"
- chore: Replace copyright placeholder with actual project name in REUSE.toml.
- chore: update action usage examples to use a unified gateway action (#2)
- chore: Update action usage paths in READMEs and project metadata in REUSE.toml.
- chore: Use pull request number for workflow concurrency groups.
- chore(deps-dev): bump jest and @types/jest in /.github/actions/core (#8)
- chore(deps-dev): bump ts-jest from 29.4.5 to 29.4.6 in /.github/actions/core (#9)
- ci: change workflow trigger from pull_request_target to pull_request
- ci: Configure semver bumper to explicitly use HEAD as the target tag in the release workflow.
- ci: Configure semver bumper to explicitly use HEAD as the target tag in the release workflow. (#18)
- ci: improved changelog generation (#16)
- ci: switch GitHub Actions runners from 'solinas' to 'ubuntu-latest'
- ci: Update build runner from solinas to ubuntu-latest
- refactor: Remove `merge_group` trigger and simplify pull request condition checks in build workflow
- refactor: Update `uses` path for core action and rename `build-type` input to `type`.
- refactor: update action usage examples to use a unified gateway action with a `type` input and add clarifying documentation
- refactor: Update build workflow to use a unified version bumper action with a `type` input.
- refactor: update internal action `uses` path and rename `type` input to `build-type`
- refactor: update workflow trigger from pull_request to pull_request_target
- refactor: validation workflow now test from gateway action (#4)

## 📝 Documentation

- docs: add 'Why use this Action?' section, enhance project description, and update usage example to `@v1` in README.
- docs: add issue templates and reuse api badege (#21)
- docs: add project name into copyright place holder (#5)
- docs: add requirements section and update licensing link in README (#10)
- docs: add requirements section and update licensing link in README.
- docs: add REUSE status badge to README
- docs: update Maven README (#3)
- docs: update Maven README to remove outdated credential example and add Nexus env vars to main usage.
- docs: update project links in README for consistency
- docs: Update README examples to use `v1` tag for the version bumping action.
- docs: update readme highlighting USP and update meta information (#23)


