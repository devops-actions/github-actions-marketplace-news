---
title: pull-request-semver-bumper
date: 2026-06-03 15:37:26 +00:00
tags:
  - SAP
  - GitHub Actions
draft: false
repo: https://github.com/SAP/pull-request-semver-bumper
marketplace: https://github.com/marketplace/actions/pull-request-semver-bumper
version: v1.0.3
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/SAP/pull-request-semver-bumper** to version **v1.0.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pull-request-semver-bumper) to find the latest changes.

## What's Changed

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
- fix: restore MPL-2.0 license file required by bundled dependency (#106)
- fix: update workflow group (#7)
- fix: use external invoking for sub-actions (#13)
- fix: workaround for invoke local action from external repo (#11)

## 🧰 Maintenance

- chore: Add `CHANGELOG.md` to REUSE ignore list
- chore: add build test final status for PR's status check (#14)
- chore: Add configuration.json to REUSE ignore list.
- chore: add renovate.json to REUSE.toml annotations (#91)
- chore: build core action dist (auto)
- chore: build core action dist (auto)
- chore: remove package-lock.json
- chore: Rename action from "pull request semver bumper" to "Version Bumping Action".
- chore: rename action from "Version Bumping Action" to "pull request semver bumper"
- chore: Replace copyright placeholder with actual project name in REUSE.toml.
- chore: update action usage examples to use a unified gateway action (#2)
- chore: Update action usage paths in READMEs and project metadata in REUSE.toml.
- chore: update changelog for v1.0.0 (#26)
- chore: Use pull request number for workflow concurrency groups.
- chore(deps-dev): bump jest and @types/jest in /.github/actions/core (#8)
- chore(deps-dev): bump ts-jest from 29.4.5 to 29.4.6 in /.github/actions/core (#9)
- chore(deps): bump simple-git from 3.33.0 to 3.36.0 in /.github/actions/core (#73)
- chore(deps): update dependency @actions/core to v2.0.3
- chore(deps): update dependency @actions/core to v2.0.3 (#57)
- chore(deps): update dependency @types/node to v25.6.0
- chore(deps): update dependency @types/node to v25.6.0 (#60)
- chore(deps): update dependency ts-jest to v29.4.11 (#97)
- chore(deps): update dependency ts-jest to v29.4.9
- chore(deps): update dependency ts-jest to v29.4.9 (#59)
- chore(deps): update github artifact actions (#108)
- ci: change workflow trigger from pull_request_target to pull_request
- ci: Configure semver bumper to explicitly use HEAD as the target tag in the release workflow.
- ci: Configure semver bumper to explicitly use HEAD as the target tag in the release workflow. (#18)
- ci: improved changelog generation (#16)
- ci: pin third-party action SHAs and add Dependabot cooldown (#102)
- ci: replace pull_request_target with pull_request for CodeQL fork PR analysis (#107)
- ci: retrigger workflows
- ci: switch GitHub Actions runners from 'solinas' to 'ubuntu-latest'
- ci: Update build runner from solinas to ubuntu-latest
- ci: verify GitHub Actions recovery
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

## What's Changed
* chore: Update action usage paths in READMEs and project metadata by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/1
* chore: update action usage examples to use a unified gateway action by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/2
* docs: update Maven README by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/3
* refactor: validation workflow now test from gateway action by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/4
* docs: add project name into copyright place holder by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/5
* fix: update workflow group by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/7
* chore(deps-dev): bump jest and @types/jest in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/8
* docs: add requirements section and update licensing link in README by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/10
* fix: workaround for invoke local action from external repo by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/11
* chore(deps-dev): bump ts-jest from 29.4.5 to 29.4.6 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/9
* fix: correctly copy action directory contents to workspace by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/12
* fix: use external invoking for sub-actions by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/13
* chore: add build test final status for PR's status check by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/14
* ci: improved changelog generation by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/16
* ci: Configure semver bumper to explicitly use HEAD as the target tag in the release workflow by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/18
* chore: update changelog for v1.0.0 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/19
* docs: add issue templates and reuse api badege by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/21
* fix: fix calling branch in documentation by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/22
* docs: update readme highlighting USP and update meta information by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/23
* chore: update changelog for v1.0.0 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/24
* fix: fixed the core action name by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/25
* chore: update changelog for v1.0.0 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/26
* chore(deps-dev): bump @types/node from 24.10.1 to 25.0.2 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/29
* chore(deps): bump @actions/core from 1.11.1 to 2.0.1 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/28
* chore(deps): bump @actions/exec from 1.1.1 to 2.0.0 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/27
* chore(deps-dev): bump @types/node from 25.0.2 to 25.0.3 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/32
* feat: Expose bump level as output by @mdanish98 in https://github.com/SAP/pull-request-semver-bumper/pull/33
* chore: update changelog for v1.0.1 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/34
* chore(deps-dev): bump @types/node from 25.0.3 to 25.2.3 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/45
* chore(deps): bump semver from 7.7.3 to 7.7.4 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/41
* chore(deps): bump @actions/core from 2.0.1 to 2.0.2 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/36
* chore(deps-dev): bump jest from 30.2.0 to 30.3.0 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/54
* chore: Configure Renovate by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/55
* chore(deps): bump simple-git from 3.30.0 to 3.31.1 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/44
* chore(deps): update dependency @actions/core to v2.0.3 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/57
* chore(deps): update dependency @types/node to v25.6.0 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/60
* chore(deps): update dependency ts-jest to v29.4.9 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/59
* chore(deps): update dependency node to v24 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/66
* chore(deps): bump simple-git from 3.33.0 to 3.36.0 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/73
* chore(deps): update actions/setup-node action to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/65
* fix: correct release workflow sequencing to merge changelog PR before tagging by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/40
* chore(deps): update s4u/setup-maven-action action to v1.20.0 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/63
* chore(deps-dev): bump @types/node from 25.6.0 to 25.6.2 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/81
* chore(deps): bump @actions/exec from 2.0.0 to 3.0.0 in /.github/actions/core by @dependabot[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/42
* chore(deps): update dependency jest to v30.4.2 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/83
* chore(deps): update actions/checkout action to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/64
* chore(deps): update dependency semver to v7.8.0 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/84
* chore(deps): update dependency python to 3.14 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/61
* chore(deps): update dependency @types/node to v25.7.0 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/79
* chore(deps): update mikepenz/release-changelog-builder-action action to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/69
* chore(deps): update endbug/add-and-commit action to v10 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/68
* chore(deps): update softprops/action-gh-release action to v3 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/70
* fix: set all-tests-passed status on changelog PR to unblock auto-merge by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/87
* chore: update changelog for v1.0.2 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/88
* docs: align README output name with action output by @ricogu-claw in https://github.com/SAP/pull-request-semver-bumper/pull/49
* fix(deps): update dependency @actions/core to v3 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/74
* chore(deps): update dependency typescript to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/67
* chore: fix REUSE compliance by annotating missing files in REUSE.toml by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/91
* chore(deps): update dependency @types/node to v25.8.0 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/93
* chore(deps): update dependency @types/node to v25.9.1 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/94
* chore(deps): update dependency ts-jest to v29.4.10 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/95
* chore(deps): update dependency ts-jest to v29.4.11 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/97
* fix: use commit-message input by @Herrtian in https://github.com/SAP/pull-request-semver-bumper/pull/98
* ci: switch CodeQL to advanced setup with JS/TS, same-repo and fork PR scanning by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/99
* chore(deps): update dependency semver to v7.8.1 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/96
* chore(deps): update actions/checkout action to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/100
* ci: add REUSE compliance lint as PR status check by @mdanish98 in https://github.com/SAP/pull-request-semver-bumper/pull/103
* chore(deps): update actions/checkout action to v6 by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/104
* fix: restore MPL-2.0 license file required by bundled dependency by @mdanish98 in https://github.com/SAP/pull-request-semver-bumper/pull/106
* ci: harden CI workflows against fork PR privilege abuse by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/107
* chore(deps): update github artifact actions (major) by @renovate[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/108
* ci: pin third-party action SHAs and add Dependabot cooldown by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/102
* ci: skip Build &amp; Test e2e for docs/workflow-only PRs by @ricogu in https://github.com/SAP/pull-request-semver-bumper/pull/101
* chore: update changelog for v1.0.3 by @github-actions[bot] in https://github.com/SAP/pull-request-semver-bumper/pull/110

## New Contributors
* @ricogu made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/1
* @dependabot[bot] made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/8
* @github-actions[bot] made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/19
* @mdanish98 made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/33
* @renovate[bot] made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/55
* @ricogu-claw made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/49
* @Herrtian made their first contribution in https://github.com/SAP/pull-request-semver-bumper/pull/98

**Full Changelog**: https://github.com/SAP/pull-request-semver-bumper/compare/v0.0.0...v1.0.3
