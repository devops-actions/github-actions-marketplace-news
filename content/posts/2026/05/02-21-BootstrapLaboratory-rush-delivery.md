---
title: Rush Delivery with Dagger
date: 2026-05-02 21:33:12 +00:00
tags:
  - BootstrapLaboratory
  - GitHub Actions
draft: false
repo: https://github.com/BootstrapLaboratory/rush-delivery
marketplace: https://github.com/marketplace/actions/rush-delivery-with-dagger
version: v0.5.0
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/BootstrapLaboratory/rush-delivery** to version **v0.5.0**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/rush-delivery-with-dagger) to find the latest changes.

## Action Summary

**Rush Delivery** is a GitHub Action and Dagger module designed to streamline release workflows for Rush-based monorepos by automating the entire release process, including detecting affected deploy targets, validating and building code, packaging artifacts, managing runtime files, and deploying to environments. It ensures a consistent, repeatable release path across both CI pipelines and local debugging, while supporting efficient use of provider-backed caching and toolchain images. This action simplifies complex release workflows, reduces manual effort, and provides robust support for pull request validation and production releases.

## What's Changed

## Highlights

Rush Delivery now supports explicit build-time environment passthrough for package targets.

Package metadata can allow same-name variables with `build.pass_env` and renamed variables with `build.map_env`, using the same deploy env file already prepared by the GitHub Action or raw Dagger CLI.

```yaml
build:
  pass_env:
    - WEBAPP_URL
  map_env:
    VITE_GRAPHQL_HTTP: WEBAPP_VITE_GRAPHQL_HTTP
```

## Environment Safety

- Build env from selected package targets is merged into one shared Rush build environment.
- Conflicting build env output names fail instead of silently overriding values.
- Deploy runtime env now has the same clean contract: `runtime.pass_env`, `runtime.map_env`, and static `runtime.env` share one output namespace and fail on conflicting values.
- `map_env` source variables do not need to be repeated in `pass_env`.

## Schemas And Docs

- Added `schemas/v0.5.0/` as the versioned schema snapshot.
- Updated README, docs, tutorials, and website examples to `v0.5.0`.
- Documented env collision behavior as intentional security behavior.

