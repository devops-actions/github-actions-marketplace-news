---
title: Gradle Wrapper Validation
date: 2024-04-13 03:30:49 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: gradle/wrapper-validation-action
marketplace: https://github.com/marketplace/actions/gradle-wrapper-validation
version: v3.3.0
dependentsNumber: "57,965"
---


Version updated for **gradle/wrapper-validation-action** to version **v3.3.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **57,965** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/gradle-wrapper-validation) to find the latest changes.

## Release notes

This is the first release of `gradle/wrapper-validation-action` available with the `v3` version tag.

> [!IMPORTANT]
> As of `v3` this action has been deprecated by `gradle/actions/wrapper-validation`.
> Any workflow that uses `gradle/wrapper-validation-action@v3` will transparently delegate to `gradle/actions/wrapper-validation@v3`.
>
> Users are encouraged to update their workflows, replacing:
> ```
> uses: gradle/wrapper-validation-action@v3
> ```
>
> with
> ```
> uses: gradle/actions/wrapper-validation@v3
> ```
>
> See the [wrapper-validation documentation](https://github.com/gradle/actions/tree/main/wrapper-validation) for up-to-date documentation for `gradle/actions/wrapper-validation`. 

## Changes from `wrapper-validation-acion@v2`

There are no functional changes in this release. The jump directly to `v3` (and `v3.3.0`) serves 2 purposes:
- Ensure that users explicitly switch to the new delegating action implementation
   - This upgrade also provides an opportunity for users to switch directly to `gradle/actions/wrapper-validation`
- Allows us to have consistent version numbering between `gradle/wrapper-validation-action` and `gradle/actions/wrapper-validation`

See #198 

**Full Changelog**: https://github.com/gradle/wrapper-validation-action/compare/v2.1.3...v3.3.0
