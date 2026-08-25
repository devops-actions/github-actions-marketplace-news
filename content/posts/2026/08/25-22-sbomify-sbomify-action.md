---
title: sbomify
date: 2026-08-25 22:52:32 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/sbomify-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v26.8.0
dependentsNumber: "26"
actionType: Docker
actionSummary: |
  The sbomify-action is a GitHub Action that automates the process of generating Software Bill of Materials (SBOMs) in your CI/CD pipeline. It supports various languages and ecosystems, including Python, Node.js, Rust, Go, Ruby, Dart, C++, and Docker images. The action can generate SBOMs in CycloneDX or SPDX format and includes features like enriching SBOMs with metadata from package registries and handling Chainguard base images for reuse.
---


Version updated for **https://github.com/sbomify/sbomify-action** to version **v26.8.0**.

- This action is used across all versions by **26** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The sbomify-action is a GitHub Action that automates the process of generating Software Bill of Materials (SBOMs) in your CI/CD pipeline. It supports various languages and ecosystems, including Python, Node.js, Rust, Go, Ruby, Dart, C++, and Docker images. The action can generate SBOMs in CycloneDX or SPDX format and includes features like enriching SBOMs with metadata from package registries and handling Chainguard base images for reuse.

## What's Changed

## What's Changed
* chore(deps): cover bun, uv, and docker in Dependabot config by @vpetersson in https://github.com/sbomify/sbomify-action/pull/284
* chore(deps): bump python from 3.13-slim-trixie to 3.14-slim-trixie in the docker group by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/286
* chore(deps-dev): bump ruff from 0.12.12 to 0.15.22 in the uv group by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/288
* chore(deps): bump the github-actions group with 3 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/287
* chore(deps): exclude test-data fixtures from Dependabot scans by @vpetersson in https://github.com/sbomify/sbomify-action/pull/289
* chore(deps): bump the uv group with 3 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/302
* chore(deps): bump the github-actions group with 5 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/301
* Isolate wizard discovery tests from the developer's git config by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/305
* Fix arm64 image build (Rust toolchain for pipdeptree) and build images on PRs by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/304
* docs: correct SPDX version coverage and document SPEC_VERSION by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/306
* Reject spec versions nothing can generate at config time by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/307
* Recognize Cargo.toml so lockless Rust crates are discovered by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/310
* chore(deps): bump docker/login-action from 4.4.0 to 4.6.0 in the github-actions group by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/308
* chore(deps): bump the uv group with 5 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/309
* fix(wizard): handle plan limits, workspace scoping, and clean errors by @vpetersson in https://github.com/sbomify/sbomify-action/pull/303
* Authenticate the license-database release lookup by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/314
* Add Reload to the wizard's Components screen by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/315
* Stop shipping bomctl by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/318
* Stop shipping dev dependencies in the published image by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/316
* chore(deps): bump the github-actions group with 2 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/338
* chore(deps): bump the uv group with 2 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/337
* Fetch every non-Python tool instead of baking it in: 515MB image to 106MB, and stop silent SBOM quality downgrades by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/320
* Cache enrichment lookups across runs for every source, and fix ClearlyDefined extraction by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/339
* Treat SOURCE_DIR as an input source, and document it as a last resort by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/340
* feat: submodule SBOM support — discovery annotation + attach-or-backfill by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/341
* Serve ClearlyDefined through clearly-cached by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/343
* Stop using ClearlyDefined's copyright parties as the supplier by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/344
* Say 3.11 everywhere the project already requires it by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/345
* Let makeAggregateBom see the reactor it aggregates by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/347
* Don't walk into symlinked directories during discovery by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/346
* Keep looking when a generator describes nothing by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/348
* Decline a PEP 621 manifest instead of failing on it by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/349
* Fix two failures found in telemetry, and stop three sources of noise by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/350
* Keep the wizard's action row on screen at every terminal size by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/342
* Ask a source only when it can fill something missing by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/355
* Tick the shallowest lockfiles, not every one of them by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/354
* Recognise .NET project files, not just the lock file nobody writes by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/353
* Stop describing every file in a container as a component by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/352
* Say what Package.swift is missing instead of writing an empty SBOM by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/351
* Drop the Rust stage and C build deps the image no longer needs by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/356
* Recognise Haskell, Erlang and Clojure by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/357
* Stop unharvested coordinates disabling ClearlyDefined by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/358
* Re-source the lifecycle data from vendors, and notice when it goes stale by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/359
* Wire up the PHP bundle, so a composer.json is not silently empty by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/360
* Exclude tests/test-data from Dependabot for github-actions too by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/362
* chore(deps): bump the github-actions group with 2 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/366
* Make bundle materialisation safe between processes by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/361
* Fall back to the pinned build tool when a project's wrapper cannot run by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/363
* Tell sbomify when a release is a prerelease by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/369
* Take the component version from the release tag, and offer to normalise it by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/368
* Don't default to a lockfile that describes the tooling by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/367
* Tell Composer what version this package is by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/371
* Fix three env-var resolution defects that surface outside Docker by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/370
* Let a caller put Go's caches outside the attested bundle by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/373
* chore: persist agent memory into repo docs and skills by @vpetersson in https://github.com/sbomify/sbomify-action/pull/293
* chore(deps): bump the uv group, and move the Dockerfile pin with it by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/375
* Stop the root component identifying itself as the mount point by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/374
* Let generators read a workspace they do not own by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/372
* Resolve manifests rather than refuse them, and disclose when versions were inferred by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/377
* chore(deps): cryptography 50.0.0 and Debian security updates at build by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/378
* chore(deps): bump the github-actions group with 2 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/380
* chore(deps): bump the uv group, and move the Dockerfile pin with it by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/381
* chore(deps): bump the uv group across 1 directory with 8 updates by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/379
* Fix three failures found in the Sentry sweep by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/385
* Bump version to 26.8.0 by @vpetersson-bot in https://github.com/sbomify/sbomify-action/pull/386

## New Contributors
* @vpetersson-bot made their first contribution in https://github.com/sbomify/sbomify-action/pull/305

**Full Changelog**: https://github.com/sbomify/sbomify-action/compare/v26.7.0...v26.8.0
