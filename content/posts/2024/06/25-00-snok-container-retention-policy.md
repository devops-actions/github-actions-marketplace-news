---
title: Container Retention Policy
date: 2024-06-25 00:50:10 +00:00
tags:
  - snok
  - GitHub Actions
draft: false
repo: snok/container-retention-policy
marketplace: https://github.com/marketplace/actions/container-retention-policy
version: v3.0.0
dependentsNumber: "513"
---


Version updated for **snok/container-retention-policy** to version **v3.0.0**.
- This action is used across all versions by **513** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/container-retention-policy) to find the latest changes.

## Release notes

# v3.0.0

> Disclaimer: This release breaks the API of the action to a large degree. It might be wise to run the action with `dry-run: true` after upgrading.

This release is a complete rewrite of the action, tackling most if not all open issues in the issue tracker. Some of the highlights include: 

- Simplifying and consolidating the inputs of the action
- Improving the runtime performance, and the initialization time of the action in CI
- Support for multi-platform packages
- Support for new token types (`secrets.GITHUB_TOKEN` and Github app tokens)
- Much better handling of GitHub API rate limits

💥 There are a lot of breaking changes, so we've included a migration guide at the bottom of this post, to make things a bit simpler. 

Since the release introduces a few thousand lines of code, we expect there may be a few things left to iron out. If you run into any problems, please share them in the [v3 release issue](https://github.com/snok/container-retention-policy/issues/84).

--- 

In addition to what's mentioned above, other **new features and changes** include:

- Significant effort has been spent on improving the logging, to give better insights into what exactly is happening
- Updated license from `BSD-3` to `MIT`.
- The available syntax for `image-names` and `image-tags` previously allowed wildcards (using the `*` character). We now also allow the `?` character to express a single-character wildcard. For example, the pattern `ca?` will match `car` and  `cat`. See the [wildmatch docs](https://github.com/becheran/wildmatch) for details.

In addition to changing the inputs of the action (more details below), there are a few other **breaking changes**:

- We'll no longer maintain mutable major and minor version tags for the action. There will be no `v3` target for the action, just `v3.0.0` and other exact versions. Mutable major version tags are generally hard to maintain and not much safer than tracking the main branch, so more precise tag tracking should reduce the likelihood of broken runs going forward. Paired with [dependabot](https://docs.github.com/en/code-security/dependabot/working-with-dependabot/keeping-your-actions-up-to-date-with-dependabot), upgrading should not be much harder than it has been.
- The [`needs-assistance` output](https://github.com/snok/container-retention-policy/tree/575226aa6cf28ee190c6611e8cc20d545264f443?tab=readme-ov-file#needs-github-assistance) was deleted

And in terms of **performance improvements**:

- The action has been rewritten from a [composite action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) to a [container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action), and the total size of the new image is < 10Mi.
- The action would previously take ~30 seconds to initialize and would require a Python runtime. The action now starts in less than a second, and runs as a standalone binary.
- The runtime of the action has been reduced, and assuming we need to delete less than 180 package versions, the action completes in, at most, a few seconds. See [this example of a recent run](https://github.com/snok/container-retention-policy/actions/runs/9652338073/job/26622259747). When we have to delete more than 180 package versions, there's a minute of waiting for every 180 new package versions, as a consequence of GitHub's secondary API rate limits. See the new README for details.

## Migration guide

- The `account-type` and `org-name` inputs have been replaced with `account`, which should be set to the literal string "user" if you previously used `account-type: personal` and to the organization name otherwise:

    ```diff
    - account-type: personal
    + account: user
    ```

    or

    ```diff
    - account-type: organization
    - org-name: acme
    + account: acme
    ```

- The `filter-tags` key has been renamed to `image-tags`

    ```diff
    - filter-tags: *-prod
    + image-tags: *-prod
    ```

- The `token-type` input has been removed. If you previously used `token-type: github-token`, then you can now instead pass the secret value to `token` and have the type of token be auto-detected:

    ```diff
    - token-type: github-token
    + token: ${{ secrets.GITHUB_TOKEN }}
    ```

  In other words, we've consolidated `token-type` and `token` into a single arg.

- The `skip-tags` input has been removed. If you previously used `skip-tags: latest`, you should now specify a negative glob pattern in `image-tags`.

    ```diff
    - filter-tags: l*
    - skip-tags: latest
    + image-tags: l*, !latest
    ```

  In other words, we've consolidated the two arguments, by adding support for the `!` operator, which means "not".

- The `filter-include-untagged` and `untagged-only` inputs were removed.

  `filter-include-untagged` previously enabled you to opt-out of deleting untagged images, while `untagged-only` would allow you to opt-out of deleting tagged images. This was a bit confusing, even for me.

  To make things simpler, these have been collapsed into one argument, called `tag-selection` which accepts the string values `tagged`, `untagged`, or `both`.

    ```diff
    - filter-include-untagged: true
    - untagged-only: false
    + tag-selection: both
    ```

    or

    ```diff
    - filter-include-untagged: true
    - untagged-only: true
    + tag-selection: untagged
    ```

- The `cut-off` input no longer accepts human-readable datetimes. Instead, it accepts the inputs listed [here](https://github.com/tailhook/humantime). For example:

    ```diff
    - cut-off: two hours and 5 minutes ago UTC+2
    + cut-off: 2h 5m
    ```

    or

    ```diff
    - cut-off: One week ago UTC
    + cut-off: 1w
    ```

  There is no longer timezone support built-into this option. All durations are relative to the current time, UTC.

