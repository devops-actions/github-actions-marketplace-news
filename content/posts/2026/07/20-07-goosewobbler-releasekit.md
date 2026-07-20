---
title: ReleaseKit – Automated Versioning & Release
date: 2026-07-20 07:40:31 +00:00
tags:
  - goosewobbler
  - GitHub Actions
draft: false
repo: https://github.com/goosewobbler/releasekit
marketplace: https://github.com/marketplace/actions/releasekit-automated-versioning-release
version: v0.41.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  ReleaseKit automates the release process by integrating with various package registries (npm, crates.io, pub.dev) using Conventional Commits. It provides a unified CLI (`release`) that can run versioning, notes generation, and publishing in a single command, streamlining the workflow for JavaScript/TypeScript, Rust, and Dart/Flutter packages.
---


Version updated for **https://github.com/goosewobbler/releasekit** to version **v0.41.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/releasekit-automated-versioning-release) to find the latest changes.

## Action Summary

ReleaseKit automates the release process by integrating with various package registries (npm, crates.io, pub.dev) using Conventional Commits. It provides a unified CLI (`release`) that can run versioning, notes generation, and publishing in a single command, streamlining the workflow for JavaScript/TypeScript, Rust, and Dart/Flutter packages.

## What's Changed


### New:
- Required an explicit `llm.model` and validated `provider` as a closed enum at config load, ensuring fail-loud behavior instead of silent model defaults that can rot. (#564)
- Made ecosystem enablement symmetric with detection enabling versioning and publishing by default, adding `version.npm.enabled` toggle and flipping `publish.cargo.enabled` and `publish.pub.enabled` defaults from false to true. (#563)

### Fixed:
- Escaped few-shot example field interpolation to prevent prompt self-poisoning where crafted content could forge markers or inject instructions. (#572, #571)
- Included test commits in generated changelogs instead of silently dropping them, fixing undercounting in standing-PR previews and preventing placeholder entries for test-only packages. (#570, #569)
- Neutralized marker sequences in notes prose to prevent forged markers from truncating regions, hijacking sibling package notes, or spoofing release ownership checks. (#565)
- Redacted URL credentials (`user:password@`) from `GitError` message, args, and stderr to prevent token disclosure on push failures. (#562)

### Documentation:
- Clarified ADR-0005 title and filename to make clear its "explicit model, no defaults" decision applies only to LLM-enhanced release notes, not ReleaseKit as a whole. (#568)
- Added ADR-0004 documenting the detection-enables, config-opts-out ecosystem enablement philosophy and ADR-0005 documenting the no-default-LLM-model decision. (#566)
- Added a themed ROADMAP.md with capability tracks, ecosystem support status, and evaluation criteria, and established the docs/adr/ convention with initial architectural decisions (ADR-0001 through ADR-0003). (#553)

### Developer:
- **Testing**: Added end-to-end coverage for the npm-disabled cargo-only version path in the multi-registry harness. (#567)

**Full Changelog**: https://github.com/goosewobbler/releasekit/compare/0.40.0...0.41.0


