---
title: EvalCanary Diff
date: 2026-08-08 14:40:10 +00:00
tags:
  - lmdixon23
  - GitHub Actions
draft: false
repo: https://github.com/lmdixon23/evalcanary
marketplace: https://github.com/marketplace/actions/evalcanary-diff
version: v0.1.1
dependentsNumber: "?"
actionType: Composite
actionSummary: |
  EvalCanary automates the process of evaluating and comparing two different evaluators for a fixed set of cases. It helps detect drift in evaluation results when an evaluator is updated, ensuring that changes to verifiers or scorers do not introduce unexpected behavior. The action provides detailed reports on how individual cases change between versions and offers insights into subgroup effects and uncertainty estimates.
---


Version updated for **https://github.com/lmdixon23/evalcanary** to version **v0.1.1**.

- This action is used across all versions by **?** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/evalcanary-diff) to find the latest changes.

## Action Summary

EvalCanary automates the process of evaluating and comparing two different evaluators for a fixed set of cases. It helps detect drift in evaluation results when an evaluator is updated, ensuring that changes to verifiers or scorers do not introduce unexpected behavior. The action provides detailed reports on how individual cases change between versions and offers insights into subgroup effects and uncertainty estimates.

## What's Changed

# EvalCanary v0.1.1

EvalCanary v0.1.1 is a maintenance release. It does not add product features.

## Changed

- Updated CodeQL `init` and `analyze` together to the same reviewed full commit SHA.
- Migrated packaging license metadata to the PEP 639 SPDX form.
- Raised the Setuptools build-system floor to a version that supports PEP 639.
- Added a dedicated Dependabot group for CodeQL sub-actions so compatible updates
  are proposed together.

## Verification

Release commit: `859d8aa47ba199ac91f6e795b0c6b9a6cc424591`

External canary commit: `f2644878bb61aabbde7aee34ec1137a2c96761fe`  
External canary workflow run: `31250415906`

The exact `v0.1.1` tag was consumed successfully on Windows, Linux, and macOS,
including the intentionally blocking policy path and review-packet privacy audit.

The wheel is byte-reproducible across two fresh exact-tag builds. The release
sdist is canonically repacked only after two independently built raw sdists are
verified to have identical logical contents.

## Compatibility

Python 3.11 through 3.14.

## License

MIT

