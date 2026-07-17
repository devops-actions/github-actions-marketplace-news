---
title: sbomify
date: 2026-07-17 06:45:16 +00:00
tags:
  - sbomify
  - GitHub Actions
draft: false
repo: https://github.com/sbomify/sbomify-action
marketplace: https://github.com/marketplace/actions/sbomify
version: v26.7.0
dependentsNumber: "26"
actionType: Docker
actionSummary: |
  The GitHub Action `sbomify-action` is designed to automate the creation, enrichment, and management of Software Bill of Materials (SBOMs) in CI/CD pipelines. It supports various ecosystems including Python, Node.js, Rust, Go, Ruby, Dart, C++, and Docker images, and can generate CycloneDX or SPDX SBOM formats. The action can also leverage Chainguard base images for efficient SBOM creation, enhancing the process with additional metadata from package registries.
---


Version updated for **https://github.com/sbomify/sbomify-action** to version **v26.7.0**.

- This action is used across all versions by **26** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/sbomify) to find the latest changes.

## Action Summary

The GitHub Action `sbomify-action` is designed to automate the creation, enrichment, and management of Software Bill of Materials (SBOMs) in CI/CD pipelines. It supports various ecosystems including Python, Node.js, Rust, Go, Ruby, Dart, C++, and Docker images, and can generate CycloneDX or SPDX SBOM formats. The action can also leverage Chainguard base images for efficient SBOM creation, enhancing the process with additional metadata from package registries.

## What's Changed

## Highlights

- **Interactive setup wizard**: a new Textual TUI (`sbomify-action wizard`, bundled in the Docker image) that scans your repo for lockfiles, signs you in to sbomify, registers matching components, and writes a release-ready `.github/workflows/sboms.yml` — with `--dry-run` support ([#238](https://github.com/sbomify/sbomify-action/pull/238), [#240](https://github.com/sbomify/sbomify-action/pull/240)). Follow-ups add responsive terminal layouts, truecolor in Docker, per-ecosystem lockfile discovery, SHA-pinned action refs, and CalVer-aware tag dispatch ([#247](https://github.com/sbomify/sbomify-action/pull/247)–[#283](https://github.com/sbomify/sbomify-action/pull/283)).
- **OIDC trusted publishing**: authenticate uploads to sbomify with GitHub OIDC instead of long-lived tokens, and let the wizard auto-register the trusted publisher during apply ([#235](https://github.com/sbomify/sbomify-action/pull/235), [#242](https://github.com/sbomify/sbomify-action/pull/242)).
- **VEX, CBOM, and HBOM uploads**: new `BOM_TYPE` setting uploads non-SBOM artifacts verbatim, accepting CycloneDX VEX, OpenVEX, and CSAF documents ([#255](https://github.com/sbomify/sbomify-action/pull/255), [#265](https://github.com/sbomify/sbomify-action/pull/265)).
- **Multi-arch Docker images**: amd64 + arm64 images built natively per architecture, with ghcr.io as the primary registry and Docker Hub as the mirror ([#226](https://github.com/sbomify/sbomify-action/pull/226), [#248](https://github.com/sbomify/sbomify-action/pull/248), [#275](https://github.com/sbomify/sbomify-action/pull/275)).
- **Stricter failure semantics**: post-upload processor errors and partial product-release tagging failures now fail the run instead of passing silently ([#261](https://github.com/sbomify/sbomify-action/pull/261), [#272](https://github.com/sbomify/sbomify-action/pull/272)).
- **Dependency-Track**: expose the missing upload options ([#230](https://github.com/sbomify/sbomify-action/pull/230)) — thanks @Erik-Hoffmann for the first-time contribution!
- **Enrichment & generation fixes**: preserve versionless PURLs during enrichment ([#229](https://github.com/sbomify/sbomify-action/pull/229)), drop `--required-only` for Go in cdxgen ([#234](https://github.com/sbomify/sbomify-action/pull/234)), and get-or-create components on duplicate names ([#236](https://github.com/sbomify/sbomify-action/pull/236)).
- **Supply-chain hygiene**: OpenGrep SAST in CI ([#246](https://github.com/sbomify/sbomify-action/pull/246)), security patches for `idna`/`urllib3`/`pip` ([#241](https://github.com/sbomify/sbomify-action/pull/241)), and bumped bundled SBOM tools ([#274](https://github.com/sbomify/sbomify-action/pull/274)).

## What's Changed
* Make ghcr.io the primary registry, Docker Hub the mirror by @vpetersson in https://github.com/sbomify/sbomify-action/pull/226
* Preserve PURLs without versions during enrichment by @vpetersson in https://github.com/sbomify/sbomify-action/pull/229
* Skip --required-only for Go in cdxgen (fixes #231) by @vpetersson in https://github.com/sbomify/sbomify-action/pull/234
* Handle DUPLICATE_NAME on component create (get-or-create) by @vpetersson in https://github.com/sbomify/sbomify-action/pull/236
* Add OIDC trusted-publishing support by @vpetersson in https://github.com/sbomify/sbomify-action/pull/235
* fix(deps): patch non-test Dependabot security alerts (idna, urllib3, pip) by @vpetersson in https://github.com/sbomify/sbomify-action/pull/241
* fix(wizard): component_type 422, existing sbomify.json, edge-case hardening + review fixes by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/240
* chore(deps): bump docker/login-action from 4.1.0 to 4.2.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/237
* feat(wizard): auto-register OIDC trusted publisher during apply by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/242
* chore(deps): bump astral-sh/setup-uv from 8.1.0 to 8.2.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/244
* chore(deps): bump actions/checkout from 6.0.2 to 6.0.3 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/243
* feat: Textual onboarding wizard + consolidated sbomify API client by @vpetersson in https://github.com/sbomify/sbomify-action/pull/238
* ci: add OpenGrep SAST workflow by @vpetersson in https://github.com/sbomify/sbomify-action/pull/246
* docs: lead README with the setup wizard by @vpetersson in https://github.com/sbomify/sbomify-action/pull/245
* fix: bundle wizard styles.tcss in published package by @vpetersson in https://github.com/sbomify/sbomify-action/pull/247
* ci: build and push multi-arch (amd64+arm64) Docker images by @vpetersson in https://github.com/sbomify/sbomify-action/pull/248
* fix: render wizard in truecolor inside Docker by @vpetersson in https://github.com/sbomify/sbomify-action/pull/249
* fix(wizard): derive repo name from git remote; ship git in runtime image by @vpetersson in https://github.com/sbomify/sbomify-action/pull/251
* feat: make the onboarding wizard fit any terminal (responsive TUI) by @vpetersson in https://github.com/sbomify/sbomify-action/pull/253
* Add missing deptrack upload options by @Erik-Hoffmann in https://github.com/sbomify/sbomify-action/pull/230
* fix: fail the run when a post-upload processor fails by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/261
* feat: add BOM_TYPE to upload VEX/CBOM/HBOM artifacts verbatim by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/255
* chore(deps): bump actions/cache from 5.0.5 to 6.1.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/263
* chore(deps): bump github/codeql-action/upload-sarif from 3.36.2 to 4.36.2 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/262
* chore(deps): bump actions/setup-python from 6.2.0 to 6.3.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/257
* chore(deps): bump actions/checkout from 6.0.3 to 7.0.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/256
* chore(deps): bump github/codeql-action from 3.36.2 to 4.36.2 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/254
* feat(wizard): resolve sbomify-action pin at runtime with offline fallback by @vpetersson in https://github.com/sbomify/sbomify-action/pull/250
* chore(deps): bump docker/setup-buildx-action from 4.1.0 to 4.2.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/270
* chore(deps): bump docker/setup-qemu-action from 4.1.0 to 4.2.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/269
* chore(deps): bump actions/attest-build-provenance from 4.1.0 to 4.1.1 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/268
* chore(deps): bump github/codeql-action/upload-sarif from 4.36.2 to 4.37.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/267
* chore(deps): bump docker/login-action from 4.2.0 to 4.4.0 by @dependabot[bot] in https://github.com/sbomify/sbomify-action/pull/266
* fix(wizard): skip AI agent worktree dirs during lockfile discovery by @vpetersson in https://github.com/sbomify/sbomify-action/pull/271
* fix: make partial release failures fatal by @vpetersson in https://github.com/sbomify/sbomify-action/pull/272
* Bumps tools by @vpetersson in https://github.com/sbomify/sbomify-action/pull/274
* ci: build Docker images natively per-arch via matrix by @vpetersson in https://github.com/sbomify/sbomify-action/pull/275
* chore: bump version to 26.7.0 and upgrade lockfiles by @vpetersson in https://github.com/sbomify/sbomify-action/pull/276
* fix(wizard): discover one lockfile per ecosystem, not per directory by @vpetersson in https://github.com/sbomify/sbomify-action/pull/277
* fix(wizard): use full relative path to disambiguate suggested component names by @vpetersson in https://github.com/sbomify/sbomify-action/pull/278
* fix(wizard): sort product and component pickers alphabetically by @vpetersson in https://github.com/sbomify/sbomify-action/pull/279
* fix(wizard): pin emitted action ref to the latest GitHub release SHA by @vpetersson in https://github.com/sbomify/sbomify-action/pull/280
* feat: accept OpenVEX and CSAF VEX documents for BOM_TYPE=vex by @aurangzaib048 in https://github.com/sbomify/sbomify-action/pull/265
* fix(wizard): default augmentation to the recommended contact-profile option by @vpetersson in https://github.com/sbomify/sbomify-action/pull/282
* fix: wizard tag dispatch covers bare-numeric versions; sentinel carries real version by @vpetersson in https://github.com/sbomify/sbomify-action/pull/283

## New Contributors
* @Erik-Hoffmann made their first contribution in https://github.com/sbomify/sbomify-action/pull/230

**Full Changelog**: https://github.com/sbomify/sbomify-action/compare/v26.2.0...v26.7.0

