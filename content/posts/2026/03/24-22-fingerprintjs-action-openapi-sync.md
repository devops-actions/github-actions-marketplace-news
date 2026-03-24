---
title: OpenAPI Sync
date: 2026-03-24 22:05:23 +00:00
tags:
  - fingerprintjs
  - GitHub Actions
draft: false
repo: https://github.com/fingerprintjs/action-openapi-sync
marketplace: https://github.com/marketplace/actions/openapi-sync
version: v0.2.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/fingerprintjs/action-openapi-sync** to version **v0.2.0**.
- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/openapi-sync) to find the latest changes.

## Action Summary

The **OpenAPI Sync Action** is a GitHub Action designed to automate the synchronization of OpenAPI schema files between repositories. It resolves challenges related to keeping API specifications up-to-date by handling tasks such as filtering internal schema content, detecting and acting on meaningful changes, bundling multi-file schemas, and cleaning up outdated target files. Additionally, it streamlines collaboration by linking source and target pull requests, adding warnings for unmerged changes, and ensuring efficient schema management across repositories.

## Release notes

### Minor Changes

-   Added `source_path` input to make the source repository path configurable instead of hardcoded to _source_. ([249cccf](https://github.com/fingerprintjs/action-openapi-sync/commit/249cccfe7b7d1683f5a3fc8830188279c8455e92))
-   Split `github_token` into `target_repo_github_token` and `source_repo_github_token`. ([d2f75be](https://github.com/fingerprintjs/action-openapi-sync/commit/d2f75bec7b101f11e0d46c1e386cffd161b1a691))
-   Add diff patch artifact upload ([33354c2](https://github.com/fingerprintjs/action-openapi-sync/commit/33354c27f2ab60b825e16f426f4d82e83be5151a))
-   Add `comment_on_source_pr` option. ([bca0d8e](https://github.com/fingerprintjs/action-openapi-sync/commit/bca0d8e5318e2960a9ff4c892daf28df65baeaa7))
-   Replaced GitHub App authentication (`app_id` & `app_private_key`) with a single required `github_token` input. ([2e43f26](https://github.com/fingerprintjs/action-openapi-sync/commit/2e43f26b255eb1968ea645b78a9207ed8f930912))

