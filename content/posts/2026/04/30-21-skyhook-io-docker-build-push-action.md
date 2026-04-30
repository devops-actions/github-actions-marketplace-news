---
title: Skyhook Docker Multi-Registry Build Push
date: 2026-04-30 21:53:32 +00:00
tags:
  - skyhook-io
  - GitHub Actions
draft: false
repo: https://github.com/skyhook-io/docker-build-push-action
marketplace: https://github.com/marketplace/actions/skyhook-docker-multi-registry-build-push
version: v1.5.2
dependentsNumber: "?"
actionType: Composite
---


Version updated for **https://github.com/skyhook-io/docker-build-push-action** to version **v1.5.2**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skyhook-docker-multi-registry-build-push) to find the latest changes.

## Action Summary

This GitHub Action, **Docker Build and Push Action**, is a streamlined wrapper around the official `docker/build-push-action` designed to simplify and automate the process of building and pushing Docker images. It addresses common challenges by offering automatic tag generation (e.g., semantic versioning, commit SHAs, and branch tags), multi-registry support, and input validation to reduce configuration complexity and prevent errors. Additionally, it supports multi-architecture builds, integrates with `docker/metadata-action` for consistent tagging, and enhances security with SBOM and provenance attestation capabilities.

## What's Changed

## Fixes

- **Input contract:** user-provided `context` and `dockerfile` inputs now correctly override the values derived from `service_name` / `.skyhook/skyhook.yaml`. Previously the resolve step always emitted `resolved_context=code`, which made `inputs.context` dead code (#5).
- Drops `default: '.'` and `default: 'Dockerfile'` from the `context`/`dockerfile` inputs (defaults still applied via build-step fallback) so the action can distinguish "user provided" from "user omitted".
- Resolve step is gated on `service_name != '' && (context == '' || dockerfile == '')` and only emits `resolved_*` outputs when actually resolved from `.skyhook/skyhook.yaml`.

## Behavior change

When `service_name` is provided but the config file or service is missing, the build now falls back to `inputs.context || '.'` instead of the implicit `code/` safety net (commit 56d501c). The existing warning ("Falling back to input parameters") now matches behavior. Callers in this state should either fix their config or pass explicit `context: code`.

## Precedence

`inputs.X` -> `service_name`-derived value -> default (`.` for context, `Dockerfile` for dockerfile).

**Full Changelog:** https://github.com/skyhook-io/docker-build-push-action/compare/v1.5.1...v1.5.2
