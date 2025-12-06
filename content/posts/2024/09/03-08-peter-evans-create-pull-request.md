---
title: Create Pull Request
date: 2024-09-03 08:46:21 +00:00
tags:
  - peter-evans
  - GitHub Actions
draft: false
repo: peter-evans/create-pull-request
marketplace: https://github.com/marketplace/actions/create-pull-request
version: v7.0.0
dependentsNumber: "124,028"
---


Version updated for **peter-evans/create-pull-request** to version **v7.0.0**.
- This action is used across all versions by **124,028** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/create-pull-request) to find the latest changes.

## Release notes

:sparkles: Now supports commit signing with bot-generated tokens! See "What's new" below. :writing_hand::robot:

### Behaviour changes

- Action input `git-token` has been renamed `branch-token`, to be more clear about its purpose. The `branch-token` is the token that the action will use to create and update the branch.
- The action now handles requests that have been rate-limited by GitHub. Requests hitting a primary rate limit will retry twice, for a total of three attempts. Requests hitting a secondary rate limit will not be retried.
- The `pull-request-operation` output now returns `none` when no operation was executed.
- Removed deprecated output environment variable `PULL_REQUEST_NUMBER`. Please use the `pull-request-number` action output instead.

### What's new

- The action can now sign commits as `github-actions[bot]` when using `GITHUB_TOKEN`, or your own bot when using [GitHub App tokens](docs/concepts-guidelines.md#authenticating-with-github-app-generated-tokens). See [commit signing](docs/concepts-guidelines.md#commit-signature-verification-for-bots) for details.
- Action input `draft` now accepts a new value `always-true`. This will set the pull request to draft status when the pull request is updated, as well as on creation.
- A new action input `maintainer-can-modify` indicates whether [maintainers can modify](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/allowing-changes-to-a-pull-request-branch-created-from-a-fork) the pull request. The default is `true`, which retains the existing behaviour of the action.
- A new output `pull-request-commits-verified` returns `true` or `false`, indicating whether GitHub considers the signature of the branch's commits to be verified.

## What's Changed
* build(deps-dev): bump @types/node from 18.19.36 to 18.19.39 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3000
* build(deps-dev): bump ts-jest from 29.1.5 to 29.2.0 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3008
* build(deps-dev): bump prettier from 3.3.2 to 3.3.3 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3018
* build(deps-dev): bump ts-jest from 29.2.0 to 29.2.2 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3019
* build(deps-dev): bump eslint-plugin-prettier from 5.1.3 to 5.2.1 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3035
* build(deps-dev): bump @types/node from 18.19.39 to 18.19.41 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3037
* build(deps): bump undici from 6.19.2 to 6.19.4 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3036
* build(deps-dev): bump ts-jest from 29.2.2 to 29.2.3 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3038
* build(deps-dev): bump @types/node from 18.19.41 to 18.19.42 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3070
* build(deps): bump undici from 6.19.4 to 6.19.5 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3086
* build(deps-dev): bump @types/node from 18.19.42 to 18.19.43 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3087
* build(deps-dev): bump ts-jest from 29.2.3 to 29.2.4 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3088
* build(deps): bump undici from 6.19.5 to 6.19.7 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3145
* build(deps-dev): bump @types/node from 18.19.43 to 18.19.44 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3144
* Update distribution by @actions-bot in https://github.com/peter-evans/create-pull-request/pull/3154
* build(deps): bump undici from 6.19.7 to 6.19.8 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3213
* build(deps-dev): bump @types/node from 18.19.44 to 18.19.45 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3214
* Update distribution by @actions-bot in https://github.com/peter-evans/create-pull-request/pull/3221
* build(deps-dev): bump eslint-import-resolver-typescript from 3.6.1 to 3.6.3 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3255
* build(deps-dev): bump @types/node from 18.19.45 to 18.19.46 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3254
* build(deps-dev): bump ts-jest from 29.2.4 to 29.2.5 by @dependabot in https://github.com/peter-evans/create-pull-request/pull/3256
* v7 - signed commits by @peter-evans in https://github.com/peter-evans/create-pull-request/pull/3057

## New Contributors
* @rustycl0ck made their first contribution in https://github.com/peter-evans/create-pull-request/pull/3057

**Full Changelog**: https://github.com/peter-evans/create-pull-request/compare/v6.1.0...v7.0.0
