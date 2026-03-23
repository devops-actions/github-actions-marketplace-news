---
title: Build with Gradle
date: 2026-03-23 21:41:42 +00:00
tags:
  - gradle
  - GitHub Actions
draft: false
repo: https://github.com/gradle/actions
marketplace: https://github.com/marketplace/actions/build-with-gradle
version: v6.0.0
dependentsNumber: "46,533"
actionType: Composite
---


Version updated for **https://github.com/gradle/actions** to version **v6.0.0**.
- This publisher is shown as 'verified' by GitHub.
- This action is used across all versions by **46,533** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/build-with-gradle) to find the latest changes.

## Action Summary

This GitHub Action repository provides tools to automate tasks for Gradle projects, including configuring Gradle for optimal execution (`setup-gradle`), generating and submitting dependency graphs to identify vulnerabilities (`dependency-submission`), and validating Gradle Wrapper checksum files (`wrapper-validation`). It simplifies Gradle build processes, enhances security by detecting dependency issues, and ensures Gradle Wrapper integrity, streamlining workflows for developers using Gradle in CI/CD pipelines.

## Release notes

## Summary

- Caching functionality of 'gradle-actions' has been extracted into a separate `gradle-actions-caching` library, and is no longer open-source. 
- Existing, rudimentary, configuration-cache support has been removed, pending a fully functional implementation in `gradle-actions-caching`.
- Dependencies updated to address security vulnerabilities

> [!IMPORTANT]
> #### Licensing notice
>
> The caching functionality in \`gradle-actions\` has been extracted into \`gradle-actions-caching\`, a proprietary commercial component that is not covered by the MIT License. 
> The bundled \`gradle-actions-caching\` component is licensed and governed by a separate license, available at https://gradle.com/legal/terms-of-use/.
>
> The \`gradle-actions-caching\` component is used only when caching is enabled and is not loaded or used when caching is disabled.
>
> Use of the \`gradle-actions-caching\` component is subject to a separate license, available at https://gradle.com/legal/terms-of-use/. 
> If you do not agree to these license terms, do not use the \`gradle-actions-caching\` component.


## What's Changed
* Bump the npm-dependencies group in /sources with 2 updates by @dependabot[bot] in https://github.com/gradle/actions/pull/866
* Update known wrapper checksums by @github-actions[bot] in https://github.com/gradle/actions/pull/868
* Dependency updates by @bigdaz in https://github.com/gradle/actions/pull/876
* Update known wrapper checksums by @github-actions[bot] in https://github.com/gradle/actions/pull/878
* Bump @types/node from 25.3.3 to 25.3.5 in /sources in the npm-dependencies group across 1 directory by @dependabot[bot] in https://github.com/gradle/actions/pull/877
* Bump the github-actions group across 3 directories with 3 updates by @dependabot[bot] in https://github.com/gradle/actions/pull/867
* Update known wrapper checksums by @github-actions[bot] in https://github.com/gradle/actions/pull/881
* Bump the npm-dependencies group in /sources with 6 updates by @dependabot[bot] in https://github.com/gradle/actions/pull/879
* Bump the github-actions group across 3 directories with 5 updates by @dependabot[bot] in https://github.com/gradle/actions/pull/880
* Remove configuration-cache support by @bigdaz in https://github.com/gradle/actions/pull/884
* Extract caching logic into a separate `gradle-actions-caching` component by @bigdaz in https://github.com/gradle/actions/pull/885
* Update gradle-actions-caching library to v0.3.0 by @bot-githubaction in https://github.com/gradle/actions/pull/899
* Avoid windows shutdown bug by @bigdaz in https://github.com/gradle/actions/pull/900
* Dependency updates by @bigdaz in https://github.com/gradle/actions/pull/905
* Fix critical and high npm vulnerabilities  by @bigdaz in https://github.com/gradle/actions/pull/904
* Fix rendering of job-disabled message by @bigdaz in https://github.com/gradle/actions/pull/909

**Full Changelog**: https://github.com/gradle/actions/compare/v5.0.2...v6.0.0
