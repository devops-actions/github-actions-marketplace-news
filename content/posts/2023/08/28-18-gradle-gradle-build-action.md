---
title: Gradle Build Action
date: 2023-08-28 18:58:10 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/gradle-build-action
marketplace: https://github.com/marketplace/actions/gradle-build-action
version: v2.8.0
dependentsNumber: 3,946
---


Version updated for **gradle/gradle-build-action** to version **v2.8.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **3,946** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gradle-build-action) to find the latest changes.

## Release notes

The `v2.8.0` release of the `gradle-build-action` introduces an easy mechanism to connect to Gradle Enterprise, as well improved support for self-hosted GitHub Actions runners.

### Automatic injection of Gradle Enterprise connectivity

It is now possible to connect a Gradle build to Gradle Enterprise without changing any of the Gradle project sources. This is achieved through Gradle Enterprise injection, where an init-script will apply the Gradle Enterprise plugin and associated configuration.

This feature can be useful to easily trial Gradle Enterprise on a project, or to centralize Gradle Enterprise configuration for all GitHub Actions workflows in an organization.

See [Gradle Enterprise injection in the README](https://github.com/gradle/gradle-build-action/blob/v2.8.0/README.md#gradle-enterprise-plugin-injection) for more info.

### Restore Gradle User Home when directory already exists

Previously, the Gradle User Home would not be restored if the directory already exists. This wasn't normally an issue with GitHub-hosted runners, but limited the usefulness of the action for persistent, self-hosted runners. 

This behaviour has been improved in this release:
- The Job Summary now includes a useful error message when Gradle User Home was not restored because the directory already exists.
- The action can now be configured to restore the Gradle User Home when the directory already exists, overwriting existing content with content from the GitHub Actions cache. See https://github.com/gradle/gradle-build-action#overwriting-an-existing-gradle-user-home for more details.

### Changes
**Issues fixed**: https://github.com/gradle/gradle-build-action/issues?q=milestone%3A2.8.0+is%3Aclosed
**Full changelog**: https://github.com/gradle/gradle-build-action/compare/v2.7.1...v2.8.0
